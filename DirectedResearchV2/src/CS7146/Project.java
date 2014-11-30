package CS7146;

import java.io.PrintWriter;
import java.util.ArrayList;

public class Project 
{

private String	projectName;
private ArrayList<Key> keys;



public Project(String projectName, ArrayList<Key> keys) 
{
	super();
	this.projectName = projectName;
	this.keys = keys;
}



public Project(String projectName) {
	super();
	this.projectName = projectName;
	this.keys= new ArrayList<Key>();
}



public String getProjectName() {
	return projectName;
}

public void addKey(Key currentKey)
{
	this.keys.add(currentKey);
}

public void setProjectName(String projectName) {
	this.projectName = projectName;
}



public ArrayList<Key> getKeys() {
	return keys;
}



public void setKeys(ArrayList<Key> keys) {
	this.keys = keys;
}

public int[] getNumberOfMappedKey()
{
	int[] numberOfKeys={0,0,0};
	
	for(int i =0 ; i< keys.size(); i++)
	{
		numberOfKeys=Key.getNumberOfMappedKey(keys.get(i)) ;
		
		
	}
	
	return numberOfKeys;
}

@Override
public String toString() 
{
	int[] numberOfKeys=getNumberOfMappedKey();
	
	return "projectName=" + projectName + ", keys=" + keys.size() + "\n"+
			"Mapped To Activity = "+numberOfKeys[0]+" Mapped To Other XML = "+numberOfKeys[1] + " Mapped To Code = "+ numberOfKeys[2];
}

public  boolean search(Key key)
{
	
	//System.out.println("Search From Project");
	for(int i =0 ; i< this.keys.size(); i++)
	{
		if(this.keys.get(i).search(key)== true )
			return true;
	}
	
	return false;
}
public String print(String result, PrintWriter writer)
{
	// result = "projectName=" + projectName +"\n";
	//System.out.println("projectName=" + projectName );
	
	for(int i =0 ; i< this.keys.size(); i++)
	{
		
			//result += this.keys.get(i).print(result);
		if(this.keys.get(i).map.size()>0)
		//System.out.print( "KeyName= "+((Key)this.keys.get(i)).getKeyName()+ " ["+	this.keys.get(i).print(result,writer)+"]");
		writer.print( "KeyName= "+((Key)this.keys.get(i)).getKeyName()+ " ["+	this.keys.get(i).print(result,writer)+"]");
			
	}
	
	return result;
	
}











}
