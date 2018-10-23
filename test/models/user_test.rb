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
#  company_id      :integer
#
# Indexes
#
#  index_users_on_company_id  (company_id)
#  index_users_on_login_name  (login_name) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
