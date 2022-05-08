Rails.application.routes.draw do\
    #Route for home
    get '/', to: 'home#index', as:'index'
    #Router for users(Admin)
    get '/users/new', to: 'users#new', as: "newUser"
    post 'users/new', to: 'users#create', as: 'createUser'
    get '/users/edit', to: 'users#edit', as:'editUser'
    post '/users/edit', to: 'users#update', ad:'updateUser'

    #Routes for Doctors
    get '/users/doctor/show', to: 'doctor#show', as: 'showDoctor'
    get '/users/doctor/new', to: 'doctor#new', as: 'newDoctor'
    post '/users/doctor/new', to: 'doctor#create', as: 'createDoctor'
    get '/users/doctor/detail/:id', to: 'doctor#detail', as: 'detailDoctor'

    #Route for Pets 
    get 'doctor/pets/index', to: 'pets#index', as: 'indexPets'
    get 'doctor/pets/new', to: 'pets#new', as: 'newPets'
    post 'doctor/pets/new', to: 'pets#create', as: 'createPets'
    get 'doctor/pets/:id', to: 'pets#show', as: :pet
end
