class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :yomi
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
