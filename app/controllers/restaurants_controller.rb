class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    redirect_to restaurants_path # tells the browser to make a GET request to restaurants_path
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)

    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy

    redirect_to restaurants_path
  end

  # Strong Parameters
  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end


  def restaurant_params
    # :restaurant as in the name of the model, in singular and downcase!
    params.require(:restaurant).permit(:name, :address, :rating)
  end


  # params is
  # {
  #   "authenticity_token"=>"bxcW90KfIHKH4f2KuIRkjnr63Xf1dRMAFL7kK+3xKRkXkxs9FdE8stlCMidaRdYdxN/DOcojnXKCAoM7Xw35hA==",
  #   "restaurant"=>{
  #     "name"=>"Carla's Radioactive Risotto",
  #     "address"=>"Botafogo",
  #     "admin"=>"true",
  #     "rating"=>"9"
  # }

  # params.require(:restaurant)
  # {
  #   "name"=>"Carla's Radioactive Risotto",
  #   "address"=>"Botafogo",
  #   "admin"=>"true",
  #   "rating"=>"9"
  # }

  # params.require(:restaurant).permit(:name, :address, :rating)
  # {
  #   "name"=>"Carla's Radioactive Risotto",
  #   "address"=>"Botafogo",
  #   "rating"=>"9"
  # }
end
