class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :ar_name
      t.string :ar_lastname
      t.string :ar_address
      t.string :ar_phone
      t.string :ar_email
      t.belongs_to :User, foreign_key: true

      t.timestamps
    end
  end
end
