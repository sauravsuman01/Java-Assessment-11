package com.test;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DetailsDao {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");  
			System.out.println("Connected");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/perfios", "root", "password");  
        }catch(Exception e){
        	e.printStackTrace();
        }  
        return con;  
	}
	
	public static int save(Details d){  
        int status=0;  
        try{              

            Connection con=DetailsDao.getConnection();  
            System.out.println("DetailsDao function called");
            PreparedStatement ps=con.prepareStatement("insert into booking (name,city,phone,destination,weight,booking_id) values (?,?,?,?,?,?)");
            ps.setString(1, d.getName());
            ps.setString(2, d.getCity());
            ps.setString(3, d.getPhone());
            ps.setString(4, d.getDestination());
            ps.setInt(5, d.getWeight());
            ps.setInt(6, d.getBooking_id());
            
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        	}  
          
        return status;  
    }  

}
