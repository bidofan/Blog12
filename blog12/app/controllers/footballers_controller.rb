class FootballersController < ApplicationController
  
  def create
    @team = Team.find(params[:team_id])
    @footballer = @team.footballers.create(footballer_params)
    redirect_to team_path(@team)
  end
 
  def destroy 
    @team = Team.find(params[:team_id])
    @footballer = @team.footballers.find(params[:id])
    @footballer.destroy
    redirect_to team_path(@team)
  end

  private
    def footballer_params
      params.require(:footballer).permit(:name, :surname, :age)
    end
end
