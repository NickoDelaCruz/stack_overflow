class AddComments < ActiveRecord::Migration[5.2]
  def change
      create_table :comments do |t|
        t.column :username, :string
        t.column :comment_body, :text
        t.column :post_id, :integer

        t.timestamps
      end
    end
  end
