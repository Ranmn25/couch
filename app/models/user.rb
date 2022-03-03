class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
<<<<<<< HEAD

  has_many :therapist_bookings, class_name: 'Booking', foreign_key: 'therapist_id'
  has_many :patient_bookings, class_name: 'Booking', foreign_key: 'patient_id'

  has_one_attached :photo
=======
  # belongs_to :therapist, class_name: 'User', foreign_key: 'user_id', optional: true
  # belongs_to :patient, class_name: 'User', foreign_key: 'user_id', optional: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :therapist_sessions, class_name: 'Session', foreign_key: 'therapist_id'
  has_many :patient_sessions, class_name: 'Session', foreign_key: 'patient_id'
>>>>>>> 3cdd1de85440d03bdbed08186ab290494448cdf8
end
