  class CustomFailure < Devise::FailureApp
    def redirect_url
      #return super unless [:worker, :employer, :user].include?(scope) #make it specific to a scope
       new_user_session_url(:subdomain => 'secure')
    end

    # You need to override respond to eliminate recall
    def respond
      if http_auth?
        http_auth
      else
        flash[:error] = 'Invalid login. Please try again.'
        redirect_to welcome_index_path
      end
    end
  end
