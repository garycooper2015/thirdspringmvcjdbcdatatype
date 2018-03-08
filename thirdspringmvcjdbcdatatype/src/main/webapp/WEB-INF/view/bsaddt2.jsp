<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
		String path = request.getContextPath();
	//	System.out.println("path = " + path);
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<meta name="keywords" content="springmvc,校验,日期控件,sql插入各种数据类型,bootstrapValidator,My97DatePicker,Bootstrap,validation">
    <title></title>

    <!-- Bootstrap core CSS -->
    <link href="<%=path%>/assets/css/bootstrap.min.css" rel="stylesheet">


    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="<%=path%>/assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
	<script>
		var path = "${pageContext.request.contextPath}";
	</script>
	
	<script type="text/javascript" src="<%=path%>/assets/js/jquery.min.js"></script>

	<!-- 日期控件 -->
	<script type="text/javascript" src="<%=path%>/assets/js/datepicker/WdatePicker.js"></script>

	<!-- bootstrapValidator 验证 并且需要把bootstrapValidator的文件夹fonts放到和js css同级的目录下，否则对勾 叉叉出不来  -->
   	<link href="<%=path%>/assets/css/bootstrapValidator.css" rel="stylesheet" />
   	<script type="text/javascript" src="<%=path%>/assets/js/bootstrapValidator.js"></script>

	<!-- 自定义js -->
	<script type="text/javascript" src="<%=path%>/assets/js/bootstrapvalidator_addt2.js"></script>
    <!-- Custom styles for this template 自定义css-->
    <link href="<%=path%>/assets/css/css2.css" rel="stylesheet" />
	
	<script type="text/javascript">
	
		var path = "<%=path%>";
			
			<!-- "${pageContext.request.contextPath}"; -->
	
	</script>
	
  </head>

<body>

    <div class="container">
		<ul class="nav nav-pills">
			  <li role="presentation" class="active"><a href="index">返回首页</a></li>
		</ul>	
					
		<div class="ch1">
	    		<div class="row">
	    			<div class="col-sm-5"></div>
	    			<div class="col-sm-3"><h3>请添加</h3></div>
	    			<div class="col-sm-4"></div>
	    		</div>
    		</div>
		<form id="form1" class="form-horizontal" name="form1"  action="doaddt2" method="post" >
    		<!-- onSubmit="return checkform();" -->
                            
		<div class="col-sm-2"></div>
		<div class="form-group">
			<label  for="i1l" class="col-sm-3 control-label,text-left">整数i1 smallint(5):</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="i1" name="i1" placeholder="1234" required autofocus>
			</div>
		</div>
		<div class="col-sm-2"></div>
		<div class="form-group">
			<label for="i2l" class="col-sm-3 control-label,text-left">整数i2 tinyint(1)：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="i2" name="i2" placeholder="1" required>
			</div>
		</div>

		<div class="col-sm-2"></div>
		<div class="form-group">
			<label for="s1l" class="col-sm-3 control-label,text-left">字符串s1 varchar(40)：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="s1" name="s1" placeholder="abc汉字" required>
			</div>
		</div>

		<div class="col-sm-2"></div>
		<div class="form-group">
			<label for="s2l" class="col-sm-3 control-label,text-left">字符串s2 varchar(255)：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="s2" name="s2" placeholder="abc汉字" required>
			</div>
		</div>
		<div class="col-sm-2"></div>
		<div class="form-group">
			<label for="s3l" class="col-sm-3 control-label,text-left">字符串s3 text：</label>
			<div class="col-sm-4">
				<textarea class="form-control" rows="3" id="s3" name="s3" placeholder="abc汉字" required></textarea>
			</div>
		</div>
		
		<div class="col-sm-2"></div>
		<div class="form-group">
			<label for="date1l" class="col-sm-3 control-label,text-left">日期date1 date：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="date1" name="date1" placeholder="点击该输入框选择日期..." readonly required
					onfocus="WdatePicker({el:'date1',skin:'whyGreen',onpicked:checkDate1(this)})" style="height:35px;">
			</div>
			<!--
			<div class="col-sm-2,text-left">
				<img onclick="WdatePicker({el:'date1',onpicked:checkDate1()})" src="assets/js/datepicker/skin/datePicker.gif" width="25" height="40" align="absmiddle">
			</div>
			-->
		</div>
		
		<div class="col-sm-2"></div>
		<div class="form-group">
			<label for="datetime1l" class="col-sm-3 control-label,text-left">日期datetime1 datetime：</label>
			<div class="col-sm-3">
				<!-- 
					skin 皮肤
					dateFmt 格式
					onpicked:checkDatetime1 刷新警告
					maxDate datetime1 必须小于 datetime2 
				-->
				<input type="text" class="form-control" id="datetime1" name="datetime1" placeholder="点击该输入框选择时间..." readonly required
					onfocus="WdatePicker({el:'datetime1',skin:'blue',dateFmt:'yyyy-MM-dd HH:mm:ss',onpicked:checkDatetime1(this),maxDate:'#F{$dp.$D(\'datetime2\')}'})" style="height:35px;">
			</div>
			<!-- 
				<input type="text" class="form-control" id="datetime1" name="datetime1" placeholder="点击右侧选择时间..." readonly required>
				
			<div class="col-sm-2,text-left">
				<img onclick="WdatePicker({el:'datetime1',dateFmt:'yyyy-MM-dd HH:mm:ss'})" src="assets/js/datepicker/skin/datePicker.gif" width="25" height="40" align="absmiddle">
			</div>
			-->
		</div>

		<div class="col-sm-2"></div>
		<div class="form-group">
			<label for="datetime2l" class="col-sm-3 control-label,text-left">日期datetime2 timestamp：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="datetime2" name="datetime2" placeholder="点击该输入框选择时间..." readonly required
					onfocus="WdatePicker({el:'datetime2',skin:'twoer',dateFmt:'yyyy-MM-dd HH:mm:ss',onpicked:checkDatetime2(this),minDate:'#F{$dp.$D(\'datetime1\')}'})" style="height:35px;">
			</div>
			
			
