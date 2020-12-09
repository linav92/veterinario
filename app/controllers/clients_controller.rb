class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  def index
    @clients = Client.includes(:pets)

  end

  def new
    @client = Client.new
  end

  def edit
  end

  def show
  end
  
  def create
    @client = Client.create(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: 'Pet history was successfully created.' }
        
      else
        format.html { render :new }
        
      end
    end
  end

  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: 'Pet history was successfully updated.' }
        
      else
        format.html { render :edit }
        
      end
    end
  end

  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'Pet history was successfully destroyed.' }
      
    end
  end

  private
    def set_client
      @client = Client.find(params[:id])
    end
   
    def client_params
      params.require(:client).permit(:name, :phone, :email)
    end
end
