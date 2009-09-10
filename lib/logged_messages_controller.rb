class LoggedMessagesController < ActionController::Base
  skip_filter :all

  def index
    @messages = LoggedMessage.find(:all, :limit => 10, :order => "created_at DESC")
    render :template => 'logged_messages/feed.rxml'
  end
end