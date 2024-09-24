class PostulationsController < ApplicationController
    before_action :authenticate_user!
 
    def create
      @publication = Publication.find(params[:postulation][:publication_id])
      @postulation = Postulation.new(postulation_params)
      @postulation.user = current_user
      respond_to do |format|
        if @postulation.save
          format.html { redirect_to picture_path(@publication.id), notice: 'Comment was successfully created.' }
        else
          format.html { redirect_to  picture_path(@publication.id), notice: 'Comment was not created.' }
        end
      end
    end
    
    private
  
    def postulation_params
      params.require(:postulation).permit(:description, :postulation_id)
    end
  
  end
end
