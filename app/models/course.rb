class Course < ApplicationRecord
  has_many :materials, dependent: :destroy
  has_one :mentor
end
