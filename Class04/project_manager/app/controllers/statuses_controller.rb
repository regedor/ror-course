class StatusesController < ApplicationController
  
    def index
      @statuses = Status.all
    end

    def show
      @status = Status.find(params[:id])
    end

    def new
      @status = Status.new
    end

    def create
      @status = Status.new(params[:status])
      flash[:notice] = "Status was successfully created." if @status.save
      respond_with @status
    end

    def edit
      @status = Status.find(params[:id])
    end

    def update
      @status = Status.find(params[:id])

      if @status.update_attributes(params[:status])
        flash[:notice] = "Status was successfully updated."
      end

      respond_with @status
    end

    def destroy
      @status = Status.find(params[:id])
      @status.destroy
      redirect_to statuses_path
    end

  end
  
  
