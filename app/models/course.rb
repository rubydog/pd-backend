class Course < ActiveRecord::Base
  has_and_belongs_to_many :departments
  has_and_belongs_to_many :semesters
  has_many :books
end
