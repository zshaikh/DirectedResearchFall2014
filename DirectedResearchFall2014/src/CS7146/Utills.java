package CS7146;
import java.io.*;
import java.util.ArrayList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.CharacterData;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
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

	 public static ArrayList<Key> getkeysFromXMLs(String projectName)
	 {
		 try 
		 {
			 ArrayList<String> XMLs= new ArrayList<String>();
			 ArrayList<Key> keys= new ArrayList<Key>();
			 String[] command={"/bin/sh", "-c", " ls ./unpackedProjects/"+projectName.replace(".apk", "")+"/res/values/strings.xml" };
			 String result = excuteComamnd(command);
			
			 String files[] = result.split("\n");
			 
			 /*
			  * File f = new File(filePathString);
			*if(f.exists() && !f.isDirectory()) {}
			  * 
			  * */
			 
			 for(int i =0 ; i< files.length; i++)
			 {
				 
				 if(files.length == 1 && files[i].matches(""))
				 {
					 System.out.println("----------------- No strings.xml file Found! -------------------------"); 
				 }else if(!files[i].matches(""))
				 {
				 XMLs.add(files[i]);
				 }
			 }
			 // get the keys from each file..
			
			 for(int i =0 ; i< XMLs.size(); i++)
			 {
				 keys.addAll(getkeysFromXML(projectName,XMLs.get(i))); 
			 }
			 
			 XMLs=null;
			return keys;
			
		} catch (Exception e) 
		{
			e.printStackTrace();
			e.toString();
		}
		 return null;
	 }
	 
	 
	 public static ArrayList<Key> getkeysFromXML(String projectName, String fileName)
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
				         
				           keys.add( new Key(nodes.item(i).getAttributes().getNamedItem("name").toString().replace("\"", "").replace("name=", "").replace(" ", ""),
				        		   keyType));
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
	 
	 public static ArrayList<String> mapKeyToXML(String projectName, String key, String keyType)
		{
		 // this code can be improved by passing the keys array List and work on it here...
			ArrayList<String> mapedkeys = new ArrayList<String>();
			
			
			//System.out.println(" find ./unpackedProjects/"+ projectName.replace(".apk", "") +"/res/ ./ -name '*.xml' -print0 | xargs -0 egrep -l 'android:id=\"@id/"+key+"\"'");
			
			String[] command={"/bin/sh", "-c", " find ./unpackedProjects/"+ projectName.replace(".apk", "") +"/res  -name '*.xml' -print0 | xargs -0 egrep  '.*=\"@.*/"+key+"\".*'" };
			
			String result = excuteComamnd(command);
			
			if(result != null && !result.matches(""))
			{
			
			String temp[]= result.split("\n");
			
			for(int i= 0 ; i< temp.length; i++)
			{
				//System.out.println("mapped key: "+ key + " to Activity: "+temp[i]);
				if(!temp[i].contains("strings.xml") && !temp[i].contains("public.xml"))
				{
					mapedkeys.add(temp[i]);
				}
				
			}
			
			}else
			{
				//System.out.println("The key "+ key + " is not used on any xml file");
			}
			return mapedkeys;
		}
	 
	 
	 
	 public static ArrayList<String> checkIfKeyUsedOnOtherXML(String projectName, String key, String keyType)
		{
		 // this code can be improved by passing the keys array List and work on it here...
			ArrayList<String> mapedkeys = new ArrayList<String>();
			
			
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
		 // this code can be improved by passing the keys array List and work on it here...
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

	 public static ArrayList<String> mapKeyIDToSmaliFile(String projectName, String keyId)
		{
		 // this code can be improved by passing the keys array List and work on it here...
			ArrayList<String> mapedkeys = new ArrayList<String>();
			
			
			
			//System.out.println(" find ./unpackedProjects/"+ projectName.replace(".apk", "") +"/res/ ./ -name '*.xml' -print0 | xargs -0 egrep -l 'android:id=\"@id/"+key+"\"'");
			
			String[] command={"/bin/sh", "-c", " find ./unpackedProjects/"+ projectName.replace(".apk", "") +"/smali  -name '*.smali' -print0 | xargs -0 egrep  '.*"+keyId+".*'" };
			
			//System.out.println(command[2]);
			
			String result = excuteComamnd(command);
			
			if(result != null && !result.matches(""))
			{
			//	System.out.println(result);
			String temp[]= result.split("\n");
			
			for(int i= 0 ; i< temp.length; i++)
			{
				
				if(!temp[i].contains("string.smali"))
				{
					//System.out.println("found in :"+temp[i]);
				
					mapedkeys.add(temp[i]);
				}
			}
			
			}
			return mapedkeys;
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



}
