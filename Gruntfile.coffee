#global module:false
module.exports = (grunt) ->
  
  # Project configuration.
  grunt.initConfig
    
    # Metadata.
    pkg: grunt.file.readJSON("package.json")
    banner: "/*! <%= pkg.title || pkg.name %> - v<%= pkg.version %> - " + "<%= grunt.template.today(\"yyyy-mm-dd\") %>\n" + "<%= pkg.homepage ? \"* \" + pkg.homepage + \"\\n\" : \"\" %>" + "* Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= pkg.author.name %>;" + " Licensed <%= _.pluck(pkg.licenses, \"type\").join(\", \") %> */\n"
    
    # Task configuration.
    concat:
      options:
        banner: "<%= banner %>"
        stripBanners: true

      dist:
        src: [
          "src/js/*.js"
        ]
        dest: "build/<%= pkg.name %>.js"

    uglify:
      options:
        banner: "<%= banner %>"

      dist:
        src: "<%= concat.dist.dest %>"
        dest: "dist/<%= pkg.name %>.min.js"

    jshint:
      options:
        curly: true
        indext: 2 
        eqeqeq: true
        immed: true
        latedef: true
        newcap: true
        noarg: true
        sub: true
        undef: true
        unused: true
        boss: true
        eqnull: true
        browser: true
        globals:
          jQuery: true

      gruntfile:
        src: "Gruntfule.coffee"

      lib_test:
        src: ["lib/**/*.js", "test/**/*.js"]

    coffee:
      test:
        files:
          'test/jasmine/testSpec.js': ['test/jasmine/*Spec.coffee']

    jasmine:
      ci:
        src: "src/js/**/*.js"
        options:
          specs: 'test/jasmine/*Spec.js'
          # helpers: 'test/helper/*helper.js'

    watch:
      gruntfile:
        files: ["src/**/*.js", "test/**/*.coffee"]
        tasks: ["coffee", "jasmine"]

  
  # These plugins provide necessary tasks.
  grunt.loadNpmTasks "grunt-contrib-concat"
  grunt.loadNpmTasks "grunt-contrib-uglify"
  grunt.loadNpmTasks "grunt-contrib-jasmine"
  grunt.loadNpmTasks "grunt-contrib-jshint"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-contrib-coffee"
  
  # Default task.
  grunt.registerTask "default", ["coffee", "jasmine", "concat", "uglify"]
  grunt.registerTask "test", ["coffee", "jasmine"]
