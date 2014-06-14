class Appointment < ActiveRecord::Base
  belongs_to :person
  default_scope {order('time ASC')}


end
