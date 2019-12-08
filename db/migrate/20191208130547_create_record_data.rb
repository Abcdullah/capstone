class CreateRecordData < ActiveRecord::Migration[5.2]
  def change
    create_table :record_data do |t|
      t.string :user
      t.string :post
      t.integer :upvotes
      t.string :date
      t.integer :totalViews

      t.timestamps
    end
  end
end
