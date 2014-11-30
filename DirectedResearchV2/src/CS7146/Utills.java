package CS7146;
import java.io.*;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.CharacterData;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import droidblaze.analyses.netsignature.SignatureGen;

import soot.Scene;
import soot.SootClass;
import soot.SootMethod;

import java.sql.*;


public class Utills 
{
	static BufferedReader bReader =null;
	 // JDBC driver name and database URL
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = "jdbc:mysql://localhost/DirectedResearchFall2014";

//  Database credentials
   static final String USER = "root";
   static final String PASS = "123123@";
   
   static Connection conn = null;
   static PreparedStatement pstmt = null;
   static String sql=null;
   
   // Soot
   private static int SOOT_TRIAL_UPPERBOUND = 10;
   
   
	 public static String excuteComamnd(String cmd[]) 
	 {
		 String commandResult="";
		 try
		 {
		 
		 //String[] cmd ;//= { "/bin/sh", "-c", "cd /Users/zeyadal-shaikh/git/AndroidUIAnalysis; ls -l; ls -l | wc -l; ls" };
		 String s;
		// System.out.println(cmd[2]);
		 Process p = Runtime.getRuntime().exec(cmd);
	
			BufferedReader stdInput = new BufferedReader(new InputStreamReader(p.getInputStream()));
			
			while ((s = stdInput.readLine()) != null) 
			{
			         commandResult += s+"\n";// System.out.println(s);
			}
			

		} catch( Exception e)
		{
			 e.printStackTrace();
		}
		// System.out.println("Command result :"+commandResult);
		 
			return commandResult;
	}

	 public static ArrayList<Key> getkeysFromXMLs(String projectName, int level)
	 {
		 try 
		 {
			 ArrayList<String> XMLs= new ArrayList<String>();
			 ArrayList<Key> keys= new ArrayList<Key>();
			 // you can change this line if you are interested in more files, also yoiu may need to change getKeysFromXML
			 String[] command={"/bin/sh", "-c", " ls ./unpackedProjects/"+projectName.replace(".apk", "")+"/res/values/strings.xml" };
			 String result = excuteComamnd(command);
			
			 String files[] = result.split("\n");
			
			 
			 for(int i =0 ; i< files.length; i++)
			 {
				 
				 if(files.length == 1 && files[i].matches(""))
				 {
					 System.out.println("----------------- No strings.xml file Found! -------------------------"); 
				 }else if(!files[i].matches(""))
				 {
					 // since we are interested only on strings.xml the list will be allways 1
					 XMLs.add(files[i]);
				 }
			 }
			 // get the keys from each file..
			
			 for(int i =0 ; i< XMLs.size(); i++)
			 {
				 keys.addAll(getkeysFromXML(projectName,XMLs.get(i), level)); 
			 }
			 
			return keys;
			
		} catch (Exception e) 
		{
			e.printStackTrace();
			e.toString();
		}
		 return null;
	 }
	 
