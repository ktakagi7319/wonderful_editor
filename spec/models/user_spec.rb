require 'rails_helper'

RSpec.describe User, type: :model do

  context "ユーザーの情報を登録" do
    let(:user){ FactoryBot.build(:user) }
    it "正常登録完了" do
      expect(user).to be_valid
    end
  end

  context "ユーザー名だけを登録" do
    let (:user){FactoryBot.build(:user, email: nil, password: nil)}
    it "エラー発生(email/passwordがnilのため)" do
      expect(user).to be_invalid
    end
  end

  context "メールアドレスだけを登録" do
    let (:user){FactoryBot.build(:user, name: nil, password: nil)}
    it "エラー発生(username/passwordがnilのため)" do
      expect(user).to be_invalid
    end
  end

  context "パスワードだけを登録" do
    let (:user){FactoryBot.build(:user, name: nil, email: nil)}
    it "エラー発生(username/emailがnilのため)" do
      expect(user).to be_invalid
    end
  end
end
