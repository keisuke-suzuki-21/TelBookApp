Rails.application.routes.draw do
  root "top#index"
  1.upto(18) do |n|
    get "lesson/step#{n}(/:name)" => "lesson#step#{n}"
  end
end
