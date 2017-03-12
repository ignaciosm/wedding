Rails.application.routes.draw do
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do

    root to: 'static_pages#home'
    get 'static_pages/home'
    get '/rsvp', to: 'guests#new'

    resources :gifts
    resources :photos
    resources :travels
    resources :stories
    resources :guests
    resources :events

  end
  get '*path', to: redirect("/#{I18n.locale}/%{path}")
  get '', to: redirect("/#{I18n.default_locale}/")

end
