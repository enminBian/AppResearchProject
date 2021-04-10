<?php
if (!session_id()) session_start();
include("conn/conn.php");
if(empty($_SESSION['userid'])){
	echo "<script>alert('请先登录');window.location.href='login.php';</script>";
}
?>
<!DOCTYPE html>
<head>
<title>Television Network</title>
<link href="css/index.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>

<header>
	<p>Television Network</p>
</header>

<main>
	<?php
	$sql=mysqli_query($conn,"select * from tbl_movies  order by mv_id asc");
	while($res=mysqli_fetch_array($sql)){
	?>
	<div class="per">
		<a href="mv.php?mv_id=<?php echo $res['mv_id'];?>">
			<div class="images">
				<p><img src="images/<?php echo $res['mv_cover'];?>.jpg" alt=""></p>	
			</div>
			<div class="mvtitle">
				<p><?php echo $res['mv_title'];?></p>
			</div>
		</a>	
	</div>
	<?php
	}
	?>

</mian>

<footer>

</footer>



</body>
</html>
