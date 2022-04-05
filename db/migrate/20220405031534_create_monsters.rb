class CreateMonsters < ActiveRecord::Migration[7.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :ac
      t.string :hp

      t.timestamps
    end
  end
end
