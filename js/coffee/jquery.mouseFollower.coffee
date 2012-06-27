###
mouseFollower - jQuery Plugin

About this plugin, visit github project page.
https://github.com/bugcloud/mouse-follower
###
$ = jQuery

$.fn.followMouse = (opt) ->
  default_options =
    animationSpeed: 100
    easingFunction: "linear"
    catchUpCallback: () ->

  options = $.extend {}, default_options, opt
  this.each () ->
    $_that = $(this)
    $_that.selfWidth = $_that.outerWidth()
    $_that.selfHeight = $_that.outerHeight()

    $("html").mousemove (e) ->
      $_that.stop(false, false)
      props =
        top: e.pageY - $_that.selfHeight / 2
        left: e.pageX - $_that.selfWidth / 2
      $_that.animate props, options.animationSpeed, options.easingFunction, options.catchUpCallback
    return

  return this
