class FruitsController < ApiController
  before_action :set_fruit, only: [:show, :update, :destroy]

  # GET /fruits
  def index
    @fruits = Fruit.select("id, name").all
    render json: @fruits.to_json
  end

  # GET /fruits/1
  def show
    @fruit = Fruit.find(params[:id])
    render json: @fruit.to_json(only: [:name, :price])
  end

  # POST /fruits
  def create
    @fruit = Fruit.new(fruit_params)

    if @fruit.save
      render json: @fruit, status: :created, location: @fruit
    else
      render json: @fruit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fruits/1
  def update
    if @fruit.update(fruit_params)
      render json: @fruit
    else
      render json: @fruit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fruits/1
  def destroy
    @fruit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fruit
      @fruit = Fruit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fruit_params
      params.require(:fruit).permit(:name, :price)
    end
end
