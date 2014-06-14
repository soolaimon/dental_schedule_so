class Appointment < ActiveRecord::Base
  belongs_to :person
  default_scope {order('time ASC')}
  # validates :time, :dentist, :description, :estimated_cost, presence: true

end
