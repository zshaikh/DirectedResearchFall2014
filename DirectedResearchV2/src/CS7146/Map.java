package CS7146;

import java.io.PrintWriter;

public class Map
{
	private String fullString, projectName, fileName, keyType;
	private int level,lineNumber;
	//private Key key;// I don't need it. ... check it later
	
	
	public Map(String fullString, String projectName, String fileName,
			String type, int level, int lineNumber) 
	{
		super();
		this.fullString = fullString;
		this.projectName = projectName;
		this.fileName = fileName;
		this.keyType = type;
		this.level = level;
		this.lineNumber = lineNumber;
	//	this.key = key;
	}
	
	
	public Map(String fullString, String projectName, String fileName,
			String keyType, int level) 
	{
		super();
		this.fullString = fullString;
		this.projectName = projectName;
		this.fileName = fileName;
		this.keyType = keyType;
		this.level=level;
		this.lineNumber=-1;
		
	}

	// this function will never be called, I'll remove it later on 
	public  boolean search(Key key) 
	{
		return false;
	}
	
	public String print(String result, PrintWriter writer)
	{
		
		return result;
		
	}
	

	public String getFullString() {
		return fullString;
	}
	public void setFullString(String fullString) {
		this.fullString = fullString;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getType() {
		return keyType;
	}
	public void setType(String type) {
		this.keyType = type;
	}
	public int getLevel() {
		return level;
	}
	public void setDepth(int level) {
		this.level = level;
	}
	public int getLineNumber() {
		return lineNumber;
	}
	public void setLineNumber(int lineNumber) {
		this.lineNumber = lineNumber;
	}
	/*public Key getKey() {
		return key;
	}
	public void setKey(Key key) {
		this.key = key;
	}
	*/
	

}
