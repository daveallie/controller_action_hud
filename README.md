# Controller & Action HUD

### Installation

Add it to your Gemfile with
```
gem 'controller_action_hud'
```

Now add the widget to your application layout, like
```
    # app/views/layout/application.html.erb
    # ...
    <body>
      <%= controller_action_hud_widget if Rails.env.development? %>
      <%= yield %>
    </body>
```

It's recommended you only use the gem with the development environment.
