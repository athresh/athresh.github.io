source 'https://rubygems.org'

gem 'jekyll'
gem 'csv' # required explicitly on Ruby 3.4+ for Jekyll

# Core plugins that directly affect site building
group :jekyll_plugins do
    gem 'jekyll-email-protect'
    gem 'jekyll-get-json'
    gem 'jekyll-link-attributes'
    gem 'jekyll-minifier'
    gem 'jekyll-regex-replace'
    gem 'jekyll-scholar'
    gem 'jekyll-sitemap'
    gem 'jekyll-terser', :git => "https://github.com/RobertoJBeltran/jekyll-terser.git"
    gem 'jemoji'
end

# Gems used by the remaining plugins (outside :jekyll_plugins)
group :other_plugins do
    gem 'observer'       # used by jekyll-scholar
    gem 'terser'         # used by jekyll-terser
    # gem 'unicode_utils' -- should be already installed by jekyll
    # gem 'webrick' -- should be already installed by jekyll
end
