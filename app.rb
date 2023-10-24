require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
  
  @player_move = "rock"

  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "We tied!"

  end

  if @comp_move == "paper"
    @outcome = "We lost!"

  end

  if @comp_move == "scissors"
    @outcome = "We won!"

  end

  erb(:zebra)

end

get("/paper") do
  
  @player_move = "paper"

  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "We won!"

  end

  if @comp_move == "paper"
    @outcome = "We tied!"

  end

  if @comp_move == "scissors"
    @outcome = "We lost!"

  end

  erb(:zebra)

end

get("/scissors") do
  
  @player_move = "scissors"

  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "We lost!"

  end

  if @comp_move == "paper"
    @outcome = "We won!"

  end

  if @comp_move == "scissors"
    @outcome = "We tied!"

  end

  erb(:zebra)

end
