class CreateCharities < ActiveRecord::Migration[7.0]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :website
      t.string :email
      t.string :profile
      t.string :charity_no
      t.string :address
      t.string :mission
      t.string :vision
      t.string :values
      t.string :target_group
      t.string :services
      t.string :accepted_items

      t.timestamps
    end
  end
end
