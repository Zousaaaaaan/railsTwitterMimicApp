class DmsController < ApplicationController

  before_action :authenticate_user

  def index
    # @dms_all = [nil]
    # (1..User.last.id).each do |to_id|
    #   @dm = Dm
    #           .where("user_id = ? and to_user_id = ?", @current_user.id, to_id)
    #           .or(Dm.where("to_user_id = ? and user_id = ?", @current_user.id, to_id))
    #           .order(created_at: :desc)
    #           .first
    #   if @dm
    #     @dm_all << nil
    #   else
    #     @dm_all << @dm
    #   end
    # end
    #
    # @dm_all[@current_user.id] = nil
  end

  def choice
    @follows = Follower.where(user_id: @current_user.id)
  end

  def show
    @dm = Dm.new
    @dms = Dm
            .where("user_id = ? and to_user_id = ?", @current_user.id, params[:to_user_id])
            .or(Dm.where("to_user_id = ? and user_id = ?", @current_user.id, params[:to_user_id]))
            .order(created_at: :desc)
  end

  def create
    @dm = Dm.new(
      content: params[:content],
      user_id: @current_user.id,
      to_user_id: params[:to_user_id]
    )
    if @dm.save
      flash[:notice] = "DMを作成しました"
      redirect_to("/dms/#{@current_user.id}/show/#{params[:to_user_id]}")
    else
      redirect_to("/dms/#{@current_user.id}/show/#{params[:to_user_id]}")
    end
  end



end
