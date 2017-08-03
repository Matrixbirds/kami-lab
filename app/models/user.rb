# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  password_digest :string
#  gender          :string
#  email           :string
#  birthday        :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_name             (name) UNIQUE
#  index_users_on_password_digest  (password_digest)
#

class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true, uniqueness: true, length: { minimum: 4 }
  validates :password, length: { in: 6..20 }, presence: true
  validates :email, presence: true, uniqueness: true
end
