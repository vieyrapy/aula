class CreateDiadelasemanas < ActiveRecord::Migration[5.1]
  def change
    create_table :diadelasemanas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
