class CreateSponsors < ActiveRecord::Migration[5.0]
  def change
    create_table :sponsors do |t|
      t.string :sp_name
      t.string :sp_address
      t.string :sp_phone
      t.string :sp_email
      t.string :sp_contact
      t.string :sp_nit
      t.belongs_to :User, foreign_key: true

      t.timestamps
    end
  end
end
