class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.string :name
      t.string :sex
      t.integer :abundance
      t.string :location
      t.string :county
      t.string :grid_reference
      t.string :provenance
      t.date :start_date
      t.date :end_date
      t.string :observer
      t.string :determiner
      t.string :record_type
      t.string :reference
      t.text :comment

      t.timestamps
    end
  end
end
