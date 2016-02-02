class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true, length: { minimum: 2, maximum: 100 }
  validates :family, presence: true, length: { minimum: 2, maximum: 100 }
  validates :phone, presence: true
end
