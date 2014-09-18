package CS7146;

import java.io.*;
import java.util.*;


public class AndroidUIAnalysis 
{

	
	private static BufferedReader bReader = null;
	private static BufferedWriter bwriter = null;
	private static ArrayList<String> projectsList = null, mapedkeys=null;
	private static String workingDirectory="/home/owner/git/DirectedResearchFall2014/DirectedResearchFall2014";
	private static String apktoolLocation="/usr/local/bin/apktool";
	private static ArrayList<Key> keys= null;
	
	public static void main(String[] args) 
	{
		// all APKs need to placed into APKs folder
		// first you need to provide a text file name projects.txt under the DirectedReseachFall2014 folder that has the names of 
		// your apks that you need to analyst it
		// the program will unpacked your projects and do the analysis 
		// the result of each project will be on Result folder as Result_projectName.txt
		
		
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
						
						
						for(int i =0 ; i< projectsList.size(); i++)
						{
							System.out.println(	"Processing  APKs and get the keys and activities");
							processResources(projectsList.get(i));
							
							System.out.println(	"Converting APK tO JAR");
							convertAPKToJar(projectsList.get(i));
							
							System.out.println(	"Converting JAR to JAVA");
							convertJarToJava(projectsList.get(i));
							
						}

				
					}
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				e.toString();
			}

	}





	private static void processResources(String projectName) 
	{
try
{
			if( !unpackAPK(projectName) )
			{
				throw new Exception(" Failed to unpack " +projectName);
			}


		
		// Go throughout all the projects and try to match the keys from xmls to activities ..
		
		
			int mappedKyes=0;
			
			System.out.println("=======================Processing project: "+ projectName +"==================");
			
			System.out.println("reading keys from layout/*.xml");
			
			keys=new ArrayList<Key>();
			keys  =	Utills.getkeysFromXMLs(projectName);	
			
			
			System.out.println("***********************mapping keys from strings.xml to Activites.xml ***************");
			
			System.out.println("total number of keys is: "+ keys.size());
			for (int j=0 ; j< keys.size(); j++)
			{
				//System.out.println("Key is: " +keys.get(j));
				
				mapedkeys= new ArrayList<String>();
				mapedkeys= Utills.mapKeyToActivity(projectName, keys.get(j).getKeyName(), keys.get(j).getKeyType());
				
				mappedKyes+=mapedkeys.size()> 0? 1 : 0;
				
//								for(int w=0 ; w < mapedkeys.size(); w++)
//								{
//									// we can change this to be insert to the database ...
//									System.out.println(keys.get(j).getKeyName()+"--->"+ mapedkeys.get(w));
//								}
				
			}
			
			System.out.println("total number of mapped keys is: "+ mappedKyes);
			
			
			// some keys are used on the code only, so we nee to find them also,
			// 1. we need to convert apk to jar files by using dex2jar
			
			
			// 2. we will use procyon-decompiler-0.5.26.jar tool to get the code from .jar projects
			// 3. Read R.java to get the keyid of each key
			// 4. search for the keyid in the code..
		

			
	} catch (Exception e) 
	{
		// TODO Auto-generated catch block
		e.printStackTrace();
		e.toString();
	}

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

			
			String[] command1={"/bin/sh", "-c", apktoolLocation+" d ./APKs/"+ projectName +" ./unpackedProjects/"+ projectName.replace(".apk", "")};
			
			Utills.excuteComamnd(command1);
			
			return true;
			
		} catch (Exception e) 
		{
			e.printStackTrace();
			e.toString();
			return false;
		}
	}
}
