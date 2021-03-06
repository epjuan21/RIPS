module.exports = function(grunt) {

	// load all grunt tasks
    require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);

	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),

        copy: {
            main: {
                expand: true,
                cwd: 'src/css/',
                src: ["**","!**/less/**", "!css/**/*.less", "!css/**/*.scss", "!css/*.css.map"],
                dest: 'dist/'
            }
        },

        less: {
            options: {
                paths: ['src/css']
            },
            src: {        
                expand: true,
                cwd:    "src/css",
                src:    "*.less",
                ext:    ".css",
                dest:   "src/css"
            }
        },

		sass: {
            dist: {
                options: {
                    sourcemap: 'none',
                    style: 'expanded',
                    noCache: true
                },

                files: {
                    "dist/css/style.css" : "src/scss/style.scss"
                }

                // files: [{
                //     expand: true,
                //     cwd:    "src/scss",
                //     src:    ["*.scss"],
                //     dest:  "src/css",
                //     ext:    ".css"
                // }]
            }
		},

        watch: {
            options: {
                nospawn: true,
                livereload: true
            },
            less: {
                files: ['src/css/**/*.less'],
                tasks: ['less']
            },
            sass: {
                files: ['src/scss/**/*.scss'],
                tasks: ['sass']
            },
            copy: {
                files: ['src/**'],
                tasks: ['copy:main']
            }
        }
		
	});

	grunt.registerTask('default', ['watch']);
};