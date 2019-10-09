package com.svs.util;

public class Utl_StringOperations {
	
	
	char c;
	
	public String gettingCapitalLetters(String name){
		String name1="";
		for(int i=1;i<name.length();i++){
		
			c=name.charAt(i);
			////////System.out.println("Character is\t"+c+"\n");
			if(Character.isUpperCase(c)){
				name1+=c;
				
			}else{
				
			}
			////////System.out.println("Employee Code\t"+c);
			////////System.out.println("Empid \t"+name1+"\n");
		}
		////////System.out.println("Character\t"+name1);
		return name1;
	}

}
