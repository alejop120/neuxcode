Rails.application.routes.draw do
  resources :student_has_subjects
  resources :students do
  	resources :subjects
  end
  resources :course_has_subjects
  resources :courses
  resources :teachers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  ## API ##
  namespace :api do
    namespace :v1 do
      match 'students' => 'students#index', via: :get
  	end
  end

  
end
