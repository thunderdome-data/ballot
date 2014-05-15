<?php
	
require_once 'Connection.class.php';
$connection = new Connection('featuresupdate','features');

$nom_id = mysqli_real_escape_string($connection->con,$_GET['nom_id']);
$cat_id = mysqli_real_escape_string($connection->con,$_GET['cat_id']);

// arrays to hold data
$data;

	
	$sql = "UPDATE oscars14_nominees
				SET	votes = votes + 1
				WHERE nom_id = '$nom_id'";
	$results = mysqli_query($connection->con,$sql);
	
	$sql = "SELECT * FROM oscars14_nominees 
				where cat_id='$cat_id'
				order by votes desc";
	$results = mysqli_query($connection->con,$sql);
	while($data[]=mysqli_fetch_array($results));
	

$totalVotes = 0;

	for ($i = 0; $i < count($data)-1; $i++) {
		
		$totalVotes += $data[$i]['votes'];
	
	}

//$winPerc = floor($data[0]['votes'] * 100 / $totalVotes);

?>

			<div class="span4">
				<div class="closebtn">close [x]</div>
				<h4 id="resultCatName">User Poll Results: Best XXXXX</h4>
				<?php 
					for ($i = 0; $i < count($data)-1; $i++) { 
						
						$barPerc = $data[$i]['votes'] * 400 / $totalVotes; ?>
						
					 	<div id="results_list">
							
							<div class="bwrap" id="nom<?php echo $data[$i]['nom_id'] ?>"> 
								<strong><?php if ($data[$i]['first_name'] != '') { echo $data[$i]['first_name'] . ' ' . $data[$i]['last_name']. ' '; }  ?> <?php echo $data[$i]['movie'] ?></strong>
								<div class="bar">
									 <div class="color" title="<?php echo $barPerc ?>"></div>
								</div>
								<span><?php echo $data[$i]['votes'] ?> Votes</span>
						  </div> <!-- end wrap -->
								 
						</div>
									
					<?php } ?>
			</div>