	 public static void depthMapper(Project project,String projectName, Key key, int level)
	 {
		 try
		 {
			
			
			
				 // loop over the maps for each key
				 for( int j=0 ; j< key.map.size(); j++)
				 {
					 
					 
					 if( key.map.get(j).getClass().getSimpleName().matches("ActivityMap") 
							 ||key.map.get(j).getClass().getSimpleName().matches("XMLMap"))
						 // && project.search(key)== false this will prevent declaring a key more than once
							
					 {
							 if(key.map.get(j).getClass().getSimpleName().matches("XMLMap"))
							 {
									if(((XMLMap) key.map.get(j)).getKey() != null && ((XMLMap) key.map.get(j)).getKey().getKeyLevel()<10 )
									{
										
										
										Key currentKey=((XMLMap) key.map.get(j)).getKey(); 
										// now we need to map this key

									updateKyesId(projectName , currentKey);
										
										
										/*System.out.println("trying to mapp the key"+currentKey.getKeyName()+ "Hex Id :"+ currentKey.getHexId()+ "were mapped to other"+
												"From FIle: "+((XMLMap) key.map.get(j)).getFileName());*/
										
										// check if the key is already declared
										if(project.search(currentKey)== false)
										{
											mapKeyToXML(projectName, currentKey, currentKey.getKeyLevel(),((XMLMap) key.map.get(j)).getFileName());
											if(currentKey.getHexId() != "-1")
											mapKeyToSmali(projectName, currentKey, currentKey.getKeyLevel());
											
											/*System.out.println("mapping this key again "+ currentKey.getKeyName()+" with id: "+ currentKey.getHexId()+"LEVEL ===="+currentKey.getKeyLevel()+
													" FILE NAME IS :"+((XMLMap) key.map.get(j)).getFileName()+"\n"+
														"\n mapped to Activity:"+ currentKey.isMappedToActivity() +
													"\n Mapped to XML: "+ currentKey.isMappedToOtherXML()+
													"\n Mapped to Code: "+ currentKey.isMappedToCode());*/
											
											for(int i =0 ; i< currentKey.map.size(); i++)
											{
											//	System.out.println("recursive call "+ i);
												depthMapper(project,projectName, currentKey, level+1);
											}
										}else 
										{
											//System.out.println("The key is already declared");
										}
										
									}
						 
							 }else // Activity map
							 {
								 if(((ActivityMap) key.map.get(j)).getKey() != null  && ((ActivityMap) key.map.get(j)).getKey().getKeyLevel()<10)
									{
										Key currentKey=((ActivityMap)key.map.get(j)).getKey(); 
										// now we need to map this key
										
										updateKyesId(projectName , currentKey);
										
										/*System.out.println("mapping this key again"+ currentKey.getKeyName()+"with id: "+ currentKey.getHexId()+ "were mapped to Activity"+
												"From FIle: "+((ActivityMap) key.map.get(j)).getFileName());*/
										
										if(project.search(currentKey)== false)
										{
											//mapKeyToXML(projectName, currentKey, currentKey.getKeyLevel(),((ActivityMap) key.map.get(j)).getFileName());
											mapKeyToSmali(projectName, currentKey, currentKey.getKeyLevel());
											
										/*	System.out.println("mapping this key again "+ currentKey.getKeyName()+" with id: "+ currentKey.getHexId()+" LEVEL ===="+currentKey.getKeyLevel()+
													" FILE NAME IS :"+((ActivityMap) key.map.get(j)).getFileName()+
													
													"\n Mapped to Code: "+ currentKey.isMappedToCode());*/
											
											for(int i =0 ; i< currentKey.map.size(); i++)
											{
												//System.out.println("recursive call "+ i);
												depthMapper(project,projectName, currentKey, level+1);
											}
										
										}else 
										{
											//System.out.println("The key is already declared");
										}
										
									}
							 }
						 
					 }
		
			 }
			 
		 } catch (Exception e) 
			{
				e.printStackTrace();
				e.toString();
			}
			 
	 }
	 
	 
	 public static void print(Project project,String projectName, Key key, PrintWriter writer)
	 {
		 try
		 {
			
			
			
				 // loop over the maps for each key
				 for( int j=0 ; j< key.map.size(); j++)
				 {
					 
					 //System.out.println(key.map.get(j).getClass().getSimpleName()+":"+key.map.get(j).getFileName()+( j!=key.map.size()-1?" - ":""));
					// writer.print(key.map.get(j).getClass().getSimpleName()+":"+key.map.get(j).getFileName()+( j!=key.map.size()-1?"-":""));
					 writer.print("["+key.map.get(j).getFileName()+"]");//( j!=key.map.size()-1?"-":""));
					 
					 if( key.map.get(j).getClass().getSimpleName().matches("ActivityMap") 
							 ||key.map.get(j).getClass().getSimpleName().matches("XMLMap"))
						 							
					 {
							 if(key.map.get(j).getClass().getSimpleName().matches("XMLMap") && ((XMLMap)key.map.get(j)).getKey()!= null)
							 {
								 Key currentKey= ((XMLMap)key.map.get(j)).getKey();
								 
								 for( int i=0 ; i< currentKey.map.size(); i++)
								 {
									 // recusive call
									 print(project, projectName, currentKey,writer);
									 
								 } 
							 
							 
							 }else  if(key.map.get(j).getClass().getSimpleName().matches("ActivityMap") && ((ActivityMap)key.map.get(j)).getKey()!= null)
							 {
								Key currentKey= ((ActivityMap)key.map.get(j)).getKey();
								
								 for( int i=0 ; i< currentKey.map.size(); i++)
								 {
									// recusive call
									 print(project, projectName, currentKey,writer);
									 
								 }
								 
							 }
						 
					 }
				 }
		
			 
			 
		 } catch (Exception e) 
			{
				e.printStackTrace();
				e.toString();
			}
			 
	 }
	 // Soot functions
	 
