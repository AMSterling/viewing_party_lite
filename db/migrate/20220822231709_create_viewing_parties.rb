class CreateViewingParties < ActiveRecord::Migration[5.2]
  def change
    create_table :viewing_parties do |t|
      t.string :poster_path
      t.string :movie_name
      t.integer :movie_id
      t.integer :host_id
      t.integer :duration
      t.date :eventdate
      t.time :starttime
      t.timestamps
    end
  end
end
