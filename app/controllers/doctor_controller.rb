class DoctorController < ApplicationController

      def index
      
        @doctor = Doctor.all
    
      end
      
      def new
        
        @doctor = Doctor.new
        
      end
      
      def create
        
        @doctor = Doctor.new(doctor_params)
        @doctor.user_id = session[:user_id]
        session[:doctor_id] = @doctor.id
        if @doctor.save
          return redirect_to '/doctor/index'
         flash[:notice] = 'Create new doctor successfully'
        else 
          render :new, status: :unprocessable_entity
        end  
      
      end
      
      def show
      
        @doctor = Doctor.find(params[:id])
      
      end
      
      def edit

        @doctor = Doctor.find(params[:id])
       
      end
      
      def update         
        @doctor = Doctor.find(params[:id])
        
        if @doctor.update doctor_params
          return redirect_to'/doctor/index'
        else
          render :edit, status: :unprocessable_entity
        end
       
      end
    
      def destroy

        @doctor = Doctor.find(params[:id])
        @doctor.destroy
        redirect_to indexDoctor_path
       

      end

    private
      def doctor_params
          params.require(:doctor).permit(:name, :email, :Age, :avatarDr, :user_id)
      end
end
