class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :avaible_hour
  belongs_to :service
end
