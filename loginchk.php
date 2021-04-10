<?php  
if (!session_id()) session_start();
include("conn/conn.php");
if($_POST['submit']){
	if(!empty($_POST['username']) && (!empty($_POST['password']))){
		$username=str_replace(" ","",$_POST['username']);
		$sql="select * from tbl_user where user_fname='$username'";
		$query=mysqli_query($conn,$sql);
		$us=is_array($row=mysqli_fetch_array($query));
		$passworda=$_POST['password'];
		$ps=$us ? ($passworda)==$row['user_pass']:FALSE;
		if($ps){
			$_SESSION['userid']=$row['user_id'];
			echo "<script>alert('login success');window.location.href='index.php';</script>";	
		}
		else{
			echo "<script>alert('login error');window.location.href='login.php';</script>";
		}
	}else{
		echo "<script>alert('information empty');window.location.href='login.php';</script>";
	}
}
?>
