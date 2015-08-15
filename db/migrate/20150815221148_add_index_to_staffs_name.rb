class AddIndexToStaffsName < ActiveRecord::Migration
  def change
	add_index :staffs, :name, unique: true
  end
end
