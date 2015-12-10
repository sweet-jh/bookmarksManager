<?php
if(isset($_POST["name"])&&isset($_POST["address"]))
{
  $name = $_POST["name"];
  $address = $_POST["address"];
  $con = mysql_connect("localhost","root","jinghan");
  if(!$con)
  {
    die('Could not connect: ' . mysql_error());
  }
  mysql_select_db("bookmarks",$con);
  $sqlcommand = "INSERT INTO bookmarklist(name,address) VALUES ('".$name."','".$address."')";
  $result = mysql_query($sqlcommand);
  if($result)
  {
    $result = 1;//成功为1  失败为0
  }
  else{ $result =0;}
  mysql_close($con);
  $json_result = json_encode(array("errcode"=>$result));
  echo $json_result;
}
else
{
  echo "输入信息不能为空";
  $result = 101;
  $json_result = json_encode(array("errcode"=>$result));
  echo $json_result;//输入不能为空
}
