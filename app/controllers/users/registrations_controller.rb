class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super do |resourse|
      if params[:plan]
        resourse.id = params[:plan]
        if resourse.id == 2
          resourse.save_with_subscription
        else
          resourse.save
        end
      end
    end
  end
end
  