class CreateBreastfeedings < ActiveRecord::Migration[5.2]
  def change
    create_table :breastfeedings do |t|
      t.string :name
      t.float :quantity
      t.float :feeding_time
      t.belongs_to :baby, foreign_key: true

      t.timestamps
    end
  end
end
