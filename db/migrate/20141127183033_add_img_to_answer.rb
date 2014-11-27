class AddImgToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :imagem, :string
  end
end
