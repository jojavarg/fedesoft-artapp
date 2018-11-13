class CreateJobOportunities < ActiveRecord::Migration[5.0]
  def change
    create_table :job_oportunities do |t|
      t.string :jo_title
      t.text :jo_description
      t.timestamps :jo_date
      t.belongs_to :Sponsor, foreign_key: true

      t.timestamps
    end
  end
end
