class CreateArtistTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :artist_types do |t|
      t.string :at_description

      t.timestamps
    end
  end
end
