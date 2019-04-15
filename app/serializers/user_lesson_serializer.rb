class UserLessonSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user 
  belongs_to :lesson
  has_many :user_solutions
end
