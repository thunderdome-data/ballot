<?php
	
	require_once 'Connection.class.php';
	$connection = new Connection('featuresupdate','features');
	

// vars to hold arrays of data
$data;
$catInfo;

## get result by category
$sql=mysql_query("SELECT category, first_name, last_name, movie, MAX(votes)
					FROM oscars14_nominees
					GROUP BY category
					ORDER BY category asc
					LIMIT 0 , 30");
while($data[]=mysql_fetch_array($sql));

$sql=mysql_query("SELECT * FROM oscars14_categories
					ORDER BY catID asc");
while($catInfo[]=mysql_fetch_array($sql));


 ?>

<table id="compare_votes">

	<?php
	
		for ($i = 0; $i < count($data)-1; $i++) { ?>
		
			<tr><td><?php echo $catInfo[$i]['category'] ?></td><td><?php echo $data[$i]['first_name'].' '.$data[$i]['last_name'].' ('.$data[$i]['movie'].')' ?></td><td></td></tr>
		
		<?php }
	
	?>

</table>

