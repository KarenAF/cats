class V1::CatsController < ApplicationController
  def index
    @cats = Cat.all
    render 'index.json.jbuilder'
  end
   
  def show 
    @cat = Cat.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @cat = Cat.new(
      name: params[:name],
      breed: params[:breed],
      color: params[:color],
      age_category: params[:age_category]
    )
    @cat.save
    render 'show.json.jbuilder'
  end

  def update
    @cat = Cat.find_by(id: params[:id])
    @cat.update(
      name: params["name"],
      breed: params["breed"],
      color: params["color"],
      age_category: params["age_category"]
    )
    @cat.save      
    redirect_to "/cats/#{@cat.id}"
  end

  def destroy
    @cat = Cat.find_by(id: params[:id])
    @cat.destroy
    render json: {message: "Cat successfully destroyed"}
  end
end
