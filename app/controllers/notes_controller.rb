class NotesController < ApplicationController
  def index
    @all_ranks = Note.create_all_ranks
    @all_ranks = Note.find(Like.group(:note_id).order('count(note_id) desc').limit(3).pluck(:note_id))
    @my_ranks = @all_ranks.select{ |note| note.user_id == current_user.id }
  end
end
