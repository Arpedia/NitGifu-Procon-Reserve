class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|
      t.integer :reserve_id
      t.string :name
      t.integer :age
      t.boolean :sex
      t.text :adress
      t.integer :phonenum
      t.integer :facility_id
      t.integer :date

      t.timestamps null: false
    end
  end
end
