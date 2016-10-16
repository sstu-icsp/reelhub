class ArtistsController < ApplicationController
	def index
		@artist = User.all.order('created_at DESC')
	end

	def show
		@artist = User.find(params[:id])
	end
end
