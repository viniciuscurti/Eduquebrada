class AddUrlToLesson < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :url, :string
  end
end
