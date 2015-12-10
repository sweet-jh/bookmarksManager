<?php
$con = mysql_connect("localhost","root","jinghan");
if(!$con)
{
  die('Could not connect: ' . mysql_error());
}
mysql_select_db("bookmarks",$con);

$page=$_GET["page"];//查询页数
$page_data=($page-1)*10;
if(isset($_GET["keyword"])&& !empty($_GET["keyword"]))
{
  $keyword=$_GET["keyword"];//查询关键字
  $sqlcommand="SELECT name,id,address FROM bookmarklist WHERE name REGEXP "."'".$keyword."'"." LIMIT ".$page_data.",10";
  $sqlcommandcount="SELECT COUNT(*) FROM bookmarklist WHERE name REGEXP "."'".$keyword."'";
}
else
{
  $sqlcommand="SELECT name,id,address FROM bookmarklist LIMIT ".$page_data.",10";
  $sqlcommandcount="SELECT COUNT(*) FROM bookmarklist";
}

$result = mysql_query($sqlcommand);
$countresult = mysql_query($sqlcommandcount);
$array_result=array();
mysql_close($con);

while($row = mysql_fetch_array($result,MYSQL_ASSOC))//MYSQL_ASSOC参数表示键以数据库的字段名为准
  {
    $array_result[]=$row;
  }

while($row = mysql_fetch_array($countresult,MYSQL_NUM))//MYSQL_ASSOC参数表示键以数据库的字段名为准
  {
    $countnum=$row[0];
  }

  $json_result=json_encode(array(
    "count"=>$countnum,
    "data"=>$array_result
  ));
  echo $json_result;
 ?>
