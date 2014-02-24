class CreateActivityItems < ActiveRecord::Migration
  def change
    create_table :activity_items do |t|
      t.string :name
      t.integer :quantity
      t.string :quantityUnit
      t.integer :measurement
      t.string :measurementUnit
      t.string :modification
      t.belongs_to :activity, index: true

      t.timestamps
    end
  end
end
