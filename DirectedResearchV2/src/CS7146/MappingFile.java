package CS7146;
import java.util.ArrayList;


public class MappingFile 
{
	
	String fileName;
	private ArrayList<String> function = new ArrayList<String>();
	

	public MappingFile(String fileName) {
		super();
		this.fileName = fileName;
	}

	public MappingFile(String fileName, ArrayList<String> function) 
	{
		super();
		this.fileName = fileName;
		this.function = function;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public ArrayList<String> getFunction() {
		return function;
	}

	public void setFunction(ArrayList<String> function) {
		this.function = function;
	}
	
	public void print()
	{
		System.out.println("File Name :"+ this.fileName);
		
		for(int i=0; i< function.size(); i++)
		{
			System.out.println(function.get(i));
			
		}
	}

}
