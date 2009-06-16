class CreateOyoyos < ActiveRecord::Migration
  def self.up
    create_table :oyoyos do |t|
      t.string :name
      t.string :comment
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :oyoyos
  end
end
