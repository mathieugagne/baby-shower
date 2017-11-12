class AttendeesController < ApplicationController
  before_action :set_attendee, only: [:show, :edit, :update, :destroy, :notify]

  # GET /attendees
  def index
    @attendees = Attendee.order(:name)
  end

  # GET /attendees/1
  def show
  end

  # GET /attendees/new
  def new
    @attendee = Attendee.new
  end

  # GET /attendees/1/edit
  def edit
  end

  # POST /attendees
  def create
    @attendee = Attendee.new(attendee_params)

    if @attendee.save
      redirect_to attendees_url, notice: 'Attendee was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /attendees/1
  def update
    if @attendee.update(attendee_params)
      redirect_to :back, notice: 'Attendee was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /attendees/1
  def destroy
    @attendee.destroy
    redirect_to attendees_url, notice: 'Attendee was successfully destroyed.'
  end

  def notify
    Notifier.notify_attendee(@attendee).deliver
    redirect_to attendees_url, notice: 'Attendee was successfully notified.'
  end

  def attending
    @attendee.update_attribute(:attending, true)
    redirect_to :back, notice: 'Attendee was successfully updated.'
  end

  def not_attending
    @attendee.update_attribute(:attending, false)
    redirect_to :back, notice: 'Attendee was successfully updated.'
  end

  def attending_doubt
    @attendee.update_attribute(:attending, nil)
    redirect_to :back, notice: 'Attendee was successfully updated.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendee
      @attendee = Attendee.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def attendee_params
      params.require(:attendee).permit(:name, :email, :attending, :attendees_count)
    end
end
