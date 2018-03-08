package com.fustack.action;



import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.fustack.po.T2PO;
import com.fustack.service.T2Service;
import com.fustack.util.DateUtil;
import com.fustack.vo.T2VO;

@Controller
public class T2Cotroller {
	
	@Autowired
	private T2Service service;
	
	@RequestMapping("/")
	public String Index() {
		return "index";
	}	
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/addt2")
	public String addT2() {
		return "addt2";
	}
	
	@RequestMapping("/bsaddt2")
	public String bsaddT2() {
		return "bsaddt2";
	}
	
	@RequestMapping("/doaddt2")
	public String doaddT2(@Validated T2VO vo,BindingResult bindingResult,Model model) {//@ModelAttribute("vo") T2VO vo @Valid @ModelAttribute

		
        if (bindingResult.hasErrors()) {
            List<ObjectError> itemsErrorList = bindingResult.getAllErrors();
            for(ObjectError objectError:itemsErrorList){
                System.out.println(objectError.getDefaultMessage());
                
            }    
            model.addAttribute("itemsErrorList", itemsErrorList);
            
            return "addt2";

        }
        
		
		T2PO bean = new T2PO();
		
		 
		bean.setI1(Integer.parseInt(vo.getI1()));
		bean.setI2(Integer.parseInt(vo.getI2()));
		bean.setS1(vo.getS1());
		bean.setS2(vo.getS2());
		bean.setS3(vo.getS3());
		bean.setDate1(new java.sql.Date(DateUtil.StrToDate(vo.getDate1()).getTime()));
		bean.setDatetime1(new java.sql.Timestamp(DateUtil.StrToDateTime(vo.getDatetime1()).getTime()));
		bean.setDatetime2(new java.sql.Timestamp(DateUtil.StrToDateTime(vo.getDatetime2()).getTime()));
		bean.setDecimal1(new BigDecimal(vo.getDecimal1()));
		bean.setDouble1(new Double(vo.getDouble1()));
		bean.setF1(new Float(vo.getF1()));

		
		long id = service.addT2(bean);
		
		model.addAttribute("id", id);
		
        
        return "addt2result";
	}

	
	@RequestMapping("/gett2")
	public String getT2(String id,Model model) {
		
		T2PO bean = new T2PO();
		T2PO bean1 = new T2PO();
		bean1.setId(Long.parseLong(id));
		bean = service.getT2PO(bean1);
		
		model.addAttribute("bean",bean);
		
		
		return "gett2";
	}
	
	@RequestMapping(value="/remote4",produces="text/html;charset=UTF-8")
	@ResponseBody
	public String remoteValidator4(String s4) {
		
		System.out.println("s4 = " + s4);
		
		boolean result = false;
		if(!StringUtils.isEmpty(s4)) {
			if(s4.equals("admin中文测试")) {
				result = true;
			}
		}
		
		if(result) {
			System.out.println("合法数据");
		}else {
			System.out.println("非法数据");
		}
			
		
		Map<String,Boolean> map1 = new HashMap<String,Boolean>();
		map1.put("valid",result);
		
		String s = JSON.toJSONString(map1);
		
		return s;
	}

}
