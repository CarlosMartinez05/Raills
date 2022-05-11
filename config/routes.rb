Rails.application.routes.draw do\
    #Route for home
    get '/', to: 'home#index', as:'index'
    #Router for users(Admin)
    get '/users/new', to: 'users#new', as: "newUser"
    post 'users/new', to: 'users#create', as: 'createUser'
    get '/users/edit', to: 'users#edit', as:'editUser'
    post '/users/edit', to: 'users#update', ad:'updateUser'

    #Routes for Sessions users
    get '/users/sessions/signup', to: 'users#new', as: 'newSignUP'
    get '/users/sessions/login', to: 'sessions#new', as: 'newSessions'
    post '/users/sessions/login', to: 'sessions#create', as: 'createSessions'
    get '/', to: 'sessions#destroy', as: 'destroySessions'

    #Routes for Doctors
    get '/doctor/index', to: 'doctor#index', as: 'indexDoctor'
    get '/doctor/new', to: 'doctor#new', as: 'newDoctor'
    post '/doctor/new', to: 'doctor#create', as: 'createDoctor'
    get '/doctor/:id', to: 'doctor#show', as: 'showDoctor'
    get '/doctor/edit/:id', to: 'doctor#edit', as: 'editDoctor'
    post '/doctor/edit/:id', to: 'doctor#update', as: 'updateDoctor'
    delete '/doctor/:id', to: 'doctor#destroy', as: 'destroyDoctor'
    
    #Route for Pets 
    get '/pets/index', to: 'pets#index', as: 'indexPets'
    get '/pets/new', to: 'pets#new', as: 'newPets'
    post '/pets/new', to: 'pets#create', as: 'createPets'
    get '/pets/:id', to: 'pets#show', as: 'pet'
    get '/pets/edit/:id', to: 'pets#edit', as: 'petsEdit'
    post'/pets/edit/:id', to: 'pets#update', as: 'petsUpdate'
    delete '/pets/:id', to: 'pets#destroy', as: 'destroypets'
end
