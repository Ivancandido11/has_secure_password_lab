class User < ApplicationRecord
  validate :validate_password

  def authenticate(pass)
    return nil unless password == pass

    self
  end

  def validate_password
    return nil if password.nil? || password_confirmation.nil?

    errors.add(:password, "Password and Confirmation must match") unless password == password_confirmation
  end
end
