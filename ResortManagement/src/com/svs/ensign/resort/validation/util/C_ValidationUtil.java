package com.svs.ensign.resort.validation.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class C_ValidationUtil {
	
	private boolean isCurrect=false;
	
	public boolean isAplhabet(String alphabet){
		char[] c=alphabet.toCharArray();
		for(char c1:c){
			if(!Character.isLetter(c1)){
				isCurrect=false;
			}else{
				isCurrect=true;
			}
		}
		return isCurrect;
	}
	
	public boolean isAlphaNumeric(String alphanumeric){
		String pattern= "^[a-zA-Z0-9]*$";
        if(alphanumeric.matches(pattern)){
            return true;
        }else{
        	return false;
        }
	}
	public boolean isNumeric(String numeric){
		String pattern="^[0-9]*$";
		if(numeric.matches(pattern)){
			return true;
		}
		else{
			return false;
		}
	}
public boolean getMobileNo(String mbno){
	
	if(mbno.length()==10){
		return true;
	}else{
		return false;
	}

	
	
}

public boolean isLandLine(String landline){
	Pattern pattern = Pattern.compile("\\d{3-7}-\\d{5-10}");
    Matcher matcher = pattern.matcher(landline);

    if (matcher.matches()) {
  	  return true;
  	  
    }
    else
    {
  	  ////System.out.println("Phone Number must be in the form XXX-XXXXXXX");
  	  return false;
    }
}

public boolean isEmail(String emailid){
	Pattern p1 = Pattern.compile(".+@.+\\.[a-z]+");

    Matcher m = p1.matcher(emailid);
 
    //check  whether any match is found 

    boolean matchFound = m.matches();

    if (!matchFound)
    {
     return false;
    }else{
    	return true;
    }
}

public boolean isMinAndMaxLengthForty(String name){
	
	if((name.length()>2)&&(name.length()<=40)){
		return true;
	}else{
		return false;
	}
}


}
