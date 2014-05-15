$(window).load(function(){
    var vidName;
    if(typeof pop_thegym != 'undefined'){
          vidName = pop_thegym;
      }
    else if(typeof pop_main != 'undefined'){
         vidName = pop_main;
    }
    
    
    
    /*--======CLOCK======--*/
    function clock(){
    	var curTime = (vidName.currentTime()+1);    
    	var duration = Math.floor(vidName.duration());
    	timeLeft = secondsToTime(duration-curTime);
    	curTime = Math.floor(curTime);
        
         if(curTime == 12){
            $("img#home_header").show().animate({"height": "150px"}, 600).animate({"opacity": "1"}, 600);  
        }
        
    	curTime = secondsToTime(curTime);
    	//console.log(duration);
    	if(vidName.readyState() > 1 && vidName.currentTime() >= 1){
		   $("#curTime").html(curTime);
    	}
    	
    	if(vidName.readyState() > 1 && vidName.currentTime() < vidName.duration() && vidName.currentTime() >= 1){
		   $("#remaining").html('- '+timeLeft);
    	}
        
        if(vidName.readyState() > 1 && vidName.currentTime() >= (vidName.duration() - 2)){
            $("#remaining").hide();   
        }
    	   	        
    	
    	setTimeout(clock, 1000); // repeat function every second
    }
    
    
    
    /*--======CONTROL BAR======--*/
    $("#restart").click(function(){
		window.location.reload();
	});
	
    $("#pause").click(function(){ 

            if(vidName.currentTime() > 0){
                        vidName.pause();
            }
            $("#play").show();
            $("#pause").hide();
    });
	
    $("#play").click(function(){
        if(vidName.currentTime() > 0){
            vidName.play();
        }

        $("#play").hide();
        $("#pause").show();
    });

		
		
    
    
    
  /*--======GLOBAL POP UP VIDEO FUNCTION======--*/  
    
   $("a.popUpVideo").live('click', function(){
      var override = $(this).attr("video-override");
      $.fancybox({
                            'type'				: 	'iframe',
                            'href'				: 	$(this).attr('data-video'),
                            'transitionIn'		        :	'elastic',
                            'transitionOut'	                :	'elastic',
                            'speedIn'			        :	600, 
                            'speedOut'			        :	200, 
                            'width'			        :	710,
                            'height'			        :	550,
                            'overlayShow'		        :	true,
                            'titleShow'		                :	false,
                            'showCloseButton'	                :	true,
                            'onStart': function(){
                                if(override != 'true'){
                                    vidName.pause(); 
                                    $("#play").show(); 
                                    $("#pause").hide();
                                }
                            },
                            'onClosed': function(){
                                if(override != 'true'){
                                    vidName.play();
                                    $("#play").hide(); 
                                    $("#pause").show();
                                }
                            }
        }); //end fancybox 
       
   }); //end pop up video
   
   /*--======FANCYBOX POP UP BIND======--*/
   
   
    $("a.fancyPop").live('click', function(){
        $.fancybox({
                        'type'				: 	'iframe',
                        'href'				: 	$(this).attr('alt'),
                        'transitionIn'		        :	'elastic',
                        'transitionOut'	                :	'elastic',
                        'speedIn'			:	600, 
                        'speedOut'			:	200, 
                        'width'			        :	parseInt($(this).attr('popWidth')),
                        'height'			:	parseInt($(this).attr('popHeight')),
                        'overlayShow'		        :	true,
                        'titleShow'		        :	false,
                        'showCloseButton'	        :	true,
                        'onStart': function(){

                                if(vidName.currentTime() < vidName.duration()){
                                        vidName.pause();
                                        $("#play").show(); 
                                        $("#pause").hide();
                                }
                        },
                        'onClosed': function(){
                                if(vidName.currentTime() < vidName.duration()){
                                        vidName.play();
                                        $("#play").hide(); 
                                        $("#pause").show();
                                }
                        }
                }); //end fancybox
    }); //end live 
   
      /*--======FANCYBOX POP UP BIND======--*/
   
   
    $("a.homescreenPop").live('click', function(){
        $.fancybox({
                        'type'				: 	'iframe',
                        'href'				: 	$(this).attr('alt'),
                        'transitionIn'		        :	'elastic',
                        'transitionOut'	                :	'elastic',
                        'speedIn'			:	600, 
                        'speedOut'			:	200, 
                        'width'			        :	parseInt($(this).attr('popWidth')),
                        'height'			:	parseInt($(this).attr('popHeight')),
                        'overlayShow'		        :	true,
                        'titleShow'		        :	false,
                        'showCloseButton'	        :	true
                        /*,
                        'onStart': function(){

                                if(vidName.currentTime() < vidName.duration()){
                                        vidName.pause();
                                        $("#play").show(); 
                                        $("#pause").hide();
                                }
                        },
                        'onClosed': function(){
                                if(vidName.currentTime() < vidName.duration()){
                                        vidName.play();
                                        $("#play").hide(); 
                                        $("#pause").show();
                                }
                        }*/
                }); //end fancybox
    }); //end live 

   
   
   /*--=======CONVERT SECONDS TO TIME======--*/
   function secondsToTime(secs)
	 {
		 var hours = Math.floor(secs / (60 * 60));
	 
		 var divisor_for_minutes = secs % (60 * 60);
		 var minutes = Math.floor(divisor_for_minutes / 60);
		 if(minutes < 10){
		 	minutes = '0'+minutes.toString();
		 }
	 
		 var divisor_for_seconds = divisor_for_minutes % 60;
		 var seconds = Math.ceil(divisor_for_seconds);
		 if(seconds < 10){
		    seconds = '0'+seconds.toString();
		 }
	 
		 var time = minutes+':'+seconds;
		 return time;
	 }
   
   
   /*--======START VIDEO ON LOAD======--*/
   setTimeout(function(){vidName.play();$("#play").hide();$("#pause").show();}, 100);
   clock();
   
   /*--======VIDEO SWAP======--*/
   $("a.vidSwap").live('click', function(){ //swaps images for videos and then autoplays the video
       var videoID = $(this).attr('video-id');
       var swapVid = document.getElementById(videoID);
       $(this).hide();
       $("#"+videoID).show(function(){swapVid.play();});  
   }); //end click bind
   
   function test(){
       alert('hi');
   }


}); //END ON LOAD
                                    
                            
                            
                                                
                            
                                                  


