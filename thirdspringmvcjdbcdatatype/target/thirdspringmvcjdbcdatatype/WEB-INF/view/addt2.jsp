<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	//	String path = request.getContextPath();
	//	System.out.println("path = " + path);
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
 -->
<meta name="keywords" content="springmvc,校验,日期控件,sql插入各种数据类型,bootstrapValidator,My97DatePicker,Bootstrap,validation">
<script>
	var path = "${pageContext.request.contextPath}";
</script>

<link href="assets/css/css1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="assets/js/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/addt2.js"></script>
<script type="text/javascript" src="assets/js/datepicker/WdatePicker.js"></script>


</head>

<body>

<div class="container1">

	<div class="zw">
		<div class="pianzuo"><a href="index">返回首页</a></div>
		<div class="kh"></div>
		<div class="juzhong">请添加</div>
		<div class="kh"></div>
	
		<div class="juzhong1">
		   <c:if test="${itemsErrorList != null }">
		         <c:forEach items="${itemsErrorList}" var="error" varStatus="index">
		             ${error.defaultMessage}
		         </c:forEach>
		   </c:if>

		</div>
		<div class="kh"></div>

		<div class="a2">
 			<form name="form1" action="doaddt2" method="post" onSubmit="return checkform();">
				<div class="a2g">
					<div class="a2_1">整数i1 smallint(5)：</div>
					<div class="a2_2"><input type="text" id="i1" name="i1" value=""/>
					<span id="i1span" class="warn1" ></span>
					</div>
				</div>
				<div class="a2g">
					<div class="a2_1">整数i2 tinyint(1)：</div>
					<div class="a2_2"><input type="text" id="i2" name="i2" value=""/>
					<span id="i2span" class="warn1" ></span>				
					</div>
				</div>

				<div class="a2g">
					<div class="a2_1">字符串s1 varchar(40)：</div>
					<div class="a2_2"><input type="text" id="s1" name="s1" value=""/>
					<span id="s1span" class="warn1" ></span>			
					</div>
				</div>

				<div class="a2g">
					<div class="a2_1">字符串s2 varchar(255)：</div>
					<div class="a2_2"><input type="text" id="s2" name="s2" value=""/>
					<span id="s2span" class="warn1" ></span>	
					</div>
				</div>

				<div class="a2g">
					<div class="a2_1_1">字符串s3 text：</div>
					<div class="a2_2_1">
						<textarea rows="5" cols="48" name="s3" id="s3"></textarea>
						<span id="s3span" class="warn1" ></span>	
					</div>
				</div>

				<div class="a2g">
					<div class="a2_1">日期date1 date：</div>
					<div class="a2_2">
					<input id="date1" name="date1" type="text" readonly="readonly"/>
					<img onclick="WdatePicker({el:'date1'})" src="assets/js/datepicker/skin/datePicker.gif" width="16" height="22" align="absmiddle">
					<span id="date1span" class="warn1" ></span>	
					</div>
				</div>

				<div class="a2g">
					<div class="a2_1">日期datetime1 datetime：</div>
					<div class="a2_2">
					<input id="datetime1" name="datetime1" type="text" readonly="readonly"/>
					<img onclick="WdatePicker({el:'datetime1',dateFmt:'yyyy-MM-dd HH:mm:ss'})" src="assets/js/datepicker/skin/datePicker.gif" width="16" height="22" align="absmiddle">
<!--
	原写法
<input type="text" id="datetime1" name="datetime1" readonly="readonly" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="Wdate" style="width:150px"/>
-->
						<span id="datetime1span" class="warn1" ></span>	
					</div>
				</div>

				<div class="a2g">
					<div class="a2_1">日期datetime2 timestamp：</div>
					<div class="a2_2">
					<input id="datetime2" name="datetime2" type="text" readonly="readonly"/>
					<img onclick="WdatePicker({el:'datetime2',dateFmt:'yyyy-MM-dd HH:mm:ss'})" src="assets/js/datepicker/skin/datePicker.gif" width="16" height="22" align="absmiddle">
<!--
	原写法
<input type="text" id="datetime2" name="datetime2" readonly="readonly" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="Wdate" style="width:150px"/>
-->
						<span id="datetime2span" class="warn1" ></span>	
					</div>
				</div>

				<div class="a2g">
					<div class="a2_1">定点数decimal1 decimal(12,4)：</div>
					<div class="a2_2">
						<input type="text" id="decimal1" name="decimal1" value=""/>
						<span id="decimal1span" class="warn1" ></span>	
					</div>
				</div>

				<div class="a2g">
					<div class="a2_1">双精度浮点数double1 double(12,4)：</div>
					<div class="a2_2">
						<input type="text" id="double1" name="double1" value=""/>
						<span id="double1span" class="warn1" ></span>	
					</div>
				</div>

				<div class="a2g">
					<div class="a2_1">单精度浮点数f1 float(12,4)：</div>
					<div class="a2_2">
						<input type="text" id="f1" name="f1" value=""/>
						<span id="f1span" class="warn1" ></span>	
					</div>
				</div>

				<div class="tijiao"><input type="submit" name="submit" value="提交"/></div>
			</form>
		</div>

	</div>

</div>

</body>

</html>