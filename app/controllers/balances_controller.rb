class BalancesController < ApplicationController
  # GET /balances
  # GET /balances.xml
  def index
    @balances = Balance.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @balances }
    end
  end

  # GET /balances/1
  # GET /balances/1.xml
  def show
    @balance = Balance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @balance }
    end
  end

  # GET /balances/new
  # GET /balances/new.xml
  def new
    @balance = Balance.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @balance }
    end
  end

  # GET /balances/1/edit
  def edit
    @balance = Balance.find(params[:id])
  end

  # POST /balances
  # POST /balances.xml
  def create
    @balance = Balance.new(params[:balance])

    respond_to do |format|
      if @balance.save
        format.html { redirect_to(@balance, :notice => 'Balance was successfully created.') }
        format.xml  { render :xml => @balance, :status => :created, :location => @balance }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @balance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /balances/1
  # PUT /balances/1.xml
  def update
    @balance = Balance.find(params[:id])

    respond_to do |format|
      if @balance.update_attributes(params[:balance])
        format.html { redirect_to(@balance, :notice => 'Balance was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @balance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /balances/1
  # DELETE /balances/1.xml
  def destroy
    @balance = Balance.find(params[:id])
    @balance.destroy

    respond_to do |format|
      format.html { redirect_to(balances_url) }
      format.xml  { head :ok }
    end
  end
end
