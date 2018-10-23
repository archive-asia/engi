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

class User < ApplicationRecord
  has_secure_password
  belongs_to :company

  validates :login_name,
    presence: true,
    uniqueness: true,
    length: { maximum: 16 },
    format: {
      with: /\A[a-z0-9]+\z/,
      message: 'は小文字英数字で入力してください'
    }
    validates :password,
      length: {minimum: 8 }
end
