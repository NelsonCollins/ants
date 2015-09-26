class ProfilesController < ApplicationController
   before_action :find_profile, only: [:show, :edit, :update]
	before_action :authenticate_user!, except: [:index, :show]
	def index
	 @profile = Profile.all  
		
	end

	def show
		# # @user = User.find(params[:user_id])
		# @profile = @user.profile.build (params[:id])
		
	end

	 def new
	  @profile = Profile.new
	 # (:user_id => @user.id)
end
  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'profile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @profile }
      else
        format.html { render action: 'new' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end
def edit

end

def update
		if @profile.update(profile_params)
			redirect_to @profile
		else
			render 'edit'
		end
	end

	private
		def find_profile
			@profile =Profile.find(params[:id])
			
		end

	def profile_params
		params.require(:profile).permit(:title, :firstname, :lastname, :location,:age,:sex,:location,:occupation,:pic, :email_add)
		
	end
end
