class VideosController < ApplicationController
  def library
    @videos = Video.order('videos.position ASC')
  end
end
