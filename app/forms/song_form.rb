class SongForm < Reform::Form
  property :name, validates: { presence: true }

  collection :artists do
    property :id, writeable: false
    property :name, writeable: false
    property :selected
  end
end
