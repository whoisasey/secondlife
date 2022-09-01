class AddAdminToCharity < ActiveRecord::Migration[7.0]
  def change
    add_column :charities, :admin_id, :int
  end
end
