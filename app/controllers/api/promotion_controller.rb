class Api::PromotionController < ApplicationController

  def index
    begin
      @beacon = Promocao.find_by(beacon_id: params[:beacon_id].gsub(/[^0-9]/, ''))
      if @beacon.present?
        render json: @beacon, status: :ok
      else
        render json: "Beacon não encontrado".to_json, status: :ok
      end
    rescue
      render status: :not_found, json: "Beacon não encontrado".to_json
    end
  end

end