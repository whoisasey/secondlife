class AddPhoneNumberColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :charities, :phone, :string
  end
end
