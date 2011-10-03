class ManagersCashesController < ApplicationController
  before_filter :authenticate_admin!
  # GET /managers_cashes
  # GET /managers_cashes.xml
  def index
    @managers_cashes = ManagersCash.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @managers_cashes }
    end
  end

  # GET /managers_cashes/1
  # GET /managers_cashes/1.xml
  def show
    @managers_cash = ManagersCash.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @managers_cash }
    end
  end

  # GET /managers_cashes/new
  # GET /managers_cashes/new.xml
  def new
    @managers_cash = ManagersCash.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @managers_cash }
    end
  end

  # GET /managers_cashes/1/edit
  def edit
    @managers_cash = ManagersCash.find(params[:id])
  end

  # POST /managers_cashes
  # POST /managers_cashes.xml
  def create
    @managers_cash = ManagersCash.new(params[:managers_cash])

    respond_to do |format|
      if @managers_cash.save
        format.html { redirect_to(@managers_cash, :notice => 'Managers cash was successfully created.') }
        format.xml  { render :xml => @managers_cash, :status => :created, :location => @managers_cash }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @managers_cash.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /managers_cashes/1
  # PUT /managers_cashes/1.xml
  def update
    @managers_cash = ManagersCash.find(params[:id])

    respond_to do |format|
      if @managers_cash.update_attributes(params[:managers_cash])
        format.html { redirect_to(@managers_cash, :notice => 'Managers cash was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @managers_cash.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /managers_cashes/1
  # DELETE /managers_cashes/1.xml
  def destroy
    @managers_cash = ManagersCash.find(params[:id])
    @managers_cash.destroy

    respond_to do |format|
      format.html { redirect_to(managers_cashes_url) }
      format.xml  { head :ok }
    end
  end
end
