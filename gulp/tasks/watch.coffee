gulp    = require 'gulp'
config  = require '../config'
watch   = require 'gulp-watch'

gulp.task 'watch', [ 'browserSync' ], (callback) ->
  watch config.sass.src, ->
    gulp.start 'sass'

  watch config.images.src, ->
    gulp.start 'images'
