class CreateSettings < ActiveRecord::Migration[4.2]
  def change
    create_table :settings do |t|
      t.string :name, :limit => 255, :default => '', :null => false
      t.text :description
      t.string :value

      t.timestamps
    end
    add_index :settings, :name
  end

end
