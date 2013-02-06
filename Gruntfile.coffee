module.exports = (grunt) ->

  grunt.initConfig
    coffee:
      build:
        options:
          bare: true
        files:
          'storage.js': 'storage.coffee'
      test:
        files:
          'test/test.js': 'test/test.coffee'
    uglify:
      build:
        files:
          'storage-min.js': 'storage.js'
    watch:
      coffee:
        files: ['storage.coffee']
        tasks: 'coffee:build'
      test:
        files: ['test/*.coffee']
        tasks: 'coffee:test'
      compress:
        files: ['storage.js']
        tasks: 'uglify:build'

  # Dependencies
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'build', ['coffee', 'uglify']
  grunt.registerTask 'default', ['build', 'watch']