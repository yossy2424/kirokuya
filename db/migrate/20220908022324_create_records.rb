class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.float :weight
      t.float :bady_fat_percentage
      t.date :month
      t.date :record_date
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
