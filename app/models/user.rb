class User < ApplicationRecord
  belongs_to :therapist, class_name: 'User', foreign_key: 'user_id', optional: true
  belongs_to :patient, class_name: 'User', foreign_key: 'user_id', optional: true
end
