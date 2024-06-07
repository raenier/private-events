class AttendancesController < ApplicationController
  def create
    attendance = current_user.attendances.build(event_id: params[:event_id])
    attendance.save

    redirect_to events_path
  end
end
