package Result;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Iterator;

import edu.utsa.cs.sootutil.SootClassLoader;
import eruiz.analysis.parser.CAStmtVisitor;
import eruiz.analysis.parser.CallStruct;
import eruiz.analysis.parser.SampleAnalysis;

import soot.Body;
import soot.Scene;
import soot.SootClass;
import soot.SootMethod;
import soot.Unit;
import soot.dava.toolkits.base.AST.interProcedural.ConstantFieldValueFinder;
import soot.jimple.Stmt;
import soot.jimple.toolkits.callgraph.CHATransformer;
import soot.util.Chain;

import CS7146.Key;
import CS7146.MappingFile;
import CS7146.Project;
import CS7146.Utills;

public class ProcessResult {

	private static String[] command={"/bin/sh", "-c", "pwd"};
	
	public static void main(String[] args) 
	{
		try {
			
			BufferedReader bReader = new BufferedReader(new FileReader("./Result/com.twitter.android-1.apk.txt"));
			String line;
			Project currentProject= new Project("/com.twitter.android-1.apk");
			
			// if the value of the key has new line thiss will miss everythings up so
			
			System.out.println(Utills.excuteComamnd(command));
			
			
			while( (line= bReader.readLine()) !=null)
			{
				
				currentProject.addKey(processLine(line, currentProject.getProjectName()));
			}
			
			
			// print...
			System.out.println("Project Name:" + currentProject.getProjectName());
			// convert apk to jar....

			if(!Utills.convertAPKToJar(currentProject.getProjectName()))
				throw new Exception("faild to convert apk to jar. projectName:"+ currentProject.getProjectName());
			
			// start using Soot...
			
			//Loading libraries...
			 String analysisLib= "-lib=./lib";
			 Utills.addJarsToClassPath(analysisLib.substring(5));
			 String analysisJar ="JARs/"+currentProject.getProjectName().replace("apk", "jar");

			 SampleAnalysis sample = new SampleAnalysis();
			 
			
			 
			 Chain<SootClass> sClasses= SootClassLoader.loadAllClasses(analysisJar, analysisLib, true);
			
			 String fileName,functionName;
			 
			
			System.out.println("Total Number of Key is:"+ currentProject.getKeys().size());		 
			for(int i=0; i< currentProject.getKeys().size(); i++)
			{
				
				
					Key currentKey = currentProject.getKeys().get(i);
					System.out.println("Key Name: "+ currentKey.getKeyName());// +" Key Hex Id: "+ currentKey.getHexId()+ " Key Dex Id: "+ currentKey.getDecId());
					//System.out.println("Mapping to :");
					
				//	System.out.println("======================================================================================================================");
					
					for(int j=0 ; j<currentKey.getFiles().size(); j++)
					{
						fileName =((MappingFile)currentKey.getFiles().get(j)).getFileName();
						//functionName = ((MappingFile)currentKey.getFiles().get(j)).get
						//System.out.println("FileName : "+ fileName);
						
						if (fileName.contains(".smali"))
						{
							//System.out.println("GEt call graph from class "+ fileName.replace(".smali", "") );
							//getCallGraph(currentKey, sClasses, fileName, "NA");
						}
						
						else// if it's a function from the xml
							if(!fileName.contains(".xml")) 
							{
							//	System.out.println("GEt call graph from function name:  "+ fileName );
								//getCallGraph(currentKey, sClasses, "NA",fileName);
							}
						
						
					}
				
				//System.out.println("======================================================================================================================");
			}
			
			
	
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			e.toString();
		}
		

	}

	private static void getCallGraph(Key currentKey,Chain<SootClass> sClasses, String className, String methodName)
	{
		
	//	if( sClasses.getClass().getCanonicalName().contains(className))
	//	{
		//	System.out.println(" Class is Found");
		//}//else
			//System.out.println("can not Found class"+ className);
		 
		
		 SootMethod method = null;
		 
		 for(SootClass sClass : sClasses)
			{
			 
			// System.out.println(sClass.getName());
			 
			 if(!className.matches("NA"))
			 {
				 if(sClass.getShortName().contains(className))
				 {
					 checkMethodsByClassName(currentKey, sClass, className);	
				 }
			 }
			 else if(! methodName.matches("NA"))
			 {
				 checkMethodsByMethodName(currentKey, sClass, methodName); 
			 }
			}
	}

