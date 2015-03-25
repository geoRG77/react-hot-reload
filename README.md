# React hot reload example app

Sample Rails app using Gulp instead of asset pipeline

## Features

  * SLIM for HTML (Rails gem)
  * SASS (with Autoprefixer, source maps)
  * React + ES6 (using Babel & Browserify with incremental builds)
  * Generate font icons
  * Optimize images

## Not working

  * React hot reload (using livereactload)

## Usage

    # Clone repository
    git clone git@github.com:geoRG77/react-hot-reload.git
    cd react-hot-reload

    # Install gems
    bundle install

    # Install node modules
    npm install

    # Run rails server
    rails s

    # Run default task in Gulp (w/ BrowserSync)
    gulp
