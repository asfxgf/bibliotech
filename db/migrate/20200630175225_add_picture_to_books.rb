class AddPictureToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :picture, :string
    add_column :books, :amazon_url, :string
    add_column :books, :author, :string
    add_column :books, :language, :string
    add_column :books, :category, :string
  end
end
