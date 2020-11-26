class CreateEventProofs < ActiveRecord::Migration[6.0]
  def change
    create_table :event_proofs do |t|
      t.integer :user_id
      t.integer :event_id
      t.text :note

      t.timestamps
    end
  end
end
