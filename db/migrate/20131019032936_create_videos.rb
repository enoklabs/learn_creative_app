class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.references :subjects
      t.string 'title'
      t.string 'permalink'
      t.string 'icon'
      t.integer 'position'
      t.boolean 'visible', :default => false
      t.timestamps
    end
  end
end
