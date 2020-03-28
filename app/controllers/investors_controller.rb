class InvestorsController < ApplicationController
    def index
        investors = Investor.all
        render json: investors
    end 

    def create
        @investor = Investor.create(investor_params)
    end

    private

    def investor_params
        params.require(:investor).permit(
            :id,
            :first_name,
            :last_name,
            :date_of_birth,
            :phone_number,
            :street_address,
            :state,
            :zip_code
        )
    end
end
