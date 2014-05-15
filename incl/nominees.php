<?php

	require_once 'Connection.class.php';
	$connection = new Connection('featuresupdate','features');
	$cat_id = mysqli_real_escape_string($connection->con,$_GET['cat_id']);
	$data;
	$catInfo;

	$sql = "SELECT * FROM oscars14_nominees where cat_id=$cat_id";
	$results = mysqli_query($connection->con,$sql);
	while($data[]=mysqli_fetch_array($results));
	
	$sql = "SELECT * FROM oscars14_categories where cat_id=$cat_id";
	$results = mysqli_query($connection->con,$sql);
	while($catInfo[]=mysqli_fetch_array($results));


$totalVotes = 0;

	for ($i = 0; $i < count($data)-1; $i++) {
		
		$totalVotes += $data[$i]['votes'];
	
	}

$winPerc;

?>
   <h2>NOMINEES FOR: Best <?php echo $catInfo[0]['category'] ?></h2>
   <p class="crit"><?php echo $catInfo[0]['description'] ?></p>
   <p class="crit">Last year's winner: <?php echo $catInfo[0]['lastwinner'] ?></p>
	<ul class="endscreen_thumb">
		
		<?php 
			
			for ($i = 0; $i < count($data)-1; $i++) { 
				
				if ($data[$i]['votes'] == 0) {
					$winPerc = 0;
				} else {
					$winPerc = round(($data[$i]['votes'] * 100) / $totalVotes);
				}
				
				?>
			
				<li id="nom<?php echo $data[$i]['nom_id'] ?>">
				<a href="javascript: void(0);" alt="" class="nomSelect" rel="popover" data-content="<?php echo $data[$i]['blurb'] ?>" data-original-title='<?php 
				if ($data[$i]["first_name"] != '') { echo $data[$i]["first_name"] . ' ' . $data[$i]["last_name"]; } else {  echo $data[$i]["movie"]; } ?>'><img src="img/<?php echo $data[$i]['image'] ?>" /></a><p class="end_thumb"><?php if ($data[$i]['first_name'] != '') { echo $data[$i]['first_name'] . ' ' . $data[$i]['last_name']. '<br /><span class="movieName">'.$data[$i]['movie'].'</span>'; } else { echo $data[$i]['movie']; } ?></p>
				<!--THIS IS FOR WHEN VOTING ENDS <p class="votePerc"><span class="percent"><?php echo $winPerc ?>%</span><br />of users' votes</p>-->
				<a class="vote_btn btn btn-small" id="<?php echo $data[$i]['nom_id'] ?>" href="javascript:void(0);">VOTE</a>  <a class="readmore" href="<?php echo $data[$i]['story_links'] ?>" target="new" ><?php if ($data[$i]['cat_id'] == 10 ) { echo "Listen"; } else { echo "Read more"; } ?></a>
				</li>
			
		<?php } ?>

	</ul>

<script>
$(function () { 
	// ADDS POPOVER
	$(".nomSelect").popover({trigger:'hover', placement: 'top', html: true });
});
</script>


	

