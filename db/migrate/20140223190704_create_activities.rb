class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.date :date
      t.belongs_to :user, index: true
      t.text :notes

      t.timestamps
    end
  end
end
