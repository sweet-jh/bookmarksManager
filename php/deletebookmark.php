<?php
if(isset($_GET["id"]))
{
  $bookmarkid = $_GET["id"];
  $con = mysql_connect("localhost","root","jinghan");
  if(!$con)
  {
    die('Could not connect: ' . mysql_error());
  }
  mysql_select_db("bookmarks",$con);
  $sqlcommand = "DELETE FROM bookmarklist WHERE id = ".$bookmarkid;
  $result = mysql_query($sqlcommand);
  if($result)
  {
    $result = 1;
  }
  else{ $result =0;}
  mysql_close($con);
  $json_result = json_encode(array("errcode"=>$result));
  echo $json_result;
}
else
{
  $result =0;
  echo "删除数据id不存在";
  $json_result = json_encode(array("errcode"=>$result));
  echo $json_result;
}










 ?>
