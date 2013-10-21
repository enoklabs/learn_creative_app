class Video < ActiveRecord::Base
  belongs_to :subject


  # imported the model from sinatra but need to be fixed for rails

  attr_reader :id
  attr_accessor :title, :icon, :subject
  def initialize(title, icon, subject)
    @id = nil
    @title = title
    @icon = icon
    @subject = subject
  end

  # For now $videos is my database...

  def destroy
    $videos.delete(self)
  end

  def update(options = {})
    self.title = options[:title]
    self.category = options[:subject]
  end

  def save
    # Send video information to database
    unless @id
      @id = $videos.size + 1
      $videos << self
    end

    self
  end

  def self.find(id)
    # mySQL would look like this:
    # SELECT * FROM videos WHERE 'videos'.'id' == id;
    $videos.select do |video|
      video.id.to_i == id.to_i
    end.first
  end

end
