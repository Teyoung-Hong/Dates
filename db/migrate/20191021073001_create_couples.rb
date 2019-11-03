class CreateCouples < ActiveRecord::Migration[5.2]
  def change
    create_table :couples do |t|
      t.integer :couple_id
      t.integer :boyfriend
      t.integer :girlfriend
      t.date :start

      t.timestamps
    end
  end
end
