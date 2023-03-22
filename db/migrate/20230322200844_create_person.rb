class CreatePerson < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.boolean :deceased
      t.date :birthday

      t.timestamps
    end
  end
end
