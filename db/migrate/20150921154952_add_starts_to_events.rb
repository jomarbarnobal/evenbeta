class AddStartsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :starts, :date
  end
end
