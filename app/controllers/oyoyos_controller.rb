class OyoyosController < ApplicationController
  # GET /oyoyos
  # GET /oyoyos.xml
  def index
 
@oyoyos= Oyoyo.find(:all)

  end

  # GET /oyoyos/1
  # GET /oyoyos/1.xml
  def show
    @oyoyo = Oyoyo.find(params[:id])

    respond_to do |s|
      s.html # show.html.erb
      s.xml  { render :xml => @oyoyo }
    end
  end

  # GET /oyoyos/new
  # GET /oyoyos/new.xml
  
  def list
  @oyoyos = Oyoyo.find (:all)
      respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @oyoyo }
    end
  
end
  
  def new
    @oyoyo = Oyoyo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @oyoyo }
    end
  end

  # GET /oyoyos/1/edit
  def edit
    @oyoyo = Oyoyo.find(params[:id])
  end

  # POST /oyoyos
  # POST /oyoyos.xml
  def create
    @oyoyo = Oyoyo.new(params[:oyoyo])

    respond_to do |format|
      if @oyoyo.save
        flash[:notice] = 'Oyoyo was successfully created.'
        format.html { redirect_to(@oyoyo) }
        format.xml  { render :xml => @oyoyo, :status => :created, :location => @oyoyo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @oyoyo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /oyoyos/1
  # PUT /oyoyos/1.xml
  def update
    @oyoyo = Oyoyo.find(params[:id])

    respond_to do |format|
      if @oyoyo.update_attributes(params[:oyoyo])
        flash[:notice] = 'Oyoyo was successfully updated.'
        format.html { redirect_to(@oyoyo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @oyoyo.errors, :status => :unprocessable_entity }
      end
    end
    end

  # DELETE /oyoyos/1
  # DELETE /oyoyos/1.xml
  def destroy
    @oyoyo = Oyoyo.find(params[:id])
    @oyoyo.destroy

    respond_to do |format|
      format.html { redirect_to(oyoyos_url) }
      format.xml  { head :ok }
    end
  end
  


def search
    @oyoyos = Oyoyo.find(:all, :conditions => ["name LIKE ?", "%#{params[:key]}%"]) |
    @oyoyos = Oyoyo.find(:all, :conditions => ["comment LIKE ?", "%#{params[:key]}%"])

  end

end
