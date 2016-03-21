class CreateSpams < ActiveRecord::Migration
  def change
    create_table :spams do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
