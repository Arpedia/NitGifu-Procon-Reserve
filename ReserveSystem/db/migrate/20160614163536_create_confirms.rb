class CreateConfirms < ActiveRecord::Migration
  def change
    create_table :confirms do |t|
      t.boolean :confirm

      t.timestamps null: false
    end
  end
end
