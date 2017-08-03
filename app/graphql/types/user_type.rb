Types::UserType = GraphQL::ObjectType.define do
  name "User"
  field :id, !types.ID
  field :name, types.String
  field :gender, types.String
  field :email, types.String
  field :birthday, types.String
  field :password, types.String
  field :password_confirmation, types.String
end
