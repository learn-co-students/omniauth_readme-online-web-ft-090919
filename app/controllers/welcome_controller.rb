# ssl issues, server is not sending a response
# 139973564960128:error:1408F09C:SSL routines:ssl3_get_record:http request:../ssl/record/ssl3_record.c:322:

class WelcomeController < ApplicationController
  def home
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
    render 'home'
  end
end
