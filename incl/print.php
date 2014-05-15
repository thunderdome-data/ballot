<?php
	
require_once 'Connection.class.php';
$connection = new Connection('featuresupdate','features');

// vars to hold arrays of data
$data;
$catInfo;

## get data

$sql = 'SELECT * FROM oscars14_categories
			ORDER BY cat_id asc';
$results = mysqli_query($connection->con,$sql);
while($catData[]=mysqli_fetch_array($results));

$sql = 'SELECT * FROM oscars14_nominees
			ORDER BY nom_id asc';
$results = mysqli_query($connection->con,$sql);
while($nomData[]=mysqli_fetch_array($results));


 ?>
<div class="closebtn">close [x]</div>
<h1>Your selections</h2>

<button id="print_me_btn" class="btn">PRINT ME</button>

	<?php // CATEGORIES LOOP START
	
		for ($i = 0; $i < count($catData)-1; $i++) {  ?>

			<h2><?php echo $catData[$i]['category'] ?></h2>

			<?php // NOMINEES LOOP START
			
				for ($j = 0; $j < count($nomData)-1; $j++) { 
					
					if ($nomData[$j]['cat_id'] == $i+1) { ?>
						<p id="<?php echo 'nom'. $nomData[$j]['nom_id'].'p' ?>" > <?php echo $nomData[$j]['first_name'].' '.$nomData[$j]['last_name'].' '.$nomData[$j]['movie'].' ' ?></p>
				
			<?php }
			} // NOMINEES LOOP END ?>
		
<?php } // CATEGORIES LOOP END ?>