	private static void checkMethodsByClassName(Key currentKey, SootClass sClass,String className) 
	{
		
		Iterator<SootMethod> mi = sClass.getMethods().iterator();
		
		while (mi.hasNext())
		{
			SootMethod sm = (SootMethod) mi.next();
			
			if (sm.isConcrete()) 
			{
				sm.retrieveActiveBody();
				// mapping by using key id...
				if(sm.getActiveBody().toString().contains(currentKey.getDecId()))
				{
					System.out.println("The key is used on method name :"+sm.getName());
					CAStmtVisitor csv = new CAStmtVisitor(sm);
					Body bd = sm.getActiveBody();
					
					for(Unit ut:bd.getUnits())
					{
						Stmt st = (Stmt)ut;		
						st.apply(csv);
					}
					
					System.out.println("Callers: \n"+csv.getCaller().toString().replace(",","\n"));
					System.out.println("Callee: \n"+csv.getCallees().toString().replace(",","\n"));

				}
				//System.out.println(sm.getActiveBody());
					//sample.analyzeCalls(sClass);
					
			}
			
		}
	}
	
	private static void checkMethodsByMethodName(Key currentKey, SootClass sClass,String functionName) 
	{
		
		Iterator<SootMethod> mi = sClass.getMethods().iterator();
		
		while (mi.hasNext())
		{
			SootMethod sm = (SootMethod) mi.next();
			
			if (sm.isConcrete()) 
			{
				//sm.retrieveActiveBody();
				// mapping by using key id...
				if(sm.getName().contains(functionName))
				{
					//System.out.println("The key is used on method name :"+sm.getName());
					CAStmtVisitor csv = new CAStmtVisitor(sm);
					Body bd = sm.getActiveBody();
					//System.out.println("Mehtod Body:\n"+ bd);
					
					for(Unit ut:bd.getUnits())
					{
						Stmt st = (Stmt)ut;		
						st.apply(csv);
					}
					
					System.out.println("Callers: \n"+csv.getCaller().toString().replace(",","\n"));
					System.out.println("Callee: \n"+csv.getCallees().toString().replace(",","\n"));

				}
				//System.out.println(sm.getActiveBody());
					//sample.analyzeCalls(sClass);
					
			}
			
		}
	}

	private static Key processLine(String line,String projectName) 
	{
		String[] fileParts, functions;
		// result is Kye:value:HexId:DecId:Mappting to '-' btw files
		String[]str= line.split(":");
		//System.out.println("Key = "+str[0]);
	
		//System.out.println("HexId = "+str[1]);
		//System.out.println("Dec Id = "+str[2]);
		//if(str.length>2)
		//System.out.println("Files = "+str[3]);
		
	//	public Key(String projectName, String keyName, String hexId, String decId) 
		Key tempKey= new Key(projectName, str[0], str[1], str[2]);
		
		//get all files...
		
		if(str.length>2)
		{
			//System.out.println("Files = "+str[3]);
			str = str[3].split("]");
			for(int i=0; i< str.length; i++)
			{
				//System.out.println(str[i].replace("[", ""));
				if(str[i].contains("$"))
				{
					fileParts= str[i].split("$");
					tempKey.getFiles().add(new MappingFile(fileParts[0].replace("[", "")));
					
				}else
					
				if(str.length-1 >i)
				if(str[i+1].contains("}"))
				{
					//get the fucntions...
					functions= str[i+1].split("}");
					 str[i+1]= functions[functions.length-1];
					
					 ArrayList<String> arLFunctions= new ArrayList<String>();
					 
					 for(int j=0 ; j< functions.length-1; j++)
					 {
						 arLFunctions.add(functions[j].replace("{", ""));
					 }
					 
					 tempKey.getFiles().add(new MappingFile(str[i].replace("[", ""), arLFunctions));
					
				}else
					
				tempKey.getFiles().add(new MappingFile(str[i].replace("[", "")));
			}
			
		}
		
		return tempKey;
	}

}
