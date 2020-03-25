# frozen_string_literal: true

class InvitationsController < ApplicationController
  def create
    @invitation = current_user.invitations.build(invitation_params)
    if @invitation.save
      flash[:success] = 'Invitation sent!'
      redirect_to current_user
    else
      flash.now[:danger] = 'There was a problem with your invite. Try again.'
      redirect_to events_index_url
    end
  end

  private

  def invitation_params
    params.require(:invitation).permit(:attendee_id, :attended_event_id, :host_id)
  end
end
