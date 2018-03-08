	$(document).ready(function(){
		$("#form1").bootstrapValidator({
        message: '无效的值',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
		fields:{
			i1:{
				validators:{
					notEmpty: {message: '不能为空'},  
                    numeric: {message: '只能输入数字'},
					lessThan:{
						value:9999,
						message:'整数i1 smallint(5)不能超过9999'
					},
					greaterThan:{
						value:-9999,
						message:'整数i1 smallint(5) 需要大于 -9999'
					}
				}
			},
			i2:{
				validators:{
					notEmpty: {message: '不能为空'},  
                    numeric: {message: '只能输入数字'},
					lessThan:{
						value:120,
						message:'整数i2 tinyint(1) 不能超过120'
					},
					greaterThan:{
						value:-120,
						message:'整数i2 tinyint(1) 需要大于 -120'
					}
				}
			},			
		    s1:{
		    		validators:{
		    			notEmpty:{message:'不能为空'},
		    			stringLength:{
		    				min: 1,
		    				max: 40,
		    				message: '字符串s1 varchar(40)长度不能小于1位或超过40位'
		    			}
		    		}
		    },
		    s2:{
		    		validators:{
		    			notEmpty:{message:'不能为空'},
		    			stringLength:{
		    				min:1,
		    				max:255,
		    				message:'字符串s2 varchar(255)长度不能小于1位或超过255位'
		    			}
		    		}
		    },
		    s3:{
		    		validators:{
		    			notEmpty:{message:'不能为空'},
		    			stringLength:{
		    				min:1,
		    				message:'字符串s3 text长度不能小于1位'
		    			}
		    		}
		    },
		    date1:{
		    		validators:{
		    			notEmpty:{message:'不能为空'}
		    		}
		    },
		    datetime1:{
		    		validators:{
		    			notEmpty:{message:'不能为空'}
		    		}
		    },
		    datetime2:{
		    		validators:{
		    			notEmpty:{message:'不能为空'}
		    		}
		    },
		    decimal1:{
		   		validators:{
		   			notEmpty:{message:'不能为空'},
		   			numeric: {message: '只能输入数字'}
		   		}
		    },
		    double1:{
		   		validators:{
		   			notEmpty:{message:'不能为空'},
		   			numeric: {message: '只能输入数字'}
		   		}
		    },		    
		    f1:{
		   		validators:{
		   			notEmpty:{message:'不能为空'},
		   			numeric: {message: '只能输入数字'}
		   		}
		    },
		    s4:{
		    		validators:{
		    			notEmpty:{message:'不能为空'},
	                 stringLength: {
	                     min: 6,
	                     max: 30,
	                     message: 's4长度必须在6到30之间'
	                 },
	                 threshold :  6, //有6字符以上才发送ajax请求，（input中输入一个字符，插件会向服务器发送一次，设置限制，6字符以上才开始）		    		}
                     remote: {//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}  
                         url: path + '/remote4',//验证地址
                         message: 's4校验不正确',//提示消息
                         delay :  2000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax（默认输入一个字符，提交一次，服务器压力太大）
                         type: 'POST'//请求方式
                     }
                 }    
		    	}
		    

		    
		}
		})
		
	});
	
	
	/**
	 * 如果date1日期第一次校验失败，第二次校验的时候起到刷新的作用
	 * @param {Object} obj
	 */
	function checkDate1(obj) {
		if(obj.value!=null && obj.value!="" && obj.value!=undefined){
			$("#form1").data('bootstrapValidator').updateStatus('date1','NOT_VALIDATED', null).validateField('date1'); 
		}
	}
	
	/**
	 * 如果datetime1日期第一次校验失败，第二次校验的时候起到刷新的作用
	 * @param {Object} obj
	 */
	function checkDatetime1(obj) {
		if(obj.value!=null && obj.value!="" && obj.value!=undefined){
			$("#form1").data('bootstrapValidator').updateStatus('datetime1','NOT_VALIDATED', null).validateField('datetime1'); 
		}
	}
	
	/**
	 * 如果datetime2日期第一次校验失败，第二次校验的时候起到刷新的作用
	 * @param {Object} obj
	 */
	function checkDatetime2(obj) {
		if(obj.value!=null && obj.value!="" && obj.value!=undefined){
			$("#form1").data('bootstrapValidator').updateStatus('datetime2','NOT_VALIDATED', null).validateField('datetime2'); 
		}
	}
