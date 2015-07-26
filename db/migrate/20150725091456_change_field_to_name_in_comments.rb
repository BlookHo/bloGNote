class ChangeFieldToNameInComments < ActiveRecord::Migration
  def change

    remove_column :comments, :author_id
    add_column :comments, :name, :string, default: ""

  end
end
