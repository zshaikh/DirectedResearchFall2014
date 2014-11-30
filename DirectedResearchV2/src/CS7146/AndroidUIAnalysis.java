package CS7146;

import java.io.*;

import java.util.*;

import CS7146.Utills;


public class AndroidUIAnalysis 
{

	
	private static BufferedReader bReader = null;
	private static BufferedWriter bwriter = null;
	private static ArrayList<String> mapedkeysToXML=null,  mapedkeysToJava=null,mapedkeysToSamli=null,mapedkeysToSmali=null,mapedkeysToOtherXML=null;
	private static String workingDirectory="/home/owner/git/DirectedResearchFall2014/DirectedResearchFall2014";
	private static String apktoolLocation="apktool";
	private static ArrayList<Key> keys= null;
	private static PrintWriter writer=null;
	
	// new 
	private static ArrayList<Project> projectsList;
	
	public static void main(String[] args) throws FileNotFoundException, UnsupportedEncodingException 
	{
		// all APKs need to placed into APKs folder
		// first you need to provide a text file name projects.txt under the DirectedReseachFall2014 folder that has the names of 
		// your apks that you need to analyst it
		// the program will unpacked your projects and do the analysis 
		// the result of each project will be on Result folder as Result_projectName.txt
		// writer = new PrintWriter("./Result/Result.txt", "UTF-8");
		String TotalKeys;
		
		long startTime = System.currentTimeMillis();
		 long endTime ;
		 long totalTime;
			 try {
				 
				 if(args.length== 0)
					{
						System.out.println("you need to provid a list of projects as projects.txt file");
					}else
					{
						bReader = new BufferedReader(new FileReader(args[0]));
						projectsList = new ArrayList<Project>();
						String projectName;
						
						//System.out.println("Reading the projects Name");
						
						while( (projectName= bReader.readLine()) !=null)
						{
							if(projectName.contains("STOP HERE"))
								break;
							
							projectsList.add(new Project(projectName, new ArrayList<Key>()));
							
						}
						
					
						
						for(int i =0 ; i< projectsList.size(); i++)
						{
							//System.out.println(	"Processing  APKs and get the keys and activities");
							
							if( !unpackAPK( projectsList.get(i).getProjectName()) )
							{
								throw new Exception(" Failed to unpack " +projectName);
							}
							
							
							// get the keys from strings.xml
							 projectsList.get(i).setKeys(Utills.getkeysFromXMLs( projectsList.get(i).getProjectName(), 0));
							 
							 // updating key id
							 for(int j=0; j< projectsList.get(i).getKeys().size(); j++)
								Utills.updateKyesId(projectsList.get(i).getProjectName(),projectsList.get(i).getKeys().get(j));
							 
							
								// mapp keys to XML
							 for(int j=0; j< projectsList.get(i).getKeys().size(); j++)
								Utills.mapKeyToXML(projectsList.get(i).getProjectName(),projectsList.get(i).getKeys().get(j), 0,"string.xml");
							
								// map keys to code-smali	
							 for(int j=0; j< projectsList.get(i).getKeys().size(); j++)
								 Utills.mapKeyToSmali(projectsList.get(i).getProjectName(),projectsList.get(i).getKeys().get(j),0);
								 
								 // now we are done with first level keys...
								 // we will loop thought the keys, which maps to Activity or others.
								 //if this mapping has tagId then we will map it  again until all the keys
							 
								 // mapped to the code or can't be mapped any more ( we stop on depth 10)
							for(int j=0; j< projectsList.get(i).getKeys().size(); j++)
								 Utills.depthMapper(projectsList.get(i),projectsList.get(i).getProjectName(), projectsList.get(i).getKeys().get(j), 1);
							 
							 //printing the result:
							//System.out.println( "projects Name: "+ projectsList.get(i).getProjectName());
							 System.out.println(projectsList.get(i).toString());
							 writer = new PrintWriter("./Result/"+ projectsList.get(i).getProjectName()+".txt", "UTF-8");
							 
							 for(int j=0; j< projectsList.get(i).getKeys().size(); j++)
							 {
								 if( projectsList.get(i).getKeys().get(j).map.size()>0)
								 {
								// System.out.print("Key : "+ projectsList.get(i).getKeys().get(j).getKeyName()+ " Value: "+projectsList.get(i).getKeys().get(j).getKeyValue()+" Mapped To: [ ");
								 writer.print( projectsList.get(i).getKeys().get(j).getKeyName()+
										// ":"+projectsList.get(i).getKeys().get(j).getKeyValue()+
										 ":"+projectsList.get(i).getKeys().get(j).getHexId()+
										 ":"+projectsList.get(i).getKeys().get(j).getDecId()+
										 ":");
								 
								 Utills.print(projectsList.get(i),projectsList.get(i).getProjectName(), projectsList.get(i).getKeys().get(j),writer);
								 
								// writer.print("");
										 
								 //System.out.println("]");
								 writer.println("");
							 
								 }
							 }
							writer.close();
							
							//*********************************
							
				
						}
							}
				 
				/* //printing the result
				 Project currentProject=null;
				 for(int i =0 ; i< projectsList.size(); i++)
				 {
					 currentProject= projectsList.get(i);
					 
					
					
				 }
				 */
				 
				 // running time for the hole program...
				  endTime   = System.currentTimeMillis();
				  totalTime = endTime - startTime;
				// writer.println("Total Running time is:"+(totalTime/1000)+" sec");
				// writer.close();
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				e.toString();
				writer.println(e.toString());
			}finally
			{
				writer.close();
			}

	}



	


