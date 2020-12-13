package org.timtroy.bean;  
   
import java.util.*; 
import java.sql.*;
import mysqlC.conn;
   
public class MyForm2 {  
    /*  The properties */  
    
    String name="";
    String add="";
    String contact="";
    String email="";
    String user="";
    String pass1="";
    String pass2="";
    String salary="";

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }
       
    public String getAdd() {
        return add;
    }

    public void setAdd(String add) {
        this.add = add;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPass1() {
        return pass1;
    }

    public void setPass1(String pass1) {
        this.pass1 = pass1;
    }

    public String getPass2() {
        return pass2;
    }

    public void setPass2(String pass2) {
        this.pass2 = pass2;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
     
     
    
   
    /* Errors */  
    public static final Integer ERR_NAME_BLANK = new Integer(1);
    public static final Integer ERR_ADD_BLANK = new Integer(2);
    public static final Integer ERR_CONTACT_BLANK = new Integer(3);
    public static final Integer ERR_CONTACT_INVALID = new Integer(4);
    public static final Integer ERR_CONTACT_LENGTH = new Integer(5);
    public static final Integer ERR_EMAIL_BLANK = new Integer(6);
    public static final Integer ERR_EMAIL_INVALID = new Integer(7);
    public static final Integer ERR_USER_BLANK = new Integer(8);
    public static final Integer ERR_USER_EXISTS = new Integer(9);
    public static final Integer ERR_PASS_BLANK = new Integer(10);
    public static final Integer ERR_PASS_LENGTH = new Integer(11);
    public static final Integer ERR_PASS_MATCH = new Integer(12);
    public static final Integer ERR_SALARY_BLANK = new Integer(13);
    public static final Integer ERR_SALARY_INVALID = new Integer(14);
    
    
    // Holds error messages for the properties  
    Map errorCodes = new HashMap();  
   
    // Maps error codes to textual messages.  
    // This map must be supplied by the object that instantiated this bean.  
    Map msgMap;  
    public void setErrorMessages(Map msgMap) {  
        this.msgMap = msgMap;  
    }  
   
    public String getErrorMessage(String propName) {  
        Integer code = (Integer) (errorCodes.get(propName));  
        if (code == null) {  
            return "";  
        } else if (msgMap != null) {  
            String msg = (String) msgMap.get(code);  
            if (msg != null) {  
                return msg;  
            }  
        }  
        return "Error";  
    }  
   
    /* Form validation and processing */  
    public boolean isValid() {  
        // Clear all errors  
        errorCodes.clear();  
   
        if(name.length()==0)
        {
        errorCodes.put("name", ERR_NAME_BLANK);
        }
        
        if(add.length()==0)
        {
        errorCodes.put("add", ERR_ADD_BLANK);
        }
        
        if(contact.length()==0)
        {
        errorCodes.put("contact", ERR_CONTACT_BLANK);
        }
        else
            if(contact.length()!=10)
            {
            errorCodes.put("contact", ERR_CONTACT_LENGTH);
            }
        try
        {
        long l=Long.parseLong(contact);
        }
        catch(NumberFormatException n)
        {
        errorCodes.put("contact", ERR_CONTACT_INVALID);
        }
         
        
        
        // Validate email  
        if (email.length() == 0) {  
            errorCodes.put("email", ERR_EMAIL_BLANK);  
        } else if (!email.matches(".+@.+\\..+")) {  
            errorCodes.put("email", ERR_EMAIL_INVALID);  
        }  
   
        // Validate zipcode  
        if (user.length() == 0) {  
            errorCodes.put("user", ERR_USER_BLANK);  
                     
        } 
        
        try
        {
        conn obj=new conn();
        Connection con=obj.c();
        Statement stm=con.createStatement();
        ResultSet rst=stm.executeQuery("select * from user where username='"+user+"'");
        if(rst.next())
        {
        errorCodes.put("user", ERR_USER_EXISTS);
        }
        }
        catch(Exception e)
        {}
        
        
        if(pass1.length()==0)
        {
        errorCodes.put("pass1", ERR_PASS_BLANK);
        }
        else
            if(pass1.length()<6)
            {
            errorCodes.put("pass1", ERR_PASS_LENGTH);
            }
        if(pass2.length()==0)
        {
        errorCodes.put("pass2", ERR_PASS_BLANK);
        }
        
        if(!(pass1.equals(pass2)))
        {
        errorCodes.put("pass2", ERR_PASS_MATCH);
        }
        if(salary.length()==0)
        {
        errorCodes.put("salary",ERR_SALARY_BLANK);
        }
        else
        {
        try
        {
        double sal=Double.parseDouble(salary);
        }
        catch(Exception e)
        {
        errorCodes.put("salary",ERR_SALARY_INVALID);
        }
        }
        // If no errors, form is valid  
        return errorCodes.size() == 0;  
    }  
   
    public boolean process() {  
        if (!isValid()) {  
            return false;  
        }  
   
        // Process form...  
   
        // Clear the form  
        
     name="";
     add="";
     contact="";
     email="";
     user="";
     pass1="";
     pass2="";
     salary="";
        errorCodes.clear();  
        return true;  
    }  
}  