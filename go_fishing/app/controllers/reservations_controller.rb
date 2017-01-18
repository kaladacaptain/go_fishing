class ReservationsController < ApplicationController
	def new
		@reservation = Reservation.new
	end

	def create
		@reservation = Reservation.new(reservation_params)
		if @reservation.save
			redirect_to @reservation, notice: "You successfully created a reservation!"
		else
			render 'new'
		end
	end

	def show
		@reservation = Reservation.find(params[:id])
	end

	private
		def reservation_params
			params.require(:reservation).permit(:date, :charter_type)
		end
end
