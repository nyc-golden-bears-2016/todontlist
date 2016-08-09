class CreateListItems < ActiveRecord::Migration[5.0]
  def change
    create_table :list_items do |t|
      t.string :title
      t.text :body
      t.boolean :complete
      t.references :list

      t.timestamps
    end
  end
end
