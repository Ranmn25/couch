class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # belongs_to :therapist, class_name: 'User', foreign_key: 'user_id', optional: true
  # belongs_to :patient, class_name: 'User', foreign_key: 'user_id', optional: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :therapist_sessions, class_name: 'Session', foreign_key: 'therapist_id'
  has_many :patient_sessions, class_name: 'Session', foreign_key: 'patient_id'
end
