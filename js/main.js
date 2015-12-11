
var bookmarkscount;
var bookmarks;
var keyword="";
var url;
$(document).ready(function(){
  url = "http://localhost/bookmarksManager/php/getbookmark.php";
  $.getJSON(url,{ page: "1",keyword:keyword },function(data){
    bookmarkscount = data["count"];
    bookmarks=data["data"];
    drawing();
    drawpage();
  });

  $("#search").bind('input propertychange',function(){
    keyword=$("#search").val();
    $.getJSON(url,{ keyword: keyword, page: "1" },function(data){
      bookmarkscount = data["count"];
      bookmarks=data["data"];
      drawing();
      drawpage();
    });
  });

});

function pageskip(i)
{
  $.getJSON(url,{ page: i,keyword:keyword},function(data){
    //bookmarkscount = data["count"];
    bookmarks=data["data"];
    drawing();
  });
}

function drawing()
{
  $(".resultsum").html("搜索到"+bookmarkscount+"个结果");
  var totalstr = "";
  $.each(bookmarks,function(infoIndex,info){
    var oneitem = '<a href="'+info["address"]+'">'+info["name"]+'</a>';
    totalstr = totalstr+oneitem+'<input class="delete" value="删除" type="button" onclick="deleteitem('+info["id"]+')" />'+"</hr></br></br>";
  });
  $("#content").html(totalstr);
}

function drawpage()
{
  //画出页码
  var pagefoot = "";
  for(var i=1;i<bookmarkscount/10+1;i++)
  {
    pagefoot =pagefoot+'<span class="page" onclick="pageskip('+i+')">'+i+'</span>';
  }
  $(".pagenum").html(pagefoot);
}

function deleteitem(i)//删除某条记录
{
  if(confirm("确认删除这条记录吗？"))
  {
    $.getJSON("http://localhost/bookmarksManager/php/deletebookmark.php",{ id: i },function(data){

      if(data["errcode"]==1)
      {
        //alert("删除成功");
        $.getJSON(url,{ page: "1",keyword:keyword },function(data){
          bookmarkscount = data["count"];
          bookmarks=data["data"];
          drawing();
          drawpage();
        });
      }
      else {
        alert("删除失败！");
      }
    });
  }
}

function additem()//增加某条记录
{
  //alert("添加数据");
  $("div.addnewdialog").show();
}

function addconfirm()
{
  var name = $("input[name='newname']").val();
  var address = $("input[name='newaddress']").val();
  if(name!="" && address!="" )
  {
    alert(name+address);
    $("div.addnewdialog").hide();
    $.post("http://localhost/bookmarksManager/php/addbookmark.php",{name:name,address:address},function(){
      $.getJSON(url,{ page: "1",keyword:"" },function(data){
        bookmarkscount = data["count"];
        bookmarks=data["data"];
        drawing();
        drawpage();
      });
    });
  }
  else {
    $(".hint").show();
  }
}

function addquit(){
  $("div.addnewdialog").hide();
}
