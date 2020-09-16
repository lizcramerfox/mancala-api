class GamesController < ProtectedController
  # before_action: WHAT DO WE NEED TO ADD HERE FOR GAMES? i.e. FIND GAME?

  # SHOW all games
  def index
    @games = current_user.games
    render json: @games
  end

  def show
    render json: @game
  end

  # CREATE new game
  def create
    @game = Game.new(game_params)
    if @game.save
      render json: @game
    else
      render error: { error: 'Unable to create new game. [API]' }, status: 400
    end
  end

  # UPDATE an existing (in-progress) game
  def update
    if @game
      @game.update(game_params)
      render json: { message: 'Game progress saved.' }, status: 200
    else
      render json: { error: 'Unable to update game. [API]' }, status: 400
    end
  end

  def destroy
    if @game
      @game.destroy
      render json: { message: 'Game deleted.' }, status: 200
    else
      render json: { error: 'Unable to delete game. [API]' }, status: 400
    end
  end


  private

  def game_params
    params.permit(:over).merge(user: current_user)
  end

  def find_game
    @game = Game.find(params[:id])
  end

end
