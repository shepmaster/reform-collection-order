class SongsController < ApplicationController
  # Just create a new Song with some "existing" artists with IDs
  # Note that the order here is ID-based, different from the UI
  def new_song
    Song.new.tap do |s|
      s.artists = 10.times.map do |i|
        Artist.new.tap do |a|
          a.id = i
          a.name = "Artist #{i}"
        end
      end
    end
  end

  def new
    @song = SongForm.new(new_song)
  end

  # Always fail validation to make seeing the problem easier
  def create
    @song = SongForm.new(new_song)
    @song.validate(params[:song])
    render :new
  end
end
