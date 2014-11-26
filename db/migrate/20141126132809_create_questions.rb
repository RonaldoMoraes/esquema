class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :numero
      t.string :pergunta
      t.references :list, index: true
      t.boolean :prova

      t.timestamps
    end
  end
end
