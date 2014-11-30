package CS7146;

import java.io.PrintWriter;

public class CodeMap extends Map
{

	public CodeMap(String fullString, String projectName, String fileName,
			String type, int level, int lineNumber) {
		super(fullString, projectName, fileName, type, level, lineNumber);
		// TODO Auto-generated constructor stub
	}

	public CodeMap(String fullString, String projectName, String fileName,
			String type, int level) {
		super(fullString, projectName, fileName, type,level);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String print(String result, PrintWriter writer)
	{
		System.out.print("Mapped to Code: "+this.getFileName()+",");
		writer.print("Code:"+this.getFileName()+",");
		//return result +","+this.getFileName() ;
		return result;
		
		
	}
	

}
