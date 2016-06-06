class CreateAges < ActiveRecord::Migration
  def change
    create_table :ages do |t|
      t.integer :age_info

      t.timestamps null: false
    end
  end
end
