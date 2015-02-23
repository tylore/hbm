class AdventuresController < ApplicationController
  def index
    if params[:explorer_id] != nil
      @adventures = Adventure.where(explorer_id: params[:explorer_id])
    else
      redirect_to new_sessions_path
    end
  end

  def new
    @adventure = Adventure.new
  end

  def create
    if current_explorer != nil
      adventure = Adventure.new(params.require(:adventure).permit(:destination, :duration, :price))
      adventure.explorer_id = current_explorer.id
      if adventure.save
        redirect_to adventures_path(explorer_id: current_explorer.id)
      else
        redirect_to new_adventure_path
      end
    end
  end

  def edit
  end


  def destroy
    @adventure = Adventure.find(params[:id])
    @adventure.delete
    redirect_to adventures_path
  end


  def show
    @adventure = Adventure.offset(rand(Adventure.count)).first


  end
end
