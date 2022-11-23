class JukeboxsController < ApplicationController
  def index
    @jukeboxes = Jukebox.all
  end

  def show
    @jukebox = Jukebox.find(params[:id])
  end
end
