package CS7146;

import java.io.PrintWriter;
import java.util.ArrayList;

import soot.util.IterableMap.Mapping_Iterator;

public class Key extends Project
{
	private String projectName, keyName, keyValue, keyType;
	private String hexId,decId;
	private boolean mappedToActivity, mappedToCode, mappedToOtherXML;
	public ArrayList<Map> map;
	private int keyLevel=0;
	private static int[] numberOfKeys={0,0,0};
	private ArrayList<MappingFile> files;
	private ArrayList<String> callGraph = new ArrayList<String>();
	
	
	public Key(String projectName,String keyName, String keyValue, String keyType, int keyLevel)
	{
		super(projectName);
		this.keyName = keyName;
		this.keyValue = keyValue;
		this.keyType = keyType;
		this.mappedToActivity=false;
		this.mappedToCode=false;
		this.mappedToOtherXML=false;
		this .map = new ArrayList<Map>();
		this.projectName= projectName;
		this.keyLevel= keyLevel;
		this.files= new ArrayList<MappingFile>();
		this.callGraph= new ArrayList<String>();
	}
	
	public Key(String projectName,String keyName, String keyValue, String keyType, String keyID,int keyLevel) 
	{
		super(projectName);
		this.keyName = keyName;
		this.keyValue = keyValue;
		this.keyType = keyType;
		this.hexId= keyID;
		this.mappedToActivity=false;
		this.mappedToCode=false;
		this.mappedToOtherXML=false;
		this .map = new ArrayList<Map>();
		this.projectName= projectName;
		this.keyLevel= keyLevel;
		this.files= new ArrayList<MappingFile>();
		this.callGraph= new ArrayList<String>();
	}
	
	
public Key(String projectName, String keyName, String hexId, String decId) 
{
		super(projectName);
		this.projectName = projectName;
		
		this.keyName = keyName;
		this.hexId = hexId;
		this.decId = decId;
		this.files= new ArrayList<MappingFile>();
		this.callGraph= new ArrayList<String>();
	}

	//key= new Key(projectName, tagId, tag, level+1);
	public Key(String projectName,String keyName, String keyType,int keyLevel) 
	{
		super(projectName);
		this.keyName = keyName;
		this.keyType = keyType;
		this.mappedToActivity=false;
		this.mappedToCode=false;
		this.mappedToOtherXML=false;
		this .map = new ArrayList<Map>();
		this.projectName= projectName;
		this.keyLevel= keyLevel;
		this.files= new ArrayList<MappingFile>();
		this.callGraph= new ArrayList<String>();
	}

	
	
	
	
	public ArrayList<MappingFile> getFiles() {
		return files;
	}

	public void setFiles(ArrayList<MappingFile> files) {
		this.files = files;
	}

	public static  int[] getNumberOfMappedKey(Key currentKey)
	{
		//System.out.println("call getNumberOfMappedKeyToActivity()");
		
		if(currentKey.isMappedToActivity()== true)
		{
			System.out.println("Mapped to Activity");
			numberOfKeys[0]+=1;
		}
		
		if(currentKey.isMappedToOtherXML()== true)
		{
			System.out.println("Mapped to XML");
			numberOfKeys[1]+=1;
		}
		
		if(currentKey.isMappedToCode()== true)
		{
			System.out.println("Mapped to Code");
			numberOfKeys[2]+=1;
		}
		
		
		for(int i =0 ; i< currentKey.map.size(); i++)
		{
			if(currentKey.map.get(i).getClass().getSimpleName().matches("ActivityMap"))
			{
				if(((ActivityMap)currentKey.map.get(i)).getKey()!=null)
				
					return   getNumberOfMappedKey(((ActivityMap)currentKey.map.get(i)).getKey());
			}else  if(currentKey.map.get(i).getClass().getSimpleName().matches("XMLMap"))
			{
				if(((XMLMap)currentKey.map.get(i)).getKey()!=null)
				
					return  getNumberOfMappedKey(((XMLMap)currentKey.map.get(i)).getKey());
			}
		}
		
		return numberOfKeys;
	}
	
	
	
	
	@Override
	public boolean search(Key key) 
	{
		//System.out.println("Search From Key");
		
		if(key.getKeyName().matches(this.keyName) && key.getHexId().matches(this.hexId) &&  this.keyLevel< key.getKeyLevel())
			return true;
		
		for(int i=0 ; i< this.map.size(); i++)
		{
			if( this.map.get(i).search(key)== true)
				return true;
		}
		
		return false;
	}

	
	
	public static int[] getNumberOfKeys() {
		return numberOfKeys;
	}

	public static void setNumberOfKeys(int[] numberOfKeys) {
		Key.numberOfKeys = numberOfKeys;
	}

	public ArrayList<String> getCallGraph() {
		return callGraph;
	}

	public void setCallGraph(ArrayList<String> callGraph) {
		this.callGraph = callGraph;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public ArrayList<Map> getMap() {
		return map;
	}

	public void setMap(ArrayList<Map> map) {
		this.map = map;
	}

	public int getKeyLevel() {
		return keyLevel;
	}

	public void setKeyLevel(int keyLevel) {
		this.keyLevel = keyLevel;
	}

	public String getKeyName() {
		return keyName;
	}

	public void setKeyName(String keyName) {
		this.keyName = keyName;
	}

	public String getKeyValue() {
		return keyValue;
	}

	public void setKeyValue(String keyValue) {
		this.keyValue = keyValue;
	}

	public String getKeyType() {
		return keyType;
	}

	public void setKeyType(String keyType) {
		this.keyType = keyType;
	}

	public String getHexId() {
		return hexId;
	}

	public boolean setHexId(String hexId)
	{
		this.hexId = hexId;
		try 
		{
			if(hexId != null)
			this.decId= Integer.decode(hexId)+"";
			else 
			{
				System.out.println("can nto convert Hex to Decimal. the Hex Value is :" + this.decId);
				this.decId="-1";
				System.out.println(this.toString());
			}
		} catch (Exception e) 
		{
			System.out.println("error in converting Hex to Decimal. the Hex Value is :" + this.decId);
			return false;
		}
		return true;
	}
	
	public String getDecId() {
		return decId;
	}

	public void setDecId(String decId) {
		
		this.decId= decId;
	}

	public boolean isMappedToActivity() {
		return mappedToActivity;
	}

	public void setMappedToActivity(boolean mappedToActivity) {
		this.mappedToActivity = mappedToActivity;
	}

	public boolean isMappedToCode() {
		return mappedToCode;
	}

	public void setMappedToCode(boolean mappedToCode) {
		this.mappedToCode = mappedToCode;
	}

	public boolean isMappedToOtherXML() {
		return mappedToOtherXML;
	}

	public void setMappedToOtherXML(boolean mappedToOtherXML) {
		this.mappedToOtherXML = mappedToOtherXML;
	}

	@Override
	public String toString() 
	{
		// TODO Auto-generated method stub
		return "Key Name: "+ this.keyName +"Key Hex Id: "+ this.hexId== null? "null":this.hexId + "level:"+ this.keyLevel;
	}
	
	@Override
	public String print(String result , PrintWriter writer)
	{
		
		// we ignore unmapped keys..
		for(int i=0 ; i< this.map.size(); i++)
		{
			//result +=  this.map.get(i).print(result);
			//System.out.print(  this.map.get(i).print(result, writer));
			writer.print( this.map.get(i).print(result, writer));
			
			
		//	if( result.length()>0)
		//	result +=  "KeyName=" + this.keyName + "[ "+ result+" ]\n";
			
				
		}
		
		System.out.print("]\n");
		return result;
		
	}
	
	
	
	
	
	
}
