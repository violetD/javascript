# Scroll past URL bar
scrollTop = ->
	doScrollTop = setInterval(->
		if document.body
			clearInterval doScrollTop
			scrollTo 0, 1
			pageYOffset = 0
			scrollTo 0, (if (pageYOffset is document.body.scrollTop) then 1 else 0)
			
			# Check width
			pleaseRotate = document.getElementById( 'please-rotate' )
			if window.innerWidth < 350 && pleaseRotate && window.innerWidth > window.innerHeight
				pleaseRotate.style.display = 'block'
			else if pleaseRotate
				pleaseRotate.style.display = 'none'
	, 200)
	
window.addEventListener 'orientationchange', ->
	scrollTop()
	
window.scaleGame = ->
	if !Globals.Manager.canvas
		return
	# Fullscreen slime
	scaleX = window.innerHeight / Globals.Manager.canvas.height
	scaleY = window.innerWidth / Globals.Manager.canvas.width
	if scaleY < scaleX
		scale = scaleY
	else
		scale = scaleX
	Globals.Manager.canvas.style.webkitTransform = "scale(" + scale + ", " + scale + ")"
	Globals.Manager.canvas.style.webkitTransformOrigin = "center 0"
	Globals.Manager.canvas.style.mozTransform = "scale(" + scale + ", " + scale + ")"
	Globals.Manager.canvas.style.mozTransformOrigin = "center 0"
	Globals.Manager.canvas.style.msTransform = "scale(" + scale + ", " + scale + ")"
	Globals.Manager.canvas.style.msTransformOrigin = "center 0"
	Globals.Manager.canvas.style.transform = "scale(" + scale + ", " + scale + ")"
	Globals.Manager.canvas.style.transformOrigin = "center 0"

window.fireUpSlime = ->
	pixelRatio = window.devicePixelRatio || 1
	canvas = document.getElementById('canvas')


	### the clay.io play frame does this. reimplement if not using the frame...
	# Add padded div to make screen scrollable
	if (document.body.clientHeight - 100) < window.innerHeight
		pageFill = document.createElement("div")
		pageFill.style.height = (window.innerHeight - document.body.clientHeight + 100) + "px"
		document.getElementsByTagName("body")[0].appendChild pageFill
	###
	scrollTop()

	Globals.Manager.canvas = canvas
	Globals.Manager.ctx = Globals.Manager.canvas.getContext('2d')
	Globals.Input = new Input()
	loadingScene = new LoadingScene()
	Globals.Manager.pushScene(loadingScene)
	loadingScene.start()
# run the game when the dom loads
window.addEventListener 'load', ->
	window.fireUpSlime()
	window.scaleGame()
	
window.addEventListener 'resize', ->
	window.scaleGame()
