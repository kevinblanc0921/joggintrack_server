class RecordsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @records = Record.all
        render :json => @records
    end

    def new
        @record = Record.new
    end

    def create
        @record = Record.new(record_params)
        if @record.save
            redirect_to @record
        else
            render 'new'
        end
    end

    def show
        @record = Record.find(params[:id])
        render :json => @record
    end

    def edit
        @record = Record.find(params[:id])
        render :json => @record
    end

    def update
        @record = Record.find(params[:id])
        if @record.update(record_params)
            redirect_to @record
        else
            render 'edit'
        end
    end

    def destroy
        @record = Record.find(params[:id])
        @record.destroy
    end

    def filtered_by_date
        from = params[:from]
        to = params[:to]

        @records = Record.where("date between (?) and (?)", from, to)
        render :json => @records
    end

    private
    def record_params
        params.permit(:distance, :time, :date, :user)
    end
end
