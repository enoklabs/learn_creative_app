class VideosController < ApplicationController
  def library
    @videos = Video.order('videos.position ASC')

    @art_videos         = @videos.select { |video| video.subject.name == 'Art' }
    @graphic_videos     = @videos.select { |video| video.subject.name == 'Graphics' }
    @web_videos         = @videos.select { |video| video.subject.name == 'Web' }
    @development_videos = @videos.select { |video| video.subject.name == 'Development' }
    @business_videos    = @videos.select { |video| video.subject.name == 'Business' }

  end

  def show
    @video = Video.find(params[:id])
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    if @video
      @video.update(title: params[:title], subject: params[:subject])
    else
      #erb :'errors/not_found'
    end
  end

  def delete
    @video = Video.find(params[:id])
    if @video
      @video.destroy
      redirect '/library'
    else
      #erb :'errors/not_found'
    end
  end

end
