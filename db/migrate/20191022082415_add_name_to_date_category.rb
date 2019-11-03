class AddNameToDateCategory < ActiveRecord::Migration[5.2]
  def change
	  add_column :date_categories, :category, :string
  end
end
