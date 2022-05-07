class DoctorController < ApplicationController

      def new
        @doctor = Doctor.new
      end
    
      def create
        @doctor = Doctor.new(doctor_params)


        if @doctor.save
         return redirect_to '/'
        else 
         render :new, status: :unprocessable_entity
        end  
      end
    
      def update
        @doctor = Doctor.find(params[:id])
      end
    
      def edit
        @doctor = Doctor.find(params[:id])
      end
    
      def destroy
        doctor = Doctor.find(params[:id])
      end

    private
      def doctor_params
          params.require(:doctor).permit(:name, :email, :Age)
      end
end