	 public static void loadJar(String jarPath) throws IOException 
	 {
	        File file = new File(jarPath);
	        
	        JarFile jar = new JarFile(file);
	        Enumeration<JarEntry> e = jar.entries();
	        
	        while (e.hasMoreElements()) 
	        {
	            JarEntry entry = e.nextElement();
	         //   System.out.println("ENTRY HERE: " + entry.getName());
	            if (entry.isDirectory() || !entry.getName().endsWith(".class"))
	                continue;
	            // System.out.println(entry.getName());   
	            String name = entry.getName().substring(0, entry.getName().length() - 6);
	            name = name.replace('/', '.');
	            System.out.println("Class"+ name );
	            tryLoadClass(name, SOOT_TRIAL_UPPERBOUND);        
	        }
	    }
	 
	 
		public static void tryLoadClass(String name, int trials) 
		{
			while(trials > 0)
			{
				try{
					loadClass(name);
					break;
				}catch(RuntimeException e)
				{
					trials = trials - 1;
					String sms = e.getMessage();
					System.out.println(e.getMessage());
					
					
					String className = sms.substring(sms.indexOf("but") + 3, sms.indexOf("is a")).trim();
				
					try{
						Scene.v().addBasicClass(className, SootClass.SIGNATURES);
						continue;
					}catch(RuntimeException e1)
					{
						System.out.println(e1.getMessage());   
					}
				}
			}
	    }
		
		
		private static void loadClass(String name)
		{
			SootClass c = Scene.v().loadClass(name, SootClass.BODIES);
			
			System.out.println("Class "+name+".class");   // PRINTS PACKAGE NAME
			System.out.println("has "+c.getMethodCount()+ "Methods");
			
			Scene.v().loadNecessaryClasses();
			
			c.setApplicationClass();
			
			Iterator<SootMethod> mi = c.getMethods().iterator();
			
			while (mi.hasNext())
			{
			    SootMethod sm = (SootMethod) mi.next();
			    if (sm.isConcrete()) 
			    {
			        sm.retrieveActiveBody();
			        System.out.println(sm.retrieveActiveBody().toString());
			    }
			}
			
		}
		
		
		public static boolean addJarsToClassPath(String libDir) 
		{
			
	        File lib = new File(libDir);
	        File[] jars = lib.listFiles(new FileFilter() {
	            public boolean accept(File file) {
	                return file.isFile() && file.getName().toLowerCase().endsWith(".jar");
	            }
	        });
	        StringBuilder b = new StringBuilder(Scene.v().getSootClassPath());
	        for (File jar : jars) {
	        //	System.out.println("JAR NAME: " + jar.getName());
	            b.append(File.pathSeparator);
	            b.append(jar.getPath());
	        }
	        Scene.v().setSootClassPath(b.toString());
	        return (jars.length > 0);
	    }
	 
