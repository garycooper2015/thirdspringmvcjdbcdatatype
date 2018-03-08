	function checkform() {
		//清空警告信息
		clearinnerHTML();

		/**
		 * 校验整数
		 */
		var i1 = document.getElementById("i1").value;
		var i1span = document.getElementById("i1span");
		
		var i2 = document.getElementById("i2").value;
		var i2span = document.getElementById("i2span");
		
		var s1 = document.getElementById("s1").value;
		var s1span = document.getElementById("s1span");

		var s2 = document.getElementById("s2").value;
		var s2span = document.getElementById("s2span");
		
		var s3 = document.getElementById("s3").value;
		var s3span = document.getElementById("s3span");

		var date1 = document.getElementById("date1").value;
		var date1span = document.getElementById("date1span");

		var datetime1 = document.getElementById("datetime1").value;
		var datetime1span = document.getElementById("datetime1span");
		
		var datetime2 = document.getElementById("datetime2").value;
		var datetime2span = document.getElementById("datetime2span");

		var decimal1 = document.getElementById("decimal1").value;
		var decimal1span = document.getElementById("decimal1span");

		var double1 = document.getElementById("double1").value;
		var double1span = document.getElementById("double1span");
		
		var f1 = document.getElementById("f1").value;
		var f1span = document.getElementById("f1span");

		if(isNull(i1)){
			i1span.innerHTML = '整数i1不能为空';
			return false;
		}			
		
		if(isNaN(i1)){
			i1span.innerHTML = '整数i1 请输入数字';
			return false;
		}		
		
		if(i1.length > 5){
			i1span.innerHTML = '整数i1 不能大于5位数';
			return false;
		}			


		if(isNull(i2)){
			i2span.innerHTML = '整数i2不能为空';
			return false;
		}			

		if(isNaN(i2)){
			i2span.innerHTML = '整数i1 请输入数字';
			return false;
		}		
		
		if(i2.length > 1){
			i2span.innerHTML = '整数i2 不能大于1位数';
			return false;
		}
		
		if(isNull(s1)){
			s1span.innerHTML = '字符串s1不能为空';
			return false;
		}
		
		if(s1.length > 40){
			s1span.innerHTML = '字符串s1长度不能超过40个字符';
			return false;
		}		

		if(isNull(s2)){
			s2span.innerHTML = '字符串s2不能为空';
			return false;
		}
		
		if(s2.length > 40){
			s2span.innerHTML = '字符串s2长度不能超过255个字符';
			return false;
		}	
		
		if(isNull(s3)){
			s3span.innerHTML = '字符串s3不能为空';
			return false;
		}		
		
		if(isNull(date1)){
			//如果等于true说明是无效的日期
			date1span.innerHTML = '日期date1 请输入正确的日期';
			return false;
		}
		
		if(isNull(datetime1)){
			//如果等于true说明是无效的日期
			datetime1span.innerHTML = '日期datetime1 请输入正确的日期';
			return false;
		}

		if(isNull(datetime2)){
			//如果等于true说明是无效的日期
			datetime2span.innerHTML = '日期datetime2 请输入正确的日期';
			return false;
		}
		
		if(isNull(decimal1)){
			decimal1span.innerHTML = '定点数decimal1不能为空';
			return false;
		}			
		
		if(isNaN(decimal1)){
			decimal1span.innerHTML = '定点数decimal1 请输入数字';
			return false;
		}		
		
		if(decimal1.length > 13){
			decimal1span.innerHTML = '定点数decimal1 不能大于12位数';
			return false;
		}			
		
		if(isNull(double1)){
			double1span.innerHTML = '双精度浮点数double1不能为空';
			return false;
		}			
		
		if(isNaN(double1)){
			double1span.innerHTML = '双精度浮点数double1 请输入数字';
			return false;
		}		
		
		if(double1.length > 13){
			double1span.innerHTML = '双精度浮点数double1 不能大于12位数';
			return false;
		}			
		
		if(isNull(f1)){
			f1span.innerHTML = '单精度浮点数f1不能为空';
			return false;
		}			
		
		if(isNaN(f1)){
			f1span.innerHTML = '单精度浮点数f1 请输入数字';
			return false;
		}		
		
		if(f1.length > 13){
			f1span.innerHTML = '单精度浮点数f1 不能大于12位数';
			return false;
		}			
		
		
		
		
		return true;
		
	}
	
	/**
	 * 判断是否为空
	 * @param str
	 * @returns
	 */
	function isNull(str){
		if ( str == "" ) return true;
		var regu = "^[ ]+$";
		var re = new RegExp(regu);
		return re.test(str);
	}
	
	/**
	 * 清空警告信息
	 */
	function clearinnerHTML(){
			i1span.innerHTML = '';
			i2span.innerHTML = '';
			s1span.innerHTML = '';
			s2span.innerHTML = '';			
			s3span.innerHTML = '';	
			date1span.innerHTML = '';
			datetime1span.innerHTML = '';
			datetime2span.innerHTML = '';
			decimal1span.innerHTML = '';
			double1span.innerHTML = '';
			f1span.innerHTML = '';
	}

