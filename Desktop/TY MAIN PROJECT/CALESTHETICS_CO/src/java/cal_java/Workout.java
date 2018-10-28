/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cal_java;

import java.io.File;


public class Workout {
    int Id;
    String Name;
    String Description;
    String Price;
    String Icon;
    
    public void setId(int id)
	{
		this.Id = id;
	}
	public int getId()
	{
		return Id;
	}

	public void setName(String name)
	{
		this.Name = name;
	}
	public String getName()
	{
		return Name;
	}

	public void setDesc(String desc)
	{
		this.Description = desc;
	}
	public String getDesc()
	{
		return Description;
	}

	public void setPrice(String price)
	{
		this.Price = price;
	}
	public String getPrice()
	{
		return Price;
	}

	public void setIcon(String photo)
	{
		this.Icon = photo;
	}
	public String getIcon()
	{
		return Icon;
	}

            
}