	private static int getNumberOfMappedKeys(String type) 
	{
		int mappedToActicitycounter=0, mappedToCodecounter=0, both=0, others=0;
		
		for(int j=0 ; j< keys.size(); j++)
		{
			if(type.matches("Activity"))
			{
				if (keys.get(j).isMappedToActivity() == true)
				{
					mappedToActicitycounter++;
				}
			}else if(type.matches("code"))
			{
				if (keys.get(j).isMappedToCode() == true)
				{
					mappedToCodecounter++;
				}
				
			}else if(type.matches("other"))
			{
				if (keys.get(j).isMappedToOtherXML() == true)
				{
					others++;
				}
				
			}else if(type.matches("both"))
			{
				if (keys.get(j).isMappedToActivity() == true && keys.get(j).isMappedToCode() == true  )
					both++;
				
			}
			
			
		}
		if(type.matches("both")) 
			return (mappedToActicitycounter+ mappedToCodecounter);
		else if(type.matches("Activity"))
			return mappedToActicitycounter;
		else if(type.matches("code"))
			return mappedToCodecounter;
		else if(type.matches("other"))
			return others;
		else 
			return -1;
		
		
		
	}


	
	private static void processXMLResources(Project currentProject) 
	{
	
try
{
	
		/*
			int mappedKyes=0;
			
		
			
			for (int j=0 ; j<  currentProject.getKeys().size(); j++)
			{
				
				
				mapedkeysToXML= new ArrayList<String>();
				mapedkeysToXML= Utills.mapKeyToXML(projectName, keys.get(j).getKeyName(), keys.get(j).getKeyType());
				
				// insert the mapping into database
				//Utills.insertMappingKeyToXML(projectName.replace(".apk",""),keys.get(j).getKeyName(), mapedkeysToXML);
				
				
				// count mapped keys...
				for( int i=0; i< mapedkeysToXML.size(); i++)
				{
					keys.get(j).setMappedToActivity(true);
					
					
				}
//				if( mapedkeysToXML.size()> 0)
//				{
//				//	mappedKyes++;
//					
//					keys.get(j).setMappedToActivity(true);
//				}
				

//				mapedkeysToOtherXML= new ArrayList<String>();
//				mapedkeysToOtherXML= Utills.checkIfKeyUsedOnOtherXML(projectName, keys.get(j).getKeyName(), keys.get(j).getKeyType());
//				
//				// count mapped keys...
//				//mappedKyes+=mapedkeysToXML.size()> 0? 1 : 0;
//				if( mapedkeysToOtherXML.size()> 0)
//				{
//			//		mappedKyes++;
//					//System.out.println("Key maped to other xml");
//					keys.get(j).setMappedToOtherXML(true);
//				}
				
				
			}
			
		//	System.out.println("total number of mapped keys Acticty is: "+ mappedKyes);
			
			
			// some keys are used on the code only, so we nee to find them also,
			// 1. we need to convert apk to jar files by using dex2jar
			
			
			// 2. we will use procyon-decompiler-0.5.26.jar tool to get the code from .jar projects
			// 3. Read R.java to get the keyid of each key
			// 4. search for the keyid in the code..
		

			*/
	} catch (Exception e) 
	{
		// TODO Auto-generated catch block
		e.printStackTrace();
		e.toString();
	}

//return totalNumberOfKeys;

		}
		
