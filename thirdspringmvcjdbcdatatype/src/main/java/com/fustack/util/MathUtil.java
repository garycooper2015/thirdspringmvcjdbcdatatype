package com.fustack.util;

public class MathUtil {
	
	/**  
     * 使用java正则表达式去掉多余的0  
     * @param s  
     * @return   
     */    
    public static String subZero(String s){    
        if(s.indexOf(".") > 0){    
            s = s.replaceAll("0+?$", "");//去掉多余的0    
 //           s = s.replaceAll("[.]$", "");//如最后一位是.则去掉    
        }    
        return s;    
    } 	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String s = "2345555.2500";
		System.out.println("s = " + MathUtil.subZero(s));
		
		double   f   =  34.232323;  

	}
	
	

}
