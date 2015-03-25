config      = require('../config').scripts

gulp        = require 'gulp'
gutil       = require 'gulp-util'
browserify  = require 'browserify'
babelify    = require 'babelify'
source      = require 'vinyl-source-stream'
watchify    = require 'watchify'
lrload      = require 'livereactload'

browserifyBundler = browserify(config.browserifyOptions)
browserifyBundler.transform babelify.configure(experimental: true)
browserifyBundler.transform lrload
browserifyBundler.require(config.src, entry: true)

bundler = watchify(browserifyBundler)

bundle = ->
  lrload.listen()
  bundler.bundle()
    .on 'error', (err) ->
      console.log 'Error : ' + err.message
    .pipe source('app.js')
    .pipe gulp.dest(config.dest)
    .pipe lrload.gulpnotify()

bundler.on('update', bundle)
bundler.on('log', gutil.log)

gulp.task 'scripts', bundle
