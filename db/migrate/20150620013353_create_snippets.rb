class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :name
      t.text :summary
      t.text :description
      t.timestamps
    end
  end
end
