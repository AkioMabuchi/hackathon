Rails.application.routes.draw do
  root "home#top"

  get "/terms", to: "home#terms"
  get "/privacy", to: "home#privacy"
  get "/login", to: "users#login_form"

  post "/logout", to: "users#logout"

  get "/auth/twitter/callback", to: "users#twitter_callback"
  get "/auth/failure", to: "users#auth_failure"
  post "/twitter", to: "users#twitter_post"

  get "/events", to: "events#index"
  get "/events/attend", to: "apps#attend_form"
  get "/apps", to: "apps#index"
  get "/apps/new", to: "apps#new"

  get "/awards", to: "users#awards"
  get "/settings/apps", to: "apps#edit"
  get "/settings/user/profile", to: "users#profile_form"

  get "/events/akiohackathon1", to: "akio_hackathon1#top"
  get "/events/akiohackathon1/participate", to: "akio_hackathon1#participate_form"
  post "/events/akiohackathon1/participate", to: "akio_hackathon1#participate"
  get "/events/akiohackathon1/participants", to: "akio_hackathon1#participants"
  get "/events/akiohackathon1/teams", to: "akio_hackathon1#teams_index"
  get "/events/akiohackathon1/teams/:permalink", to: "akio_hackathon1#teams_show"
  get "/events/akiohackathon1/teams/:permalink/settings", to: "akio_hackathon1#teams_settings_form"
  post "/events/akiohackathon1/teams/:permalink/settings", to: "akio_hackathon1#teams_settings_update"
  get "/events/akiohackathon1/new", to: "akio_hackathon1#new_app_form"
  post "/events/akiohackathon1/new", to: "akio_hackathon1#new_app_create"
  get "/events/akiohackathon1/apps", to: "akio_hackathon1#apps_index"
  get "/events/akiohackathon1/apps/:permalink", to: "akio_hackathon1#app_show"
  post "/events/akiohackathon1/apps/:permalink/comment", to: "akio_hackathon1#post_comment"
  post "/events/akiohackathon1/apps/:permalink/evaluate", to: "akio_hackathon1#post_evaluation"
  get "/events/akiohackathon1/apps/:permalink/settings/description", to: "akio_hackathon1#description_form"
  post "/events/akiohackathon1/apps/:permalink/settings/description", to: "akio_hackathon1#description_update"
  get "/events/akiohackathon1/apps/:permalink/settings/webgl", to: "akio_hackathon1#webgl_form"
  post "/events/akiohackathon1/apps/:permalink/settings/webgl", to: "akio_hackathon1#webgl_update"
  get "/events/akiohackathon1/apps/:permalink/settings/details", to: "akio_hackathon1#details_form"
  post "/events/akiohackathon1/apps/:permalink/settings/details", to: "akio_hackathon1#details_update"
  get "/events/akiohackathon1/result", to: "akio_hackathon1#result"
  get "/events/akiohackathon1/admin/organize", to: "akio_hackathon1#admin_organize_form"
  post "/events/akiohackathon1/admin/organize", to: "akio_hackathon1#admin_organize"
  get "/events/akiohackathon1/admin/award", to: "akio_hackathon1#admin_award_form"
  post "/events/akiohackathon1/admin/award", to: "akio_hackathon1#admin_award"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
