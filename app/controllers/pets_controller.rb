class PetsController < ApplicationController
    
      def index
        @pet = Pet.all
      end
    
      def show
      @pet = Pet.find(params[:id])
      end
    
      def new
        @pet = Pet.new
      end
      
      def create
        @pet = Pet.new(pets_params)
        if @pet.save
          return redirect_to '/pets/index'
         else 
          render :new, status: :unprocessable_entity
         end  
      end
      
      def edit
        @pet = Pet.find(params[:id])
      end
    
      def update         
       @pet = Pet.find(params[:id])

       if @pet.update pets_params
        return redirect_to'/pets/index'
       else
        render :edit, status: :unprocessable_entity
       end
      end
    
      def destroy
        @pet = Pet.find(pets_params)
      end
    
    private
     def pets_params
       params.require(:pet).permit(:name, :weith, :Age, :avatarPets, :OwnerPets, :PhoneNumberOwnerPets, :sex, :breed, :specie, :sterillized)
     end
end
