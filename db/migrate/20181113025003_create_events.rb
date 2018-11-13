class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :ev_title
      t.text :ev_description
      t.datetime :ev_date
      t.text :ev_place
      t.string :ev_planner
      t.belongs_to :Artist, foreign_key: true

      t.timestamps
    end
  end
end
