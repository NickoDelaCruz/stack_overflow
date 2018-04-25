class AddPost < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |p|
      p.column :username, :string
      p.column :question, :string
      p.timestamps
    end
  end
end
