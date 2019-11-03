class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
	    t.integer :category_id
	    t.integer :user_id
	    t.string :plan_name

      t.timestamps
    end
  end
end
