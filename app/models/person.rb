class Person < ActiveRecord::Base
  has_many :appointments, dependent: :destroy
end
