@inp = document.getElementById 'input'
box = document.getElementById 'thumb'
@reader = new FileReader
@handleFiles = ->
	 	  fileList = @files
	 	  for i in [0...fileList.length]
	 	     reader.readAsText fileList[i]
	 	     #chrome has some wrong in the file api
	 	     #reader.onload = (e)-> alert e.target.result
	 	     
	 	     reader.onload = (e)->
	 	         alert reader.result
window.onload = ->
	      inp.addEventListener 'change',handleFiles,false
	      
@imageSel = (files)->	
	       
	       afile = files[i] for i in [0...files.length]
	       imageReader = new FileReader
	       imageReader.readAsDataURL afile
	       #此处do为执行闭包
	       imageReader.onload =  do (afile)->
	          (e)->
	             span = document.createElement 'span'
	             span.innerHTML = ['<img class="images" src="', e.target.result,'" title="', afile.name, '"/>'].join ''
	              
	             document.getElementById('thumb').insertBefore span,null
	       
                    
@dropIt = (e)->
	     imageSel e.dataTransfer.files
	     do e.stopPropagation
	     do e.preventDefault