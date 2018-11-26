class PromocaosController < ApplicationController
  before_action :set_promocao, only: [:show, :edit, :update, :destroy]

  # GET /promocaos
  # GET /promocaos.json
  def index
    @promocaos = Promocao.all
  end

  # GET /promocaos/1
  # GET /promocaos/1.json
  def show
  end

  # GET /promocaos/new
  def new
    @promocao = Promocao.new
  end

  # GET /promocaos/1/edit
  def edit
  end

  # POST /promocaos
  # POST /promocaos.json
  def create
    @promocao = Promocao.new(promocao_params)

    respond_to do |format|
      if @promocao.save
        format.html { redirect_to @promocao, notice: 'Promocao was successfully created.' }
        format.json { render :show, status: :created, location: @promocao }
      else
        format.html { render :new }
        format.json { render json: @promocao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promocaos/1
  # PATCH/PUT /promocaos/1.json
  def update
    respond_to do |format|
      if @promocao.update(promocao_params)
        format.html { redirect_to @promocao, notice: 'Promocao was successfully updated.' }
        format.json { render :show, status: :ok, location: @promocao }
      else
        format.html { render :edit }
        format.json { render json: @promocao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promocaos/1
  # DELETE /promocaos/1.json
  def destroy
    @promocao.destroy
    respond_to do |format|
      format.html { redirect_to promocaos_url, notice: 'Promocao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promocao
      @promocao = Promocao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promocao_params
      params.require(:promocao).permit(:titulo, :mensagem, :imagem, :beacon_id)
    end
end
