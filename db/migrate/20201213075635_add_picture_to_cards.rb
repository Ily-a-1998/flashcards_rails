class AddPictureToCards < ActiveRecord::Migration[6.0]
  def up
    add_attachment :cards, :picture
  end

  def down
    remove_attachment :cards, :picture
  end
end
