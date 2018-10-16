# == Schema Information
#
# Table name: companies
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  address1     :string(255)
#  address2     :string(255)
#  network_code :string(255)
#  homepage     :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
