class CreateListItems < ActiveRecord::Migration[5.0]
  def change
    create_table :list_items do |t|
      t.text :body
      t.boolean :complete, default: false
      t.references :list

      t.timestamps
    end
  end
end
