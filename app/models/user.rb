class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable

  attr_accessor :login
   
  has_many :items

  validates :email, uniqueness: true
  validates :username, uniqueness: true, presence: true

  def email_changed?
    false
  end

 def self.find_for_database_authentication warden_conditions
   conditions = warden_conditions.dup
   login = conditions.delete(:login)
   where(conditions).where(["lower(username) = :value OR lower(email) = :value", {value: login.strip.downcase}]).first
 end


end
