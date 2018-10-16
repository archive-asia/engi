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

class Company < ApplicationRecord

  validates :name, presence: true, length: { maximum: 20 }
  validates :address1, presence: true, length: { maximum: 30 }
  validates :address2, presence: true, length: { maximum: 30 }
  validates :homepage, presence: false, length: { maximum: 50 }
end
