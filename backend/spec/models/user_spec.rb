require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  it "has a valid factory" do
    expect(user).to be_valid
  end

  it "is valid with a name, email, password, and password_confirmation" do
    user = User.new(
      name: "sample",
      email: "sample@example.com",
      password: "password",
      password_confirmation: "password",
    )
    expect(user).to be_valid
  end

  context "name" do
    it "is invalid without a name" do
      user.name = nil
      expect(user).to be_invalid
    end
  end

  context "email" do
    it "is invalid without an email address" do
      user.email = nil
      expect(user).to be_invalid
    end

    it "is invalid with a duplicate email address" do
      other_user = FactoryBot.build(:user, email: user.email)
      expect(other_user.valid?).to eq(false)
    end
  end

  context "password" do
    it "is invalid without under 6 characters" do
      user.password = "a" * 5
      user.password_confirmation = "a" * 5
      expect(user).to be_invalid
    end

    it "is valid with 6 or more characters" do
      user.password = "a" * 6
      user.password_confirmation = "a" * 6
      expect(user).to be_valid
    end

    it "is invalid if a password is different from a password_confirmation" do
      user.password_confirmation = "bookwith"
      expect(user).to be_invalid
    end
  end
end
