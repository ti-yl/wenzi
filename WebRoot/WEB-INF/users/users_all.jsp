<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>js实现div自动滚动</title>
<style>
</style>

</head>

<body>
	<center>
		 <style type="text/css">

        * {
            margin: 0;
            padding: 0;
        }

        .bg {
            background: #345;
            height:240px;
            margin: 0 auto;
            font-family: "微软雅黑";
            color: #9cf;
        }

        #box {
            height:200px;
            overflow: hidden;
        }


    </style>

 
<table cellspacing="0" cellspacing="0px" width="100%" border="1px"  style="border-collapse: collapse; border-color: red;">
    <tbody
            style="background: black; color: #FFFBE2; font-weight: bold; font-size: 11; text-align: center;">
         <tr>
						<td width="10%">id</td>
						<td width="20%">name</td>
						<td width="20%">loginname</td>
						<td width="15%">password</td>
						<td width="20%">操作</td>
						<td width="15%">操作</td>
					</tr>
    </tbody>
</table>
<div class="bg" width="100%";  >

    <div id="box" width="100%";>


 <table id="con1" width="100%" border="1px" cellspacing="0px" style="border-collapse: collapse; border-color: red;">
    <tbody style="text-align: center;">
						<c:forEach items="${users}" var="u">
							<tr>
								<td width="10%"><span style="color: yellow;">${u.id }</span></td>
								<td width="20%"><span style="color: yellow;">${u.name }</span></td>
								<td width="20%"><span style="color: white;">${u.loginname }</span></td>
								<td width="15%"><span style="color: red;">${u.password }</span></td>
								<td width="20%">&nbsp;&nbsp;
									<button onclick="deleteuser(${u.id});">删除</button>&nbsp;&nbsp;&nbsp;
									<input type="button" value="修改"
									onclick="javascrtpt:window.location.href='../users/toupdate.do?id=${u.id}'" />
									&nbsp;&nbsp;&nbsp;
									<button
										onclick="javascrtpt:window.location.href='../users/toadd.do'" />新增用户
								</td>
								<td style="color: yellow;" width="15%">備注</td>
							</tr>
						</c:forEach>
					</tbody>
        </table>
        <table id="con2" width="100%" border="1px" cellspacing="0px" style="border-collapse: collapse; border-color: red;"></table>

    </div>



   <div style="color: #FFFBE2; font-size: 13px;">

				<table cellspacing="0" width="100%" border="1px"
					style="border-color: red;">
					<tbody style="float: right;">
						<tr>
							<td width="100%" style="border: 0px;"><jsp:useBean id="time"
									class="java.util.Date" /><strong>时间：</strong> <fmt:formatDate
									pattern="yyyy-MM-dd hh:mm " value="<%=time%>" /> &nbsp;&nbsp;<span>总成交量：<span
									style="color: red">0</span>&nbsp;&nbsp;总成交金额：0&nbsp;&nbsp;&nbsp;
							</span></td>
						</tr>
					</tbody>
				</table>



    </div>

</div>

	</center>
	
	<script type="text/javascript">
     
    function deleteuser(id) {
		var r = window.confirm("确定要删除此用户吗？");
		if (r) {
			window.location.href = "../users/delete.do?id=" + id;
		}

	}
    
    
    
    var box = document.getElementById('box'),   //总的div

    con1 = document.getElementById('con1'),  // 滚动的内容

    con2 = document.getElementById('con2'),  //目的是循环播放

    aLi = document.getElementsByTagName('tr'),

    h = 50,// 一次滚动的行高

    timer,//计时器

    timeo,

    speed = 30,//速度

    delay = 0;//两次滚动之间的时间间隔

con2.innerHTML = con1.innerHTML;

//开始滚动
function startMove() {

box.scrollTop++

timer = setInterval(judge, speed)

}

function judge() {

if (box.scrollTop % h == 0) {   //如果滚动条到底部

    clearInterval(timer)   //清除计时器

    timeo = setTimeout(startMove, delay)

}

else {

    box.scrollTop++  //继续滚动

}

if (box.scrollTop >= con1.offsetHeight) {  //第一个div的内容滚动结束

    box.scrollTop = 0

}

}

var timeo = setTimeout(startMove, delay)//初始化

var flag = 0

for (var i = 0; i < aLi.length; i++) {    //ali[i] 是指每个tr
aLi[i].onmouseover = function () {   //鼠标移动到每个tr时   改变样式  暂停
  /*  this.style.color = "yellow";*/
    clearInterval(timer);
    clearTimeout(timeo);

}
aLi[i].onmouseout = function () {   //鼠标移出时    释放样式  开始移动
    this.style.color = "";
    startMove();

}
}
        
        
       
       
    </script>
</body>
</html>





