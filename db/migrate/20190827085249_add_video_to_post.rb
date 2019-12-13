class AddVideoToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :video, :string
  end
end
