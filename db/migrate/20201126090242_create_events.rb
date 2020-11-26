class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :startDate
      t.date :endDate
      t.integer :point

      t.timestamps
    end
  end
end
