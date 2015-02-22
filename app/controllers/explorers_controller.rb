class ExplorersController < ApplicationController
    def index
      @explorer = Explorer.all
    end

    def new
      @explorer = Explorer.new
    end

    def create
      explorer = Explorer.new(params.require(:explorer).permit(:email, :exp_name, :password, :password_confirmation,))
      if explorer.save
        session["explorer_id"] = explorer.id.to_s
        redirect_to new_adventure_path
      else
        redirect_to new_explorer_path
      end
    end
end




