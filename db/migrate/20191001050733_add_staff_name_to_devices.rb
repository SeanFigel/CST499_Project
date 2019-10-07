class AddStaffNameToDevices < ActiveRecord::Migration[5.0]
  def change
    add_column :devices, :StaffName, :string
  end
end