<!-- 
				<input type="text" class="form-control" id="datetime2" name="datetime2" placeholder="点击右侧选择时间..." readonly required>

<div class="col-sm-2,text-left">
				<img onclick="WdatePicker({el:'datetime2',dateFmt:'yyyy-MM-dd HH:mm:ss'})" src="assets/js/datepicker/skin/datePicker.gif" width="25" height="40" align="absmiddle">
			</div>
-->

		</div>

		<div class="col-sm-2"></div>
		<div class="form-group">
			<label for="decimal1l" class="col-sm-3 control-label,text-left">定点数decimal1 decimal(12,4)：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="decimal1" name="decimal1" placeholder="请填写数字" required>
			</div>
		</div>

		<div class="col-sm-2"></div>
		<div class="form-group">
			<label for="double1l" class="col-sm-3 control-label,text-left">双精度浮点数double1 double(12,4)：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="double1" name="double1" placeholder="请填写数字" required>
			</div>
		</div>

		<div class="col-sm-2"></div>
		<div class="form-group">
			<label for="f1l" class="col-sm-3 control-label,text-left">单精度浮点数f1 float(12,4)：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="f1" name="f1" placeholder="请填写数字" required>
			</div>
		</div>
		
		<div class="col-sm-2"></div>
		<div class="form-group">
			<label for="s4l" class="col-sm-3 control-label,text-left">和后台交互验证示例：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="s4" name="s4" placeholder="如果输入'admin中文测试'返回true,否则提示警告" required>
			</div>
		</div>
		
		
	    		<div class="row">
	    			<div class="col-sm-5"></div>
	    			<div class="col-sm-3"><input class="btn btn-default" type="submit" value="提交"></div>
	    			<div class="col-sm-4"></div>
	    		</div>

		</form>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="<%=path%>/assets/js/ie10-viewport-bug-workaround.js"></script>

</body>



</html>