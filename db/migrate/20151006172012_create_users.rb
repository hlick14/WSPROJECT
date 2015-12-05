class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
      t.references :order, index: true, foreign_key: true
    end
  end
end
