class AddCompanyNameToAdmin < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :company_name, :string
  end
end
