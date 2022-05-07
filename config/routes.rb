Rails.application.routes.draw do\
    #Route for home
    get '/', to: 'home#index', as:'index'
    #Router for users(Admin)
    get '/users/new', to: 'users#new', as: "newUser"
    post 'users/new', to: 'users#create', as: 'createUser'
    get '/users/edit', to: 'users#edit', as:'editUser'
    post '/users/edit', to: 'users#update', ad:'updateUser'

    #Routes for Doctors
    get '/users/doctor/new', to: 'doctor#new', as: 'newDoctor'
    post '/users/doctor/new', to: 'doctor#create', as: 'createDoctor'
end
