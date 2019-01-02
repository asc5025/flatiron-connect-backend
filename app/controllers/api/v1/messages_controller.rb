class Api::V1::MessagesController < ApplicationController
  before_action :find_message, only: [:update, :destroy]

  def index
    @messages = Message.all
    render json: @messages
  end

  def create
    @message = Message.find_or_create_by(message_params)
    if @message.valid?
      render json: @message, status: :created
    else
      errors = @message.errors.full_messages
      message = JSON::parse(@message.to_json).merge({"errors" => errors})
      render :json => message, status: 400
    end
  end

  def update
    @message = Message.find(params[:id])

    @message.update(message_params)
    if @message.save
      render json: @message
    else
      render json: {errors: @message.errors.full_messages}, status: 422
    end
  end

  private

  def message_params
    params.require(:message).permit(:sender_id, :receiver_id, :body)
  end

  def find_message
    @message = Message.find(params[:id])
  end


end
