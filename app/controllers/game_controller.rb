class GameController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  # GET /game/new
  def new
    
  end

  # POST /game
  def play
    computerOption = getComputerOption
    winner = ""
    if ((params['option'] == "paper" && computerOption == "rock") || (params['option'] == "rock" && computerOption == "scissors") || (params['option'] == "scissors" && computerOption == "paper"))
      winner = "user (you)"
    elsif params['option'] == computerOption   
      winner = "draw"
    else
      winner = "computer"        
    end

    render json: {
      "message": "winner: " + winner + " - computer option: " + computerOption
    }
  end
  
  private def getComputerOption
    integerComputerOption = rand(1..3)

    if integerComputerOption == 1
      return "paper"
    elsif integerComputerOption == 2
      return "rock"
    end

    return "scissors"
  end
end
