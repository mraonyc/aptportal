class Person < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest, :role, :password, :password_confirmation
  has_and_belongs_to_many :apartments
  has_secure_password
end
