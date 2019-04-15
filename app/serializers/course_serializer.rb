class CourseSerializer < ActiveModel::Serializer
  attributes :id,:title
  has_many :user_courses 
  has_many :users, through: :user_courses 
  has_many :chapters
end
