class AddEndsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :ends, :date
  end
end
