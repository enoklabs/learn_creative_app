class RenameColumnSubjectsIdFromVideos < ActiveRecord::Migration
  def change
    rename_column :videos, :subjects_id, :subject_id
  end
end
