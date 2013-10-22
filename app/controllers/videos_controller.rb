class VideosController < ApplicationController

  before_filter :authenticate_member!

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

  def create
    @video = Video.new(params[:title], params[:subject])
    if @video.save
      redirect_to(:action => 'library')
    end
      render('new')
  end

  def update
    @video = Video.find(params[:id])
    @video = @video.update_attributes(title: params[:title])

    # error says: cannot find update_attributes
    #@video.update_attributes(title: params[:title])
  end

  def delete
    @video = Video.find(params[:id]).destroy

  end

end
