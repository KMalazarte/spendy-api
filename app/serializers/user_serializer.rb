class UserSerializer < ActiveModel::Serializer
  attributes :username, :id, :avatar, :monthly_take_home
end
