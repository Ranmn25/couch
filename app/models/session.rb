class Session < ApplicationRecord
  belongs_to :patient, :class_name => 'user'
  belongs_to :therapist, :class_name => 'user'
end
