package CS7146;

import java.io.*;
import java.util.*;


public class AndroidUIAnalysis 
{

	
	private static BufferedReader bReader = null;
	private static BufferedWriter bwriter = null;
	private static ArrayList<String> projectsList = null;
	private static String workingDirectory="/home/owner/git/DirectedResearchFall2014/DirectedResearchFall2014";
	private static String apktoolLocation="/usr/local/bin/apktool";
	private static ArrayList<String> keys= null, mapedkeys=null;
	
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
						
						
						System.out.println("Unpacking the projects");
						for(int i =0 ; i< projectsList.size(); i++)
						{
							if( !unpackAPK( projectsList.get(i)) )
							{
								throw new Exception(" Failed to unpack " + projectsList.get(i));
							}
						}
						
						for(int i =0 ; i< projectsList.size(); i++)
						{
							
							
							System.out.println("=======================Processing project: "+projectsList.get(i)+"==================");
							
							System.out.println("reading keys from layout/*.xml");
							
							keys=new ArrayList<String>();
							keys  =	Utills.getkeysFromXMLs(projectsList.get(i));	
							
							
							System.out.println("***********************mapping keys from strings.xml to Activites.xml ***************");
							
							System.out.println("total number of keys is: "+ keys.size());
							for (int j=0 ; j< keys.size(); j++)
							{
								//System.out.println("Key is: " +keys.get(j));
								
								mapedkeys= new ArrayList<String>();
								mapedkeys= Utills.mapKeyToActivity(projectsList.get(i), keys.get(j));
								
								for(int w=0 ; w < mapedkeys.size(); w++)
								{
									// we can change this to be insert to the database ...
									System.out.println(keys.get(j)+"--->"+ mapedkeys.get(w));
								}
								
							}

						}
						
						
				
					}
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				e.toString();
			}

	}

	private static ArrayList getXMLs(String string) 
	{
		// TODO Auto-generated method stub
		return null;
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
