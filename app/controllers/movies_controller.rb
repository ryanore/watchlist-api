class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :update, :destroy]
  before_action :load_user, only: [:index]

  # GET /movies
  def index
    @movies = movies
    if params[:tags]
      render json: filter_by_tags
    else
      render json: @movies
    end
  end

  # GET /movies/1
  def show
    render json: @movie
  end

  # POST /movies
  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      render json: @movie, status: :created, location: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movies/1
  def update
    if @movie.update(movie_params)
      render json: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movies/1
  def destroy
    @movie.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def movie_params
      params.require(:movie).permit(
        :user_id,
        {tags: []},
        {
          data: [
            :backdrop_path,
            :overview,
            :original_title,
            :original_language,
            :popularity,
            :poster_path,
            :release_date,
            :title,
            :video,
            :vote_average,
            :vote_count,
            {genre_ids: []}
          ]
        }
      )
    end

    def load_user
      @user = User.find_by_id(params[:user_id])
    end

    def filter_by_tags
      ptags = ActiveSupport::JSON.decode(params[:tags])
      @movies.where("array[?] && tags", ptags)
    end

    def movies
      @user ? @user.movies : Movie
    end
end
