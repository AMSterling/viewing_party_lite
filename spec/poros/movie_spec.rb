require "rails_helper"

RSpec.describe Movie do
  it "exists" do
    attrs = {
      movie_id: "405",
      title: "My Favorite Movie",
      vote_average: "9.9"
    }

    top_movie = Movie.new(attrs)

    expect(top_movie).to be_a Movie
    expect(top_movie.movie_id).to eq("405")
    expect(top_movie.title).to eq("My Favorite Movie")
    expect(top_movie.rating).to eq("9.9")
  end
end