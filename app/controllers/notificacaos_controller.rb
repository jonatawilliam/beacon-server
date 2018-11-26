class NotificacaosController < ApplicationController
  before_action :set_notificacao, only: [:show, :edit, :update, :destroy]

  # GET /notificacaos
  # GET /notificacaos.json
  def index
    @notificacaos = Notificacao.all
  end

  # GET /notificacaos/1
  # GET /notificacaos/1.json
  def show
  end

  # GET /notificacaos/new
  def new
    @notificacao = Notificacao.new
  end

  # GET /notificacaos/1/edit
  def edit
  end

  # POST /notificacaos
  # POST /notificacaos.json
  def create
    @notificacao = Notificacao.new(notificacao_params)

    respond_to do |format|
      if @notificacao.save
        format.html { redirect_to @notificacao, notice: 'Notificacao was successfully created.' }
        format.json { render :show, status: :created, location: @notificacao }
      else
        format.html { render :new }
        format.json { render json: @notificacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notificacaos/1
  # PATCH/PUT /notificacaos/1.json
  def update
    respond_to do |format|
      if @notificacao.update(notificacao_params)
        format.html { redirect_to @notificacao, notice: 'Notificacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @notificacao }
      else
        format.html { render :edit }
        format.json { render json: @notificacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notificacaos/1
  # DELETE /notificacaos/1.json
  def destroy
    @notificacao.destroy
    respond_to do |format|
      format.html { redirect_to notificacaos_url, notice: 'Notificacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notificacao
      @notificacao = Notificacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notificacao_params
      params.require(:notificacao).permit(:titulo, :mensagem, :beacon_id)
    end
end
