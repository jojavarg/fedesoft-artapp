class CreateCreations < ActiveRecord::Migration[5.0]
  def change
    create_table :creations do |t|
      t.string :cr_description
      t.datetime :cr_date
      t.belongs_to :Artist, foreign_key: true

      t.timestamps
    end
  end
end
