class Note < ActiveRecord::Base
  belongs_to :song, dependent: :destroy
end
