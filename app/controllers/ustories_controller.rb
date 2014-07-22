class UstoriesController < ApplicationController
  before_action :signed_in_user

 # def create
#@micropost = Micropost.find params[:micropost_id]
 # @ustory = current_user.ustories.build 
 # @ustory.user = current_user
  # @ustory.micropost = @micropost
# @ustory.save
#  redirect_to :back
 # end

def create
    @micropost = Micropost.find(params[:micropost_id])
    @ustory = @micropost.ustories.build(params[:ustory])
    @ustory = Ustory.new(params[:ustory])
    @ustory.micropost = @micropost
    @ustory.user = current_user
    if @ustory.save
       flash[:success] = "Story created!"
       redirect_to current_user
    else
      render 'shared/_ustory_form'
    end
  end
  def new
   self.resource = resource_class.new(sign_in_params)
    clean_up_passwords(resource)
    respond_with(resource, serialize_options(resource))
end
 def ustory_params
      params.require(:ustory).permit(:story)
    end

end

