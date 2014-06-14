class Person < ActiveRecord::Base
  has_many :appointments, dependent: :destroy
  validates :name, presence: true
end
