config        = require('../config').browserSync

browserSync   = require 'browser-sync'
gulp          = require 'gulp'

gulp.task 'browserSync', ->
  browserSync config
