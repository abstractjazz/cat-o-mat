class NotesController < ApplicationController 

    def create
        @cat = Cat.find(params[:note][:cat_id])
        @note = @cat.notes.build(note_params)
        @note.save!
        redirect_to cat_path(@cat)
    end 


    def edit 
    @cat = Cat.find(params[:id])
    @note = Note.find(params[:id])
    redirect_to note_path
    end 

    def show
   
    @note = Note.find(params[:id])
   
    end 

    def update
        @cat = Cat.find(params[:note][:cat_id])
        @note = Note.find(params[:id])
        @note.update(note_params)
        @note.save!
        redirect_to cat_path(@cat)
    end 

    def destroy
    
    note = Note.find(params[:id])
    note.delete 
    redirect_to cat_path(note.cat)
    end
 
     private 
     def note_params
     params.require(:note).permit(:user_id, :cat_id, :content)
     end 


end 