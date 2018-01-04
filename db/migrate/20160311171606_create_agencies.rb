class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :logo
      t.string :title

      t.timestamps null: false
    end
  end
end
