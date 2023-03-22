class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :text
      t.date :date_recorded

      t.timestamps
    end
  end
end
