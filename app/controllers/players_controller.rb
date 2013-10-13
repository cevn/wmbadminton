class PlayersController < ApplicationController

  def show
    @player= Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def index
    @players = Player.paginate(page: params[:page])
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      flash[:success] = "Thanks for signing up for the tournament!" 
      redirect_to @player
    else
      render 'new'
    end
  end

  def destroy
    Player.find(params[:id]).destroy
    flash[:success] = "Player destroyed." 
    redirect_to players_url
  end

  def edit
    @player = Player.find(params[:id])
  end

  private
    def player_params
      params.require(:player).permit(:name, 
                                   :gender,
:email, 
:address_street, 
:address_city_state, 
:address_zip, 
:phone,
:club, 
:fees, 
:signature,
:md, 
:wd, 
:xd,
:md_partner, 
:wd_partner,
:xd_partner,
:skill)
    end
end
