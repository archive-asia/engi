class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :network_code
      t.string :homepage

      t.timestamps
    end
  end
end
