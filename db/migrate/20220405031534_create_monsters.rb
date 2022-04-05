class CreateMonsters < ActiveRecord::Migration[7.0]
  def change
    create_table :monsters do |t|
      t.text :name
      t.text :ac
      t.text :hp

      t.timestamps
    end
  end
end
