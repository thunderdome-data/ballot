// SETTING VALUE
var catID = 0;
var catLength = 12;
var nomID = '';
var catTitle = '';
var votes = [];
// this is for actual awards results -- not user voting results
//var winners = {'1':'nom2','2':'nom12','3':'nom16','4':'nom21','5':'nom29','6':'nom32','7':'nom35','8':'nom42','9':'nom49','10':'nom53','11':'nom56','12':'nom60'};
 
//GET NOMINEES
	function getNominees(catIDsent,title) {
		catID = catIDsent;
		catTitle = title;

		$('#nominees').load('incl/nominees.php?cat_id='+catID, function() {
		$('#categories').hide();
		$('#results').hide().html('');
		$('#nominees').show();
		//$('#' + winners[catID]).addClass('winner'); // this is for actual awards winners
	   });
	}
	
	function getAllCategories() {
		$('#nominees').hide();
		$('#results').hide();
		$('#print').hide();
		$('#categories').show();
	}

$(document).ready(function() {
	
	$('#print').load('incl/print.php');
	$("#modcover").hide();

   //SHOW NOMINEES FOR SELECTED CATEGORY
	$('.catSelect').click(function() {
		catID = $(this).attr('id');
		catTitle = $(this).attr('title');
	   $('#nominees').load('incl/nominees.php?cat_id='+catID, function() {
		   $('#categories').hide();
		   $('#results').hide().html('');
		   $('#nominees').show();
		   $('#categories_btn').show();
		   $('#' + winners[catID]).addClass('winner');
	   });
	});

   //ACTION FOR VOTE SUBMIT BUTTON
	$('.vote_btn').live('click', function() {
			nomID = $(this).attr('id');
			votes.push('nom'+nomID);
			setUserVote(nomID);
			
			// highlight user's votes
		   for (vote in votes) {
				$('#' + votes[vote]).addClass("uservoted");
		   }	

		   $('#results').load('incl/results.php?nom_id='+nomID+'&cat_id='+catID, function() {
			   	$('#results').show();
			    $("#modcover").show();
			    $("#modcover").animate({ opacity: '1' }, 500);
				expandBars();
				$('#nom'+ nomID).addClass('active');
				$('#resultCatName').html('User Poll Results: Best ' + catTitle);
		   });
	});
	
	//CLOSE RESULTS WIN
	$("#results").click(function() {
		$("#modcover").hide();
		$("#modcover").animate({ opacity: '0' }, 500);
		$('#results').hide();
	});

	//CLOSE PRINT
	$('.closebtn').live('click', function() {
		$("#modcover").hide();
		$("#modcover").animate({ opacity: '0' }, 500);
		$('#print').hide();
	});
	
	//BACK TO HOME/ALL CATEGORIES START PAGE
	$('#home_btn').live('click', function() {
		   $('#nominees').hide();
		   $('#results').hide();
		   $('#print').hide();
		   $('#categories').show();
	});

   //SHOW NOMINEES FOR NEXT CATEGORY
	$('#nextCat_btn').click(function() {
		if (catID == catLength) {
			catID = 1;
		} else {
			catID = parseInt(catID) + 1;
		}
	   $('#nominees').load('incl/nominees.php?cat_id='+catID, function() {
		   $('#categories').hide();
		   $('#results').hide().html('');
		   $('#nominees').show();
		   $('#' + winners[catID]).addClass('winner');

	   });
	});

	
   //GET PAGE TO PRINT
	$('#printview_btn').live('click', function() {
		   $("#modcover").show();
    	   $("#modcover").animate({ opacity: '1' }, 500);
		   $('#results').hide();
		   $('#print').show();
	});
	
	$('#print_me_btn').live('click', function() {
			//$('#print').printElement();
			$("#print").printElement(
            {
            	overrideElementCSS:[
					'css/print.css',
				{ href:'css/print.css',media:'print'}]
            });
	});
	 
	 //FULL RESULTS Expands bars based on title attribute
	 function expandBars() {
	    timed = window.setTimeout(function() {
 				$('.bar .color').map(function() {
					var barWidth = $(this).attr('title');
					$(this).animate({width: barWidth}, 600);
				})
            },
     		200);
	 }
	 
	 // HIGHLIGHT USER'S VOTES					   
	function setUserVote(nomID) {
		   	// highlight user's votes
			for (vote in votes) {
				$('#' + votes[vote] + 'p').addClass("uservoted");
			}
	}
	 
 
 }); //end doc ready function
	
	


  
