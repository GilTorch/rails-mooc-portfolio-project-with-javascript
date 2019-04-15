class UserSolutionSerializer < ActiveModel::Serializer
  attributes :id,:content,:validated
  belongs_to :user_lesson
end
