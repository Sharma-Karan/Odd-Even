
package com.Servlets;


import java.util.*;

public class UserModal
{
	private String username;
	private String useremail;
	private List<String> usercars=new ArrayList<String>();
        private String userCarsString;
	public UserModal(String name,String email,String cars)
	{
		this.username=name;
		this.useremail=email;
                this.userCarsString=cars;
	}
	public void setUserCars(String cars)
	{
            userCarsString=cars;
		String temp[]=cars.trim().split(",");
		for(int i=0;i<temp.length;i++)
		{
			usercars.add(temp[i].trim());
		}
	}
	public List<String> getUserCars()
	{
		return usercars;
	}
        public String getUserCarsString()
        {
            return userCarsString;
        }
	public String getUserName()
	{
		return username;
	}
	public String getUserEmail()
	{
		return useremail;
	}
}