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
		<div class="juzhong">明细</div>
		<div class="kh"></div>
	

		<div class="a2">

 				<div class="a2g">
					<div class="a2_1">主键ID：</div>
					<div class="a2_2">${bean.id}
					</div>
				</div>
		
 				<div class="a2g">
					<div class="a2_1">整数i1 smallint(5)：</div>
					<div class="a2_2">${bean.i1}
					</div>
				</div>
 
				<div class="a2g">
					<div class="a2_1">整数i2 tinyint(1)：</div>
					<div class="a2_2">${bean.i2}
					</div>
				</div>

				<div class="a2g">
					<div class="a2_1">字符串s1 varchar(40)：</div>
					<div class="a2_2">${bean.s1}
					</div>
				</div>
				<div class="a2g">
					<div class="a2_1">字符串s2 varchar(255)：</div>
					<div class="a2_2">${bean.s2}
					</div>
				</div>

				<div class="a2g">
					<div class="a2_1_1">字符串s3 text：</div>
					<div class="a2_2_1">
						<textarea rows="5" cols="48" name="s3" id="s3" readonly="readonly">${bean.s3}</textarea>
					</div>
				</div>


				<div class="a2g">
					<div class="a2_1">日期date1 date：</div>
					<div class="a2_2">
					${bean.date1}
					</div>
				</div>
				<div class="a2g">
					<div class="a2_1">日期datetime1 datetime：</div>
					<div class="a2_2">
						<fmt:formatDate value="${bean.datetime1}" pattern="yyyy-MM-dd HH:mm:ss"/>
					</div>
				</div>


				<div class="a2g">
					<div class="a2_1">日期datetime2 timestamp：</div>
					<div class="a2_2">
						<fmt:formatDate value="${bean.datetime2}" pattern="yyyy-MM-dd HH:mm:ss"/>
					</div>
				</div>

				<div class="a2g">
					<div class="a2_1">定点数decimal1 decimal(12,4)：</div>
					<div class="a2_2">
						${bean.decimal1}
					</div>
				</div>
				<div class="a2g">
					<div class="a2_1">双精度浮点数double1 double(12,4)：</div>
					<div class="a2_2">
						${bean.double1}
					</div>
				</div>

				<div class="a2g">
					<div class="a2_1">单精度浮点数f1 float(12,4)：</div>
					<div class="a2_2">
						${bean.f1}
					</div>
				</div>

		</div>

	</div>

</div>

</body>

</html>