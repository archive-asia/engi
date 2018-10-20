# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  login_name      :string(255)      not null
#  mail            :string(255)
#  name            :string(255)
#  password_digest :string(255)      not null
#  roles           :integer
#  unit_position   :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_login_name  (login_name) UNIQUE
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
