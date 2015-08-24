class CreateFormulars < ActiveRecord::Migration
  def change
    create_table :formulars do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.integer :zip
      t.string :site
      t.text :information

      t.timestamps null: false
    end
  end
end
