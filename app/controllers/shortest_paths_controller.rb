class ShortestPathsController < ApplicationController
  before_action :set_shortest_path, only: [:show, :edit, :update, :destroy]

  # GET /shortest_paths
  # GET /shortest_paths.json
  def index
    @shortest_paths = current_user.shortest_paths.sort_by{|x| x.created_at}
  end

  # GET /shortest_paths/1
  # GET /shortest_paths/1.json
  def show
  end

  def detail
    set_shortest_path
  end

  # GET /shortest_paths/new
  def new
    @shortest_path = ShortestPath.new
    @shortest_path.shortestpath = (0...6).map { ('a'..'z').to_a[rand(26)] }.join
  end

  # GET /shortest_paths/1/edit
  def edit
  end

  # POST /shortest_paths
  # POST /shortest_paths.json
  def create
    @shortest_path = ShortestPath.new(shortest_path_params)
    @shortest_path.user_id = current_user.id

    respond_to do |format|
      if @shortest_path.save
        format.html { redirect_to @shortest_path, notice: 'Shortest path was successfully created.' }
        format.json { render :show, status: :created, location: @shortest_path }
      else
        format.html { render :new }
        format.json { render json: @shortest_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shortest_paths/1
  # PATCH/PUT /shortest_paths/1.json
  def update
    respond_to do |format|
      if @shortest_path.update(shortest_path_params)
        format.html { redirect_to @shortest_path, notice: 'Shortest path was successfully updated.' }
        format.json { render :show, status: :ok, location: @shortest_path }
      else
        format.html { render :edit }
        format.json { render json: @shortest_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shortest_paths/1
  # DELETE /shortest_paths/1.json
  def destroy
    @shortest_path.destroy
    respond_to do |format|
      format.html { redirect_to shortest_paths_url, notice: 'Shortest path was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shortest_path
      if params[:id].to_i != 0
        @shortest_path = ShortestPath.find(params[:id])
      else
        @shortest_path = ShortestPath.find_by( shortestpath: params[:id] )
        str_ip = request.remote_ip.to_s

        visit = Visit.find_or_create_by( :ip_conn => str_ip, :shortest_path_id => @shortest_path.id)
        visit.amount_visits = 0 if visit.amount_visits.nil?
        visit.user_agent = request.user_agent
        visit.amount_visits += 1
        visit.operating_system = RbConfig::CONFIG["host_os"]
        visit.save





      end
    end

    # Only allow a list of trusted parameters through.
    def shortest_path_params
      params.require(:shortest_path).permit(:name, :description, :shortestpath)
    end
end
