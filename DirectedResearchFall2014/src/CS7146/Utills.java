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


public class Utills 
{
	static BufferedReader bReader =null;
	
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
			 String[] command={"/bin/sh", "-c", " ls ./unpackedProjects/"+projectName.replace(".apk", "")+"/res/values/*.xml" };
			 String result = excuteComamnd(command);
			
			 String files[] = result.split("\n");
			 
			 for(int i =0 ; i< files.length; i++)
			 {
				 XMLs.add(files[i]);
			 }
			 // get the keys from each file..
			
			 for(int i =0 ; i< XMLs.size(); i++)
			 {
				 keys.addAll(getkeysFromXML(projectName,XMLs.get(i))); 
			 }
			 
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
			e.printStackTrace();
			e.toString();
		}
		 
		 return null;
	 }
	 
	 public static ArrayList<String> mapKeyToActivity(String projectName, String key, String keyType)
		{
			ArrayList<String> mapedkeys = new ArrayList<String>();
			String type=null;
			
			
			//System.out.println(" find ./unpackedProjects/"+ projectName.replace(".apk", "") +"/res/ ./ -name '*.xml' -print0 | xargs -0 egrep -l 'android:id=\"@id/"+key+"\"'");
			
			String[] command={"/bin/sh", "-c", " find ./unpackedProjects/"+ projectName.replace(".apk", "") +"/res/layout  -name '*.xml' -print0 | xargs -0 egrep  '.*"+key+"\".*'" };
			
			String result = excuteComamnd(command);
			
			if(result != null && !result.matches(""))
			{
			
			String temp[]= result.split("\n");
			
			for(int i= 0 ; i< temp.length; i++)
			{
				mapedkeys.add(temp[i]);
				
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
			String type=null;
			
			
			//System.out.println(" find ./unpackedProjects/"+ projectName.replace(".apk", "") +"/res/ ./ -name '*.xml' -print0 | xargs -0 egrep -l 'android:id=\"@id/"+key+"\"'");
			
			String[] command={"/bin/sh", "-c", " find ./unpackedProjects/"+ projectName.replace(".apk", "") +"/code  -name '*.java' -print0 | xargs -0 egrep  '.*"+keyId+".*'" };
			
			//System.out.println(command[2]);
			
			String result = excuteComamnd(command);
			
			if(result != null && !result.matches(""))
			{
			
			String temp[]= result.split("\n");
			
			for(int i= 0 ; i< temp.length; i++)
			{
				if(!temp[i].contains("R.java"))
					mapedkeys.add(temp[i]);
				
			}
			
			}
			return mapedkeys;
		}
}
