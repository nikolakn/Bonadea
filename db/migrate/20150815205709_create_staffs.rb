class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :type
      t.integer :premission
      t.integer :percent
      t.string :signature
      t.string :phone
      t.string :address

      t.timestamps null: false
    end
  end
end
