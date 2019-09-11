class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.integer :staffId
      t.string :OS
      t.string :CPU
      t.integer :RAM
      t.string :Model

      t.timestamps
    end
  end
end
