class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :name
      t.text :description
      t.string :category
      t.date :issue_date
      t.boolean :is_resolved

      t.timestamps
    end
  end
end
