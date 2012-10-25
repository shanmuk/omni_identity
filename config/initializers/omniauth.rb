Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter,'UKDFU6XkAZWtIShEBRvxOA', 'EQpMFvw1MI4xLcfYeKAhH76je3lNRE4r5Bxr29ChmI'
  provider :google_oauth2, '908126339661-efldk72ojs6lgobkv5l5lbk9e4n10vvf.apps.googleusercontent.com', 'Skp1w-Arz54kvl2vs3Y98RuX'
  provider :facebook,'160486854093315','8280bd6d7ee34001f895a1868ab56243'  
  provider :identity, on_failed_registration: lambda { |env|
    IdentitiesController.action(:new).call(env)
  }
end