	private static boolean convertAPKToJar(String projectName)
	{
		try 
		{
			
			String[] command={"/bin/sh", "-c", "cd JARs ;  ../Tools/dex2jar-0.0.9.15/d2j-dex2jar.sh  ../APKs/"+projectName};
			//create jar file...
		System.out.println(	Utills.excuteComamnd(command));
					
			return true;
		} catch (Exception e) 
		{
			e.printStackTrace();
			e.toString();
			return false;
		}
		
	}

	private static boolean convertJarToJava(String projectName)
	{
		try 
		{
					
			String[] command={"/bin/sh", "-c","cd ./JARs; java -jar ../Tools/procyon-decompiler-0.5.26.jar -jar ./"+ projectName.replace(".apk", "-dex2jar.jar") + " -o ../unpackedProjects/"+
					projectName.replace(".apk", "")+"/code"};
			//decompile jar files...
			System.out.println(	Utills.excuteComamnd(command));
			
			
			return true;
		} catch (Exception e) 
		{
			e.printStackTrace();
			e.toString();
			return false;
		}
		
	}
	private static boolean unpackAPK(String projectName)
	{
		try 
		{

			
			String[] command1={"/bin/sh", "-c", apktoolLocation+" d ./APKs/"+ projectName +" -o ./unpackedProjects/"+ projectName.replace(".apk", "")};
			
			Utills.excuteComamnd(command1);
			//System.out.println(command1[2]);
			//System.out.println(Utills.excuteComamnd(command1));
			
			return true;
			
		} catch (Exception e) 
		{
			e.printStackTrace();
			e.toString();
			return false;
		}
	}
	
	
	private static String getRJava(String projectName) 
	{
	
		try 
		{
			String[] command={"/bin/sh", "-c", "find  ./unpackedProjects/"+ projectName.replace(".apk", "")+"/code -name R.java "};
			// if the command return more than one R.java
			// so we choose the one that match the project
			// i.e the project Name is air.com.buffalo_studios.newflashbingo
			// it returns
			//./unpackedProjects/air.com.buffalo_studios.newflashbingo/code/air/com/buffalo_studios/newflashbingo/R.java
			//./unpackedProjects/air.com.buffalo_studios.newflashbingo/code/com/buffalostudios/aneutils/R.java
			//./unpackedProjects/air.com.buffalo_studios.newflashbingo/code/com/facebook/android/R.java
			// by replacing the . with / we can choose the one that we need..
			
			//System.out.println(Utills.excuteComamnd(command));
			String result =Utills.excuteComamnd(command);
			String resultList[] = result.split("\n");
			// check it it has more than one R.java
			if(resultList.length>1)
			{
				for (int i=0 ; i< resultList.length; i++)
				{
					if( resultList[i].contains(projectName.replace(".apk", "").replace(".", "/")))
					{
						result= resultList[i];
						break;
					}
				}
				
			}else
			{
				// do somthing
			}
			//System.out.println("Project Name :"+ projectName);
			//System.out.println("R.java File is: "+result);
			
			return result.replace("\n", "").replace(" ", "");
		} catch (Exception e) 
		{
			e.printStackTrace();
			e.toString();
			return null;
		}
		
	}
	
