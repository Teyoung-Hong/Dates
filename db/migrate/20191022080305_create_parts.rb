class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|

    t.datetime :time
    t.string :content
    t.integer :plan_id
      t.timestamps

    end
  end
end
