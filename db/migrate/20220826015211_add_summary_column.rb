class AddSummaryColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :charities, :summary, :string
  end
end
