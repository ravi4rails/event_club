class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :cover_image
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.string :venue
      t.string :city
      t.string :country
      t.string :state
      t.float :latitude
      t.float :longitude
      t.string :website
      t.integer :entry_fee
      t.boolean :is_featured
      t.references :event_category, foreign_key: true
      t.references :event_organizer, foreign_key: true

      t.timestamps
    end
  end
end
