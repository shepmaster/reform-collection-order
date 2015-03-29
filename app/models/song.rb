class Song
  include ActiveModel::Model

  # No ID, we are creating it
  attr_accessor :name
  attr_accessor :artists
end
