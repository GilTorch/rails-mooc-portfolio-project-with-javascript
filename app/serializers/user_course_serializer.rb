class UserCourseSerializer < ActiveModel::Serializer
  attributes :id,:user_id,:course_id,:completed
  belongs_to :user 
  belongs_to :course
end
