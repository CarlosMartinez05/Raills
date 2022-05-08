class PetsController < ApplicationController
    
      def index
        @pet = Pet.all
      end
    
      def show
        @pet = Pet.find(pets_params)
      end
    
      def new
        @pet = Pet.new
      end
      
      def create
        @pet = Pet.new(pets_params)
        if @pet.save
          return redirect_to '/'
         else 
          render :new, status: :unprocessable_entity
         end  
      end
    
      def update
        @pet = Pet.find(pets_params)
      end
    
      def edit
        @pet = Pet.find(pets_params)
      end
    
      def destroy
        @pet = Pet.find(pets_params)
      end
      
    private
    def pets_params
       params.require(:pets).permit(:name, :weith, :Age, :avatarPets, :OwnerPets, :PhoneNumberOwnerPets)
    end
end
