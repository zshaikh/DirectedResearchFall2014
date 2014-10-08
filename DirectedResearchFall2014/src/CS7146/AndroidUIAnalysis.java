package CS7146;

import java.io.*;

import java.util.*;

import CS7146.Utills;


public class AndroidUIAnalysis 
{

	//3149354DBD154B36
	private static BufferedReader bReader = null;
	//private static BufferedWriter bwriter = null;
	private static ArrayList<String> projectsList = null, mapedkeysToXML=null,  mapedkeysToJava=null,mapedkeysToSamli=null,mapedkeysToSmali=null,mapedkeysToOtherXML=null;
	private static String workingDirectory="/home/owner/git/DirectedResearchFall2014/DirectedResearchFall2014";
	private static String apktoolLocation="apktool";
	private static ArrayList<Key> keys= null;
	private static PrintWriter writer=null;
	
	public static void main(String[] args) throws FileNotFoundException, UnsupportedEncodingException 
	{
		// all APKs need to placed into APKs folder
		// first you need to provide a text file name projects.txt under the DirectedReseachFall2014 folder that has the names of 
		// your apks that you need to analyst it
		// the program will unpacked your projects and do the analysis 
		// the result of each project will be on Result folder as Result_projectName.txt
		 writer = new PrintWriter("./Result/Result.txt", "UTF-8");;
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
						projectsList = new ArrayList<String>();
						String projectName;
						
						System.out.println("Reading the projects Name");
						
						while( (projectName= bReader.readLine()) !=null)
						{
							projectsList.add(projectName);
							
						}
						
						
						
						// insert projects into database...
						//Utills.insertProject(projectsList);
						
						// unpack all the projects
						/*
						System.out.println(	" unpacking the projects " );
						for(int i=0 ; i< projectsList.size(); i++)
						if( !unpackAPK(projectsList.get(i)) )
						{
							throw new Exception(" Failed to unpack " +projectsList.get(i));
						}
						*/
						
						for(int i =0 ; i< projectsList.size(); i++)
						{
							System.out.println(	"getting the keys From strings.xml for the project: "+projectsList.get(i) );
							
							TotalKeys=processXMLResources(projectsList.get(i));
							System.out.println(	" processing smali files");
							processSmaliResurces(i);
							
							System.out.println(i+"- Summery of Project:"+ projectsList.get(i));
							writer.println(i+"- Summeryof Project:"+ projectsList.get(i));
							writer.println("Total number of keys: "+ TotalKeys);
							
							System.out.println("Number of key that mapped to activity is: "+ getNumberOfMappedKeys("Activity"));
							writer.println("Number of key that mapped to activity is: "+ getNumberOfMappedKeys("Activity"));
							
							System.out.println("Number of key that mapped to code is: "+ getNumberOfMappedKeys("code"));
							writer.println("Number of key that mapped to code is: "+ getNumberOfMappedKeys("code"));
							
							System.out.println("Number of key that mapped to other XMLs is: "+ getNumberOfMappedKeys("other"));
							writer.println("Number of key that mapped to other XMLs is: "+ getNumberOfMappedKeys("other"));
							
							System.out.print("Number of key that mapped to XML and code is: ");
							writer.print("Number of key that mapped to XML and code is:");
							
							int count=0;
							for( int j=0; j<keys.size(); j++)
							{
								if (keys.get(j).mappedToActivity == true && keys.get(j).mappedToCode == true )
									count++;
								//System.out.println(keys.get(i).getKeyName());
							}
							System.out.println(count);
							writer.println(count);
							
							System.out.println("Number of key that mapped to both Activity and code is: "+ getNumberOfMappedKeys("both"));
							writer.println("Number of key that mapped to both Activity and code is: "+ getNumberOfMappedKeys("both"));
							
							System.out.print("List the keys that not on Acticity or code or other xmls: ");
							writer.print("List the keys that not on Acticity or code or other xmls:");
							
							count=0;
							for( int j=0; j<keys.size(); j++)
							{
								if (keys.get(j).mappedToActivity == false && keys.get(j).mappedToCode == false && keys.get(j).mappedToOtherXML==false)
									count++;
								
							}
								System.out.println( count);
								writer.println(count);
						
								// running time to process this project
								  endTime   = System.currentTimeMillis();
								  totalTime = endTime - startTime;
								  writer.println("Total Running time for processing project"+projectsList.get(i)+" is:"+(totalTime/1000)+" sec");
						
						}
							}
				 // running time for the hole program...
				  endTime   = System.currentTimeMillis();
				  totalTime = endTime - startTime;
				 writer.println("Total Running time is:"+(totalTime/1000)+" sec");
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