	private static ArrayList<String> getRSmali(String projectName) 
	{
			ArrayList<String> rSmali = new ArrayList<String>();
			
		try 
		{
			String[] command={"/bin/sh", "-c", "find  ./unpackedProjects/"+ projectName.replace(".apk", "")+"/smali -name R\\$string.smali "};
			// if the command return more than one file we will process all of them 
			// unless there is a conflict
			
			//System.out.println(Utills.excuteComamnd(command));
			String result =Utills.excuteComamnd(command);
			String resultList[] = result.split("\n");
			// check it it has more than one R$string.smali
			if(resultList.length>1)
			{
				for (int i=0 ; i< resultList.length; i++)
				{
					
					rSmali.add(resultList[i]);
						
					
				}
				
			}else
			{
				// do somthing
			}
			//System.out.println("Project Name :"+ projectName);
			//System.out.println("R.java File is: "+result);
			
			return rSmali;
		} catch (Exception e) 
		{
			e.printStackTrace();
			e.toString();
			return null;
		}
		
	}

	private static void processRJava(String rJavaFile, String projectName) 
	{
		try 
		{
			String[] command={"/bin/sh", "-c", "cat "+ rJavaFile +" | egrep "};
			String result="-1";
			// we will go by each key and find its id
			// if the key id is not found then we have something missing
			for(int i =0 ; i< keys.size(); i++)
			{
				command[2]= "cat "+ rJavaFile +"| egrep '.* "+ keys.get(i).getKeyName()+" =.*'";
				//System.out.println(command[2]);
				if( (result=Utills.excuteComamnd(command)).matches(""))
				{
					System.out.println("Key not found");
				}else 
				{
					String id[]= result.split("=");
					//System.out.println(keys.get(i).getKeyName()+" id ="+ id[id.length-1].replace(" ", "").replace(";", "").replace("\n", "")+"#");
					// update key id
//					System.out.println(result);
//					System.out.println(id[id.length-1].replaceAll("[^0-9]",""));
					keys.get(i).setHexId(id[id.length-1].replaceAll("[^0-9]",""));
				}
			}
			
		} catch (Exception e) 
		{
			e.printStackTrace();
			e.toString();
		}
		
	}

	private static void processRSmaliFile(ArrayList<String> rSmaliFile, String projectName) 
	{
		String[] command={"/bin/sh", "-c", ""};
		String result;
		try 
		{
			for(int j=0; j< rSmaliFile.size(); j++)
			{
				
				 result="-1";
				// we will go by each key and find its id
				// if the key id is not found then we have something missing
				for(int i =0 ; i< keys.size(); i++)
				{
					command[2]= "cat "+ rSmaliFile.get(j).replace("$", "\\$") +"| egrep '.* "+ keys.get(i).getKeyName()+".* =.*'";
					//System.out.println(command[2]);
					if( (result=Utills.excuteComamnd(command)).matches(""))
					{
						//System.out.println("Key not found");
					}else 
					{
						String id[]= result.split("=");
						//System.out.println(keys.get(i).getKeyName()+" id ="+ id[id.length-1].replace(" ", "").replace(";", "").replace("\n", "")+"#");
						// update key id
//						System.out.println(result);
						//System.out.println("Result #"+id[id.length-1].replaceAll(" ","").replace("\n", "")+"#");
						keys.get(i).setHexId(id[id.length-1].replaceAll(" ","").replace("\n", ""));
					}
				}
			}
		
			
		} catch (Exception e) 
		{
			e.printStackTrace();
			e.toString();
		}
		
	}





	
}
