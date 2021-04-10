<?php
if (!session_id()) session_start();
include("conn/conn.php");
?>
<!DOCTYPE html>
<html>
<head>
<title>Television Network</title>
<link href="css/index.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<header>
	<p>Television Network</p>
</header>
<?php 
$mv_id=$_GET['mv_id'];
$sql=mysqli_query($conn,"select * from tbl_movies where mv_id=$mv_id");
$res=mysqli_fetch_array($sql);
?>
<div class="mv">
	<video autoplay="autoplay" controls>
		<source src="video/<?php echo $res['mv_cover'];?>.mp4" type="video/mp4">
	</video>
</div>

</body>
</html>