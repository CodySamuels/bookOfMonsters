class MonstersController < ApplicationController

  def index
    @monsters = Monster.all
  end

  def show
    @monster = Monster.find(params[:id])
  end

  def new
    @monster = Monster.new
  end

  def create
    @monster = Monster.new(monster_params)

    if @monster.save
      redirect_to @monster
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @monster = Monster.find(params[:id])
  end

  def update
    @monster = Monster.find(params[:id])

    if @monster.update(monster_params)
      redirect_to @monster
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def monster_params
    params.require(:monster).permit(:name, :ac, :hp)
  end

end