	private static void processSmaliResurces(int i) 
	{
		ArrayList<String> RSmaliFile= getRSmali(projectsList.get(i));
		// this function will update the keys id
		processRSmaliFile(RSmaliFile, projectsList.get(i));
		
		RSmaliFile=null;
		
		int mappedKyes=0;
		
		//mapped keys to smali files...
		for(int j=0 ; j< keys.size(); j++)
		{
			// mapped each key..
			mapedkeysToSamli= new ArrayList<String>();
			//System.out.println("Mapping the key id"+ keys.get(j).getKeyId()+" to smali files");
			mapedkeysToSmali= Utills.mapKeyIDToSmaliFile(projectsList.get(i), keys.get(j).getKeyId());
			
			// insert the mapping into database
			//Utills.insertMappingKeyToCode(projectsList.get(i).replace(".apk",""),keys.get(j).getKeyName(), mapedkeysToSmali);
			
			// count mapped keys...
			//mappedKyes+=mapedkeysToSmali.size()> 0? 1 : 0;
			for(int k=0; k< mapedkeysToSmali.size(); k++)
			{
				keys.get(j).setMappedToCode(true);
			}
			
			mapedkeysToSmali=null;
			

		}
	}





	private static int getNumberOfMappedKeys(String type) 
	{
		int mappedToActicitycounter=0, mappedToCodecounter=0, both=0, others=0;
		
		for(int j=0 ; j< keys.size(); j++)
		{
			if(type.matches("Activity"))
			{
				if (keys.get(j).mappedToActivity == true)
				{
					mappedToActicitycounter++;
				}
			}else if(type.matches("code"))
			{
				if (keys.get(j).mappedToCode == true)
				{
					mappedToCodecounter++;
				}
				
			}else if(type.matches("other"))
			{
				if (keys.get(j).mappedToOtherXML == true)
				{
					others++;
				}
				
			}else if(type.matches("both"))
			{
				if (keys.get(j).mappedToActivity == true && keys.get(j).mappedToCode == true  )
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



	private static String processXMLResources(String projectName) 
	{
		String totalNumberOfKeys="-1";
try
{
	


		
		// Go throughout all the projects and try to match the keys from xmls to activities ..
		
		
			int mappedKyes=0;
			
			writer.println("=======================Processing project: "+ projectName +"==================");
			
			//System.out.println("reading keys from layout/strings.xml");
			
			keys=new ArrayList<Key>();
			keys  =	Utills.getkeysFromXMLs(projectName);	
			
			// inserting keys with limited inforamtion...
			//Utills.insertProjectKyes(projectName, keys);
			
			
		//	System.out.println("***********************mapping keys from strings.xml to Activites.xml ***************");
			
		//	System.out.println("total number of keys is: "+ keys.size());
			 totalNumberOfKeys=keys.size()+"";
			
			for (int j=0 ; j< keys.size(); j++)
			{
				//System.out.println("Key is: " +keys.get(j));
				
				// insert the key..
				//*****insertKey(projectName, keys.get(j));
				
				mapedkeysToXML= new ArrayList<String>();
				mapedkeysToXML= Utills.mapKeyToXML(projectName, keys.get(j).getKeyName(), keys.get(j).getKeyType());
				
				// insert the mapping into database
				//Utills.insertMappingKeyToXML(projectName.replace(".apk",""),keys.get(j).getKeyName(), mapedkeysToXML);
				
				
				// count mapped keys...
				for( int i=0; i< mapedkeysToXML.size(); i++)
				{
					keys.get(j).setMappedToActivity(true);
					
					
				}
				mapedkeysToXML=null;
				
			}
			
	
		

			
	} catch (Exception e) 
	{
		// TODO Auto-generated catch block
		e.printStackTrace();
		e.toString();
	}

return totalNumberOfKeys;

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
			
			String result=null;
			
			String[] command1={"/bin/sh", "-c", apktoolLocation+" d ./APKs/"+ projectName +" -o ./unpackedProjects/"+ projectName.replace(".apk", "")};
			System.out.println(command1[2]);
			System.out.println(Utills.excuteComamnd(command1));
		//	if(Utills.excuteComamnd(command1).contains("was not found or was not readable"))
			//	throw new Exception("was not found or was not readable.");
				
			
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
					keys.get(i).setKeyId(id[id.length-1].replaceAll("[^0-9]",""));
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
						keys.get(i).setKeyId(id[id.length-1].replaceAll(" ","").replace("\n", ""));
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
