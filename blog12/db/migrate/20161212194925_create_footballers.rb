class CreateFootballers < ActiveRecord::Migration[5.0]
  def change
  	drop_table :footballers
    create_table :footballers do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
