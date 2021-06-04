class Service < ApplicationRecord
  belongs_to :user

  def self.my_services(profesional_id)
    self.where(user_id: profesional_id)
  end
end
