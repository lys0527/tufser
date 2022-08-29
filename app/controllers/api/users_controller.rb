class Api::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  before_action :set_employee, only: [:show]

  # ActiveRecordのレコードが見つからなければ404 not foundを応答する
  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: { error: '404 not found' }, status: 404
end
