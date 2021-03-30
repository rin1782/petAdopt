class ApplicationController < ActionController::API
    include ::ActionController::Serialization

    before_action :authorized

    def encode_token(payload)
        JWT.encode(payload, 'Pho3n1x')
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
          token = auth_header.split(' ')[1]
          # header: { 'Authorization': 'Bearer <token>' }
          # The Begin/Rescue syntax allows us to rescue out of an exception in Ruby.
          begin
            JWT.decode(token, 'Pho3n1x', true, algorithm: 'HS256')
          rescue JWT::DecodeError
            nil
          end
        end
      end

      def current_user
        if decoded_token
          user_id = decoded_token[0]['user_id']
          @user = User.find_by(id: user_id)
        end
      end
    
      def logged_in?
        !!current_user
        # returns a boolean instead of truthy user object
      end
    
      # STEP 3: Authorization helper methods
      def authorized
        render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
      end
end

