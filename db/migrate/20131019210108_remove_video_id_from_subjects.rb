class RemoveVideoIdFromSubjects < ActiveRecord::Migration
  def change
    remove_column :subjects, :video_id
  end
end
