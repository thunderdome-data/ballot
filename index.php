<!DOCTYPE html> 
<html lang="en"> 
<head>
	<title>Oscars 2014 ballot</title>
	<meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

	
	<link href="css/bootstrap.css" rel="stylesheet">
  	<!--link href="css/bootstrap-responsive.css" rel="stylesheet"-->
 	<link href="css/oscarballot.css" rel="stylesheet" />
	
	<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css'>
	
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
	<script src="js/printelement.js"></script>
	<script src="js/vote.js"></script>

 	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

<?php
	require_once 'Connection.class.php';
	$connection = new Connection('featuresupdate','features');
	$sql = 'select * from oscars14_categories';
	$results = mysqli_query($connection->con,$sql);
	while($data[]=mysqli_fetch_array($results));
?>

</head>

<body>

	<p class="crit">The 86th annual Academy Awards will air live on ABC at 7 p.m. ET/4 p.m. PT Sunday, March 2. Before the show, mark your predictions in 12 major categories below. Cast your votes and compare your choices with other reader selections in real-time percentages. Check back once the ceremony ends to see the winners highlighted in gold.</p>
  
  <div id="container" class="container" style="margin:0px">
      	<div id="header" class="row">  
			<div id="btnNav">
			<ul class="nav nav-pills">
			   <li id="home_btn" class="active"><a href="#">All categories</a></li>
               <li class="dropdown">
                <a class="dropdown-toggle" id="drop4" role="button" data-toggle="dropdown" href="#">Select a category <b class="caret"></b></a>
                <ul id="menu1" class="dropdown-menu" role="menu" aria-labelledby="drop4">
                <?php
				for ($i = 0; $i < count($data)-1; $i++) { ?>
					 <li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:getNominees(<?php echo $data[$i]['cat_id'] ?>,'<?php echo $data[$i]['category'] ?>');"><?php echo $data[$i]['category'] ?></a></li>

				<?php } ?>
                </ul>
              </li>
              <li id="nextCat_btn" class="active"><a href="#">Next category</a></li>
              <li id="printview_btn" class="active"><a href="#">See your selections</a></li>
            </ul>
			</div>

			<div id="modcover"></div>
			
    	</div>  
            
		<div id="categories" class="row">
			<div class="span8"> 
				<ul class="endscreen_thumb">
				
				<?php 
					
					for ($i = 0; $i < count($data)-1; $i++) { ?>
					
						<li><a href="javascript: void(0);" alt="<?php echo $data[$i]['category'] ?>" id="<?php echo $data[$i]['cat_id'] ?>" class="catSelect fancyPop" title="<?php echo $data[$i]['category'] ?>" popWidth="804" popHeight="841"><img src="img/cat<?php echo $data[$i]['cat_id'] ?>.jpg" /><p class="end_thumb"><?php echo $data[$i]['category'] ?> </p></a></li>
					
					<?php }	?>
	
				</ul>
			</div>
			
		</div> <!-- end "categories" -->
	    
		<div id="nominees" class="span8"></div>
		<div id="results" class="row"></div>
		<div id="compare" class="row"></div>			
		<div id="print" class="row"></div>			

	<div style="clear:both"></div>
	
	<div id="sourceCreds">
	Credits: Peggy Bustamante, Sarah Glen, John Hendrickson, Nelson Hsu, Dan Lewis, Kelly Metz. Photos courtesy of the Associated Press, Enthuse Entertainment, Getty Images and The Weinstein Company. Descriptions via IMDB and Oscar.go.com.

	</div>
</div><!-- END container -->

  <!-- Le javascript
    ================================================== -->
    <script src="js/bootstrap-transition.js"></script>
    <script src="js/bootstrap-alert.js"></script>
    <script src="js/bootstrap-modal.js"></script>
    <script src="js/bootstrap-dropdown.js"></script>
    <script src="js/bootstrap-scrollspy.js"></script>
    <script src="js/bootstrap-tab.js"></script>
    <script src="js/bootstrap-tooltip.js"></script>
    <script src="js/bootstrap-popover.js"></script>
    <script src="js/bootstrap-button.js"></script>
    <script src="js/bootstrap-collapse.js"></script>
    <script src="js/bootstrap-carousel.js"></script>
    <script src="js/bootstrap-typeahead.js"></script>

<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-37303540-1'], ['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>	
</body>
</html>