config      = require('../config').images

changed     = require 'gulp-changed'
gulp        = require 'gulp'
imagemin    = require 'gulp-imagemin'
browserSync = require 'browser-sync'

gulp.task 'images', ->
  gulp.src(config.src)
    .pipe changed(config.dest)
    .pipe imagemin()
    .pipe gulp.dest(config.dest)
    .pipe browserSync.reload(stream: true)
