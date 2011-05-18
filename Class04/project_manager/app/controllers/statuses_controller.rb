class StatusesController < ApplicationController
  respond_to :html, :xml
  
    # GET /status
    # GET /status.xml
    def index
      @statuses = Status.all

      respond_with @statuses
    end

    # GET /status/1
    # GET /status/1.xml

    def show
      @status = Status.find(params[:id])
      
      respond_with @status
    end

    # GET /status/new
    # GET /status/new.xml
    def new
      @status = Status.new

      respond_with @status
    end

    # GET /status/1/edit
    def edit
      @status = Status.find(params[:id])
    end

    # POST /status
    # POST /status.xml
    def create
      @status = Status.new(params[:status])

      if @status.save
        flash[:notice] = "Status was successfully created."
      end

      respond_with @status
    end

    # PUT /status/1
    # PUT /status/1.xml
    def update
      @status = Status.find(params[:id])

      if @status.update_attributes(params[:status])
        flash[:notice] = "Status was successfully updated."
      end

      respond_with @status
    end

    # DELETE /status/1
    # DELETE /status/1.xml
    def destroy
      @status = Status.find(params[:id])
      @status.destroy

      respond_with @status
    end

  end
  
  