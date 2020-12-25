class AddCountToCards < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :try_count, :integer, null: false, default: 0
    add_column :cards, :mistake_count, :integer, null: false, default: 0
  end
end
