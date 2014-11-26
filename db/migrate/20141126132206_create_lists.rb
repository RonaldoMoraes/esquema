class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :nome
      t.text :assunto

      t.timestamps
    end
  end
end
