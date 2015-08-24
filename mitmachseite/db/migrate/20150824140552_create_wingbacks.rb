class CreateWingbacks < ActiveRecord::Migration
  def change
    create_table :wingbacks do |t|

      t.timestamps null: false
    end
  end
end
