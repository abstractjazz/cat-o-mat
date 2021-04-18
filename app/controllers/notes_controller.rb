class NotesController < ApplicationController 

    def create
        @cat = Cat.find(params[:note][:cat_id])
        @note = @cat.notes.build(note_params)
        @note.save!
        redirect_to cat_note_path(@cat, @note)
     end 
 

    def show
    @note = Note.find_by(id: params[:id]) 
    @cat = @note.cat 
    @note.save!
    redirect_to cat_path(@cat)
    end 
 
     private 
     def note_params
     params.require(:note).permit(:user_id, :cat_id, :content)
     end 


end 