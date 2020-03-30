class InvestorsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @investors = Investor.all
    end 

    def create 
        @investor = Investor.create(investor_params)
        if @investor.save
            @investor.save_attachments(investor_params) if params[:investor][:attachemnt_data]
            render :show, status: :created, location: @investor 
        else 
            render json: @investor.errors, status: unprocessable_entity 
        end 
    end

    private

    def investor_params
        params.require(:investor).permit(
            :first_name,
            :last_name,
            :date_of_birth,
            :phone_number,
            :street_address,
            :state,
            :zip_code, 
            :attachment_data => []
        )
    end
end
