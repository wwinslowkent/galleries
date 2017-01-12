class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.all
  end

  def show
    @gallery = Gallery.find(params[:id])
  end

  def new
    @gallery = Gallery.new
    @state_collection = Gallery::STATES
  end



  def create
    @gallery = Gallery.new(params_strong)
    if @gallery.save
      flash[:notice] = "You saved a dope gallery"
      redirect_to galleries_path
    else
      flash[:notice] = @gallery.errors.full_messages.to_sentence
      @state_collection = Gallery::STATES
      render :new
    end
  end



  private
  def params_strong
    params.require(:gallery).permit(
      :name,
      :city,
      :state,
      :zip,
      :description
    )
  end
end
