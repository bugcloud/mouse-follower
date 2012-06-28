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
    noFollowDistance: 0
    catchUpCallback: () ->

  options = $.extend {}, default_options, opt
  this.each () ->
    $_that = $(this)
    obj = {}
    obj.selfWidth = $_that.outerWidth()
    obj.selfHeight = $_that.outerHeight()
    obj.currentPosition = null

    $("html").mousemove (e) ->
      if obj.currentPosition is null
        obj.currentPosition = e
      px = obj.currentPosition.pageX - e.pageX
      py = obj.currentPosition.pageY - e.pageY
      distance = Math.sqrt( Math.pow(px, 2) + Math.pow(py, 2) )
      if distance > options.noFollowDistance
        $_that.stop(false, false)
        props =
          top: e.pageY - obj.selfHeight / 2
          left: e.pageX - obj.selfWidth / 2
        $_that.animate props, options.animationSpeed, options.easingFunction, options.catchUpCallback
        obj.currentPosition = e
      return
    return

  return this
