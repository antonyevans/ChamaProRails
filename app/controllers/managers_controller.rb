class ManagersController < ApplicationController
  before_filter :authenticate_admin!
  # GET /managers 
  # GET /managers.xml
  def index
    @managers = Manager.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @managers }
    end
  end

  # DELETE /managers/1
  # DELETE /managers/1.xml
  def destroy
    @manager = Manager.find(params[:id])
    @manager.destroy

    respond_to do |format|
      format.html { redirect_to(managers_url) }
      format.xml  { head :ok }
    end
  end
end
