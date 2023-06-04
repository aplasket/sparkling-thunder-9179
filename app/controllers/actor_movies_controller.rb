class ActorMoviesController < ApplicationController
  def create
    actor_movie = ActorMovie.create!(actor_id: params[:actor_id], movie_id: params[:id])
    movie = Movie.find_by(id: actor_movie.movie_id)
    # alternatively: movie = Movie.find_by(id: params[:id])
    redirect_to "/movies/#{movie.id}"
  end
end