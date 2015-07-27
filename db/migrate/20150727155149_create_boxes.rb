class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
