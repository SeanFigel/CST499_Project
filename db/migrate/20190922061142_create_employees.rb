class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :role
      t.string :firstName
      t.string :lastName

      t.timestamps
    end
  end
end
