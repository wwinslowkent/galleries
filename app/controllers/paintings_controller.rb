class PaintingsController < ApplicationController
  def index
    @gallery = Gallery.find(params[:gallery_id])
    @paintings = @gallery.paintings
  end

  def new
    @gallery = Gallery.find(params[:gallery_id])
    @painting = Painting.new
  end



  def create
    @gallery = Gallery.find(params[:gallery_id])
    @painting = Painting.new(params_strong)
    @painting.gallery = @gallery
    if @painting.save
      flash[:notice] = "You saved a dope painting"
      redirect_to paintings_path
    else
      flash[:notice] = @painting.errors.full_messages.to_sentence

      render :new
    end
  end



  private
  def params_strong
    params.require(:painting).permit(
      :title,
      :artist
    )
  end
end
