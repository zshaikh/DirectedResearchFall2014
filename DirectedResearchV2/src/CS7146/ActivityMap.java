package CS7146;

import java.io.PrintWriter;
import java.util.ArrayList;

public class ActivityMap extends Map
{
	// tag is the type like imageView
	// tagId is the id of this tag like imgV1, and we can find its id in ids.xml
	private String tag, tagId,usedAsString, usedAs, keyName; // key name is the name of the key that mapped to this tag..
	private Key key= null;
	private ArrayList<String> function = null;
	//int level;

/*	public ActivityMap(String fullString, String projectName, String fileName,
			String type, int depth, int lineNumber, Key key,
			String usedAs, String tag, String tagName) 
	{
		
		
		super(fullString, projectName, fileName, type, depth, lineNumber, key);
		
		// TODO Auto-generated constructor stub
		this.tag= tag;
		this.tagId= tagName;
		this.usedAsString= fullString;
		this.usedAs=usedAs;
		if(!tagName.matches("NA"))
		{
			key= new Key(projectName, tagName, type, depth);
		}
		
				
	}
*/
	public ActivityMap(String fullString, String projectName, String fileName,
			String keyType, String keyName,
			String usedAs,String usedAsString, String tag, String tagId,int level, ArrayList<String> functions) 
	{
		super(fullString, projectName, fileName, keyType,level);
		// TODO Auto-generated constructor stub
		this.tag= tag;
		this.tagId= tagId;
		this.usedAsString= usedAsString;
		this.usedAs=usedAs;
		this.keyName= keyName;
		this.function= functions;
		//this.level= level;
		
		if(!tagId.matches("NA"))
		{
			key= new Key(projectName, tagId, "id", level+1);
		}
	}
	
	public ArrayList<String> getFunction() {
		return function;
	}




	public void setFunction(ArrayList<String> function) {
		this.function = function;
	}
	
	
	@Override
	public boolean search(Key key) 
	{
		//System.out.println("Search From ActivityMap");
		
		if(this.key!= null)
		if(key.getKeyName().matches(this.key.getKeyName()) && key.getHexId().matches(this.key.getHexId()== null? "-1":this.key.getHexId() )  &&  this.key.getKeyLevel()< key.getKeyLevel())
		{
			//System.out.println("The key found on level"+ this.key.getKeyLevel());
			return true;
		}
		return false;
	}

	@Override
	public String print(String result, PrintWriter writer)
	{
		/*if(this.key != null)
		return result + this.getFileName()+","+ this.key.print(result) ;
		else 
			return result + this.getFileName();*/
		if(this.key != null)
			//System.out.print("Activity: "+this.getFileName()+","+ this.key.print(result)) ;
			writer.print("Activity:"+this.getFileName()+","+ this.key.print(result,writer));
			else 
				//System.out.print("Activity: "+ this.getFileName());
				writer.print("Activity: "+ this.getFileName());
		return result;
		
		
	}
	
	public Key getKey() {
		return key;
	}



	public void setKey(Key key) {
		this.key = key;
	}



	public String getKeyName() {
		return keyName;
	}

	public void setKeyName(String keyName) {
		this.keyName = keyName;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getTagId() {
		return tagId;
	}

	public void setTagId(String tagId) {
		this.tagId = tagId;
	}

	public String getUsedAsString() {
		return usedAsString;
	}

	public void setUsedAsString(String usedAsString) {
		this.usedAsString = usedAsString;
	}

	public String getUsedAs() {
		return usedAs;
	}

	public void setUsedAs(String usedAs) {
		this.usedAs = usedAs;
	}
	
	
	@Override
	public String toString() 
	{
		// TODO Auto-generated method stub
		return " ActivityMap: "+ this.key.toString();
	}
}