	 public static boolean convertAPKToJar(String projectName)
		{
			try 
			{
				
				String[] command={"/bin/sh", "-c", "  ./Tools/dex2jar-0.0.9.15/d2j-dex2jar.sh  ./APKs/"+projectName+" -o ./JARs/"+projectName.replace("apk", "jar")};
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

	 public static ArrayList<Key> getkeysFromXML(String projectName, String fileName, int  level)
	 {
		 String fixedXMLfileContent = null, temp;
		 ArrayList<Key> keys = new ArrayList<Key>();
		 
		 try 
		 {
			 
			 bReader = new BufferedReader(new FileReader(fileName));
			 fixedXMLfileContent="";
			//fixing the file
			 while((temp = bReader.readLine())!= null)
				{
					// ignore the first line where the line has <?xml version="1.0" encoding="utf-8"?>...
					if ( !temp.contains("xml version=\"1.0\" encoding=\"utf-8")  )
					{
						fixedXMLfileContent+=temp+"\n";
					}	
				}
			 
			 // reading the keys
			 	DocumentBuilderFactory dbf =
				        DocumentBuilderFactory.newInstance();
				        DocumentBuilder db = dbf.newDocumentBuilder();
				        InputSource is = new InputSource();
				        is.setCharacterStream(new StringReader(fixedXMLfileContent));

				        Document doc = db.parse(is);
				        NodeList nodes= doc.getElementsByTagName("*");
				        

				        // this line of code to solve the diffrent type of xml files that 
				        // used by android such as attributes.xml integers.xml ...etc 
				        Element element = (Element) nodes.item(1);
				        nodes = doc.getElementsByTagName(element.getNodeName());
			        	 doc.getDocumentElement();
			        	 
			        	 // this will return the type of the xml, so when we search we know 
			        	 // what string we are looking for i.e +@/attribute or +@/id  and so on...
			        	//System.out.println("File Name: "+fileName); 
			        	String keyType=nodes.item(0).getNodeName();
			        	// System.out.println("Key Type is : "+keyType);
				        // iterate the Strings...
				        for (int i = 0; i < nodes.getLength(); i++) 
				        {
				            element = (Element) nodes.item(i);
				          // System.out.println("Key Name :"+  nodes.item(i).getAttributes().getNamedItem("name").toString());	
				          // System.out.println(" Value: "+getCharacterDataFromElement(element));
				         
				            // we use only the key name ,value, and  type only
				           keys.add( new Key(projectName,nodes.item(i).getAttributes().getNamedItem("name").toString().replace("\"", "").replace("name=", "").replace(" ", "")
				        		   ,
				        		   ((Node)element).getTextContent(),
				        		   keyType, level));
				        		   //nodes.item(i).getAttributes().item(0).getNodeValue() );
				           
				        		   
				        }
				        
		
			 return keys;
		} catch (Exception e)
		{
			System.out.println("File Name is: "+fileName);
			e.printStackTrace();
			e.toString();
		}
		 
		 return null;
	 }
	 
	 public static void mapKeyToXML( String projectName,Key key, int level, String sourceFileName)
		{
		  String fileName="NA", tag="NA", tagId="NA", usedAsString="NA",usedAs[]=null, result= null;
		  
		  String command[]={"/bin/sh","-c",""}; 
			
			//for(int i=0 ; i< currentProject.getKeys().size(); i++)
			try{
			
			//tDescription="@string/com_faceboo
			if(key.getKeyType().matches("id"))
			{ // we don't want to match the id again
				command[2]=" find ./unpackedProjects/"+projectName.replace(".apk", "") +"/res  -name '*.xml' ! -name 'string.xml' ! -name 'public.xml' ! -name 'ids.xml' ! -name '"+sourceFileName+"' -print0 "+
						"|xargs -0 egrep -v 'android:id=\".*/"+key.getKeyName()+"\"'  | egrep  '.*=\"@"+key.getKeyType()+"/"+key.getKeyName()+"\"'" ;
				
			}else //android:id=@android:id/title
			{
				 command[2]=" find ./unpackedProjects/"+projectName.replace(".apk", "") +"/res  -name '*.xml' ! -name 'string.xml' ! -name 'public.xml' ! -name 'ids.xml' ! -name '"+sourceFileName+"' -print0 "+
				"| xargs -0 egrep  '.*=\"@"+key.getKeyType()+"/"+key.getKeyName()+"\"'" ;
			}
			
			// System.out.println( command[2]);
			 result = excuteComamnd(command);
			
			if(result != null && !result.matches("") )
			{
			
				String temp[]= result.split("\n");
				
				for(int j= 0 ; j< temp.length; j++)
				{
				
					// pars the mapping string to get the information 
					  String fullText[] = temp[j].split("<");
			    	  
			    	  // the left part has the file name
			    	  String left[]= fullText[0].split("/");
			    	  fileName= left[left.length-1].replace(":", "");
			    	  
			    	  // now we need to process the right part...
			    	  
			    	  String right[] = fullText[1].split(" ");
			    	  tag = right[0].replace("<", "");
			    	  
			    	  // loop throught all elements on the array
			    	  for(int k=1 ; k< right.length; k++)
			    	  {
			    		 if(right[k].contains("android:id"))
			    		 {
			    			 tagId= right[k].replace("android:id=\"", "").replace("\"", "").replace("@id/", "").replace("@android:id/", "").replace("\"", "");
			    			 //tagId= tagId.replace("android", "").replace("id", "").replace(":", "").replace("@", "").replace("/", "").replace("\"", "");
			    			 
			    		 }else if(right[k].contains(key.getKeyName()))
			    		 {
			    			 usedAsString= right[k];
			    			 usedAs= usedAsString.split("=");
			    		 }
			    	  }
			    		 
					// to activity mapping
					if(temp[j].contains("layout"))
					{
						key.setMappedToActivity(true);
						
						/*public ActivityMap(String fullString, String projectName, String fileName,
						String type, String keyName,
						String usedAs,String usedAsString, String tag, String tagName, int level) */
						
						key.map.add(
								new ActivityMap(temp[j], projectName,fileName.replace(" ", ""),key.getKeyType(),key.getKeyName()
								,usedAs[0].replace("android:", ""),usedAsString,tag, tagId==null? "NA": tagId, level));
						
					}else//mapped to other xmls
					{
						key.setMappedToOtherXML(true);
						key.map.add(
								new XMLMap(temp[j]
										,projectName
										,fileName.replace(" ", "")
										,key.getKeyType()
										,key.getKeyName()
								,usedAs[0].replace("android:", "")
								,usedAsString
								,tag
								, tagId==null? "NA": tagId
										, level)
								);
					}
						
					
									
				
				
				//}// end for j
			}// end if
			
			}// end for i
			
			}catch(Exception ex)
			{
				ex.printStackTrace();
				System.out.println("[result]: "+result);
			}
		}
	 
	 
	 
	 public static ArrayList<String> checkIfKeyUsedOnOtherXML(String projectName, String key, String keyType)
		{
			ArrayList<String> mapedkeys = new ArrayList<String>();
			String type=null;
			
			
			//System.out.println(" find ./unpackedProjects/"+ projectName.replace(".apk", "") +"/res/ ./ -name '*.xml' -print0 | xargs -0 egrep -l 'android:id=\"@id/"+key+"\"'");
			
			String[] command={"/bin/sh", "-c", " find ./unpackedProjects/"+ projectName.replace(".apk", "") +"/res  -name '*.xml' -print0 | xargs -0 egrep  '.*=\"@.*/"+key+"\".*'" };
			
			String result = excuteComamnd(command);
			
			if(result != null && !result.matches(""))
			{
			
			String temp[]= result.split("\n");
			
			for(int i= 0 ; i< temp.length; i++)
			{
				if(!temp[i].contains("strings.xml") && !temp[i].contains("public.xml"))
				{
					//System.out.println("The key: "+ key + " were mapped to other xml named: " + temp[i]);
					mapedkeys.add(temp[i]);
				}
				
			}
			
			}else
			{
				//System.out.println("The key "+ key + " is not used on any xml file");
			}
			return mapedkeys;
		}
	 
	 
	 public static ArrayList<String> mapKeyIDToJavaClass(String projectName, long keyId)
		{
			ArrayList<String> mapedkeys = new ArrayList<String>();
			
			
			
			//System.out.println(" find ./unpackedProjects/"+ projectName.replace(".apk", "") +"/res/ ./ -name '*.xml' -print0 | xargs -0 egrep -l 'android:id=\"@id/"+key+"\"'");
			
			String[] command={"/bin/sh", "-c", " find ./unpackedProjects/"+ projectName.replace(".apk", "") +"/code  -name '*.java' -print0 | xargs -0 egrep  '.*"+keyId+".*'" };
			
			//System.out.println(command[2]);
			
			String result = excuteComamnd(command);
			
			if(result != null && !result.matches(""))
			{
			//	System.out.println(result);
			String temp[]= result.split("\n");
			
			for(int i= 0 ; i< temp.length; i++)
			{
				if(!temp[i].contains("R.java"))
					mapedkeys.add(temp[i]);
				
			}
			
			}
			return mapedkeys;
		}

	 public static void mapKeyToSmali(String projectName, Key key, int level)
		{
			
			
		 String fileName="NA", tag="NA", tagId="NA", usedAsString="NA",usedAs[]=null, result;
		  String command[]={"/bin/sh","-c",""}; 
			
			//for(int i=0 ; i< currentProject.getKeys().size(); i++)
			//{
			
			
				
				 command[2]=" find ./unpackedProjects/"+ projectName.replace(".apk", "") +
						 "/smali  -name '*.smali' ! -name 'R.smali' ! -name R\\$*.smali  -print0 | xargs -0 egrep   '.*= "+key.getHexId()+"'" ;
				
			
				 result = excuteComamnd(command);
				
				if(result != null && !result.matches(""))
				{
					
					String temp[]= result.split("\n");
					
					for(int j= 0 ; j< temp.length; j++)
					{
						
						if(!temp[j].contains("string.smali"))
						{
							 String fullText[] = result.split(key.getHexId());
					    	   fullText = fullText[0].split("\n");
					    	  //System.out.println(MappingTo.get(i));
					    	  String mappingLine[] = fullText[fullText.length-1].split(":");
					    	  
					    	  // the left part has the file name
					    	  String left[]= mappingLine[0].split("/");
					    	  fileName= left[left.length-1].replace(":", "");
					    	  
					    	  key.setMappedToCode(true);
					    	  /*String fullString, String projectName, String fileName,String typ*/
					    	  key.map.add(
										new CodeMap(temp[j],projectName, fileName,key.getKeyType(),level));
					    	//  System.out.println("Key id ="+ currentProject.getKeys().get(i).getHexId()+
					    	//		  "mapped to "+ temp[j]);
							
						}
					}
				
				}
			//}
			
		}

	public static void insertProject(ArrayList<String> projectsList) 
	{
		try 
		{
			System.out.println("Insert Projects Name ");
			 Class.forName("com.mysql.jdbc.Driver");

		      //STEP 3: Open a connection
		      
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      
		      
		      
		      for (int i=0;i< projectsList.size(); i++)
		      {
		    	   sql = "INSERT INTO `DirectedResearchFall2014`.`Projects` (`ProjectName`) VALUES (  ? )";
		    	  pstmt = conn.prepareStatement(sql);
		    	
		    	  pstmt.setString(1,projectsList.get(i).replace(".apk",""));
		    	  pstmt.executeUpdate();  
		    	  
		    	
		      }
		      
		    
			
		} catch (Exception se ) 
		{
			se.printStackTrace();
			se.toString();
		}finally{
		      //finally block used to close resources
		      try{
		         if(pstmt!=null)
		            conn.close();
		      }catch(SQLException se)
		      {
		      }// do nothing
		      try{
		         if(conn!=null)
		            conn.close();
		      }catch(SQLException se)
		      {
		         se.printStackTrace();
		      }//end finally try
		}
	}
	
	
	
	public static void insertProjectKyes(String projectName,ArrayList<Key> keys) 
	{
		try 
		{
			System.out.println("Insert project keys");
			 Class.forName("com.mysql.jdbc.Driver");

		      //STEP 3: Open a connection
		      
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      
		      
		      
		      for (int i=0;i< keys.size(); i++)
		      {
		    	   sql = "INSERT INTO `keys`( `ProjectName`, `Key`, `FromFile`, `KeyId`) VALUES (?,?,?,?)";
		    	  pstmt = conn.prepareStatement(sql);
		    	
		    	  pstmt.setString(1,projectName.replace(".apk",""));
		    	  pstmt.setString(2,keys.get(i).getKeyName());
		    	  pstmt.setString(3,"Strings.xml");//keys.get(i).getFileName());
		    	  pstmt.setString(4,"-1");//keys.get(i).getKeyId());
		    	  
		    	  pstmt.executeUpdate();  
		    	  
		    	
		      }
		      
		    
			
		} catch (Exception se ) 
		{
			se.printStackTrace();
			se.toString();
		}finally{
		      //finally block used to close resources
		      try{
		         if(pstmt!=null)
		            conn.close();
		      }catch(SQLException se)
		      {
		      }// do nothing
		      try{
		         if(conn!=null)
		            conn.close();
		      }catch(SQLException se)
		      {
		         se.printStackTrace();
		      }//end finally try
		}
	}

	public static void insertMappingKeyToXML(String projectName, String keyName,
			ArrayList<String> MappingTo)
	{
		try 
		{
			System.out.println("Insert mapping information");
			 Class.forName("com.mysql.jdbc.Driver");

		      //STEP 3: Open a connection
		      
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      
		      String fileName="NA", tag="NA", tagId="NA", usedAsString="NA",usedAs[]=null;
		      
		      for (int i=0;i< MappingTo.size(); i++)
		      {
		    	  // process the string to get the information....
		    	  String fullText[] = MappingTo.get(i).split("<");
		    	  
		    	  // the left part has the file name
		    	  String left[]= fullText[0].split("/");
		    	  fileName= left[left.length-1].replace(":", "");
		    	  
		    	  // now we need to process the right part...
		    	  
		    	  String right[] = fullText[1].split(" ");
		    	  tag = right[0].replace("<", "");
		    	  
		    	  // loop throught all elements on the array
		    	  for(int j=1 ; j< right.length; j++)
		    	  {
		    		 if(right[j].contains("android:id"))
		    		 {
		    			 tagId= right[j].replace("android:id=\"@id/", "").replace("\"", "");
		    		 }else if(right[j].contains(keyName))
		    		 {
		    			 usedAsString= right[j];
		    			 usedAs= usedAsString.split("=");
		    		 }
		    	  }
		    	  
		    	  sql =  "INSERT INTO `Mapping`( `ProjectName`, `key`, `MappingType`, `FullString`, `FileName`, `Tag`, `TagId`, `UsedAsString` ,`UsedAs`)" +
		    	  		" VALUES (?,?,?,?,?,?,?,?,?)";
		    	  // sql = "INSERT INTO `Mapping`( `ProjectName`, `key`, `MappedTo`, `FileName`) VALUES (?,?,?,?)";
		    	  pstmt = conn.prepareStatement(sql);
		    	
		    	  pstmt.setString(1,projectName);
		    	  pstmt.setString(2,keyName);
		    	  pstmt.setString(3,"To XML");
		    	  pstmt.setString(4,MappingTo.get(i));// process the string to get the file Name
		    	  pstmt.setString(5,fileName);
		    	  pstmt.setString(6,tag);
		    	  pstmt.setString(7,tagId);
		    	  pstmt.setString(8,usedAsString);
		    	  pstmt.setString(9,usedAs[0].replace("android:", ""));
		    	  
		    	  pstmt.executeUpdate();  
		    	  
		    	
		      }
		      
		    
			
		} catch (Exception se ) 
		{
			se.printStackTrace();
			se.toString();
		}finally{
		      //finally block used to close resources
		      try{
		         if(pstmt!=null)
		            conn.close();
		      }catch(SQLException se)
		      {
		      }// do nothing
		      try{
		         if(conn!=null)
		            conn.close();
		      }catch(SQLException se)
		      {
		         se.printStackTrace();
		      }//end finally try
		}
		
	}


	public static void insertMappingKeyToCode(String projectName, String keyName,
			ArrayList<String> MappingTo)
	{
		try 
		{
			System.out.println("Insert mapping to code information");
			 Class.forName("com.mysql.jdbc.Driver");

		      //STEP 3: Open a connection
		      
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      
		      String fileName="NA";
		      
		      for (int i=0;i< MappingTo.size(); i++)
		      {
		    	 
		    	  // process the string to get the information....
		    	  String fullText[] = MappingTo.get(i).split(":");
		    	  
		    	  // the left part has the file name
		    	  String left[]= fullText[0].split("/");
		    	  fileName= left[left.length-1].replace(":", "");
		    	  
		    	  // no other information can be retrieved 
		    	  
		    	 
		    	  
		    	  sql =  "INSERT INTO `Mapping`( `ProjectName`, `key`, `MappingType`, `FullString`, `FileName`)" +
		    	  		" VALUES (?,?,?,?,?)";
		    	  // sql = "INSERT INTO `Mapping`( `ProjectName`, `key`, `MappedTo`, `FileName`) VALUES (?,?,?,?)";
		    	  pstmt = conn.prepareStatement(sql);
		    	
		    	  pstmt.setString(1,projectName);
		    	  pstmt.setString(2,keyName);
		    	  pstmt.setString(3,"To Code-Smali");
		    	  pstmt.setString(4,MappingTo.get(i));
		    	  pstmt.setString(5,fileName);
		    	 
		    	  
		    	  pstmt.executeUpdate();  
		    	  
		    	
		      }
		      
		    
			
		} catch (Exception se ) 
		{
			se.printStackTrace();
			se.toString();
		}finally{
		      //finally block used to close resources
		      try{
		         if(pstmt!=null)
		            conn.close();
		      }catch(SQLException se)
		      {
		      }// do nothing
		      try{
		         if(conn!=null)
		            conn.close();
		      }catch(SQLException se)
		      {
		         se.printStackTrace();
		      }//end finally try
		}
		
	}

	
	public static void updateKyesId(String projectName,Key key) 
	{
		
		// first try to find public.xml and get the ids from there.
		
		// other wise work with smali....
		
		try {
			
			String[] command={"/bin/sh", "-c", "ls ./unpackedProjects/"+ projectName.replace(".apk", "") +"/res/values/public.xml"};
			String [] temp;
			String result= "";
			
			if( !(Utills.excuteComamnd(command)).contains("No such file or directory") && !(Utills.excuteComamnd(command)).matches(""))
			{
				
				// public file was found.....
				//loop over the keys and get the id
				//for(int i =0 ; i< currentProject.getKeys().size(); i++)
				//{
					command[2] = "grep ' <public type=\""+key.getKeyType()+"\" name=\""+key.getKeyName()+"\" id=\".*' ./unpackedProjects/"+  projectName.replace(".apk", "") +"/res/values/public.xml ";
					result= Utills.excuteComamnd( command);
					// the result will have  <public type="string" name="text_runtime_on_external_storage" id="0x7f070024" />
					
					
					temp = result.split("id=");
					temp[0] = temp[temp.length-1].replace("\"", "").replace(" ", "").replace("\n", "").replace("/>", "");
					
					if(temp.length==0)
					{
						throw new Exception("error when apply this command" + command[2] +" and the result is "+ Utills.excuteComamnd( command));
					}
					else
					{
						
						 if(! key.setHexId(temp[0]))
							 System.out.println("Key Info: "+key.toString());
						
							
							
					}
						
				  //}
			}else 
			{
				// find the smali resource  files;
				
				
				command[2]="find  ./unpackedProjects/"+ projectName.replace(".apk", "")+"/smali -name R*smali | grep -e 'R\\$string.smali'  ";
				
				temp =(Utills.excuteComamnd(command)).split("\n") ;
				
				
				result ="";
				for (int i =0 ; i< temp.length; i++)
				{
					
					result= result + temp[i].replace("$", "\\$")+" ";
				}
				//.field public static final
				//for (int i =0 ; i < currentProject.getKeys().size(); i++)
				//{
					command[2]=  "grep '.field public static final "+key.getKeyName()+".* = .*' "+ result;
					
					temp= (Utills.excuteComamnd(command)).split("=");
					temp = temp[temp.length-1].split(" ");
					
					// update the kye id 
					key.setHexId(temp[temp.length-1].replace("\n", ""));
					
				}
			//}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	
	}


}
