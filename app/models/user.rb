class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  VALID_EMAIL_REGEX =                 /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name,                  presence: true, length: {maximum: 20}
  validates :name_zenkaku,          presence: true, length: {maximum: 20}
            :age,                   presence: true,
            :email,                 presence: true,
            :nickname,              presence: true,
            :birthyear,             presence: true,
            :birthmonth,            presence: true,
            :birthday,              presence: true,
            

  has_one :user_address
  has_one :credit
  
end
