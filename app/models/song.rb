class Song < ActiveRecord::Base
  belongs_to :artist, dependent: :destroy
  belongs_to :genre, dependent: :destroy
  has_many :notes
  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
  def artist_name
    self.artist ? self.artist.name : nil
  end
  def genre_name=(name)
    genre = Genre.find_or_create_by(name: name)
    self.genre = genre
  end
  def genre_name
    self.genre ? self.genre.name : nil
  end
  def notes_1=(song_notes)
    note = Note.create(content: song_notes)
    self.notes << note
  end
  def notes_1
    self.notes[0]
  end
  def notes_2=(song_notes)
    note = Note.create(content: song_notes)
    self.notes << note
  end
  def notes_2
    self.notes[2]
  end
end
