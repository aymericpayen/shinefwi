class DetelePhotoFromItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :items, :photo
  end
end
