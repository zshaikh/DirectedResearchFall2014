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
		 
		 Process p = Runtime.getRuntime().exec(cmd);
	
			BufferedReader stdInput = new BufferedReader(new InputStreamReader(p.getInputStream()));
			
			while ((s = stdInput.readLine()) != null) 
			{
			         commandResult += s+"\n"; System.out.println(s);
			}
			

		} catch( Exception e)
		{
			 e.printStackTrace();
		}
		// System.out.println("Command result :"+commandResult);
		 
			return commandResult;
	}

	 public static ArrayList<String> getkeysFromXMLs(String projectName)
	 {
		 try 
		 {
			 ArrayList<String> XMLs= new ArrayList<String>();
			 ArrayList<String> keys= new ArrayList<String>();
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
	 
	 
	 public static ArrayList<String> getkeysFromXML(String projectName, String fileName)
	 {
		 String fixedXMLfileContent = null, temp;
		 ArrayList<String> keys = new ArrayList<String>();
		 
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
			        	 System.out.println(nodes.toString());
			        	 
				        // iterate the Strings...
				        for (int i = 0; i < nodes.getLength(); i++) 
				        {
				            element = (Element) nodes.item(i);
				          // System.out.println("Key Name :"+  nodes.item(i).getAttributes().item(0).getNodeValue());	
				          // System.out.println(" Value: "+getCharacterDataFromElement(element));
				         
				           keys.add(nodes.item(i).getAttributes().item(0).getNodeValue() );
				           
				        		   
				        }
				        
		
			 return keys;
		} catch (Exception e)
		{
			e.printStackTrace();
			e.toString();
		}
		 
		 return null;
	 }
	 
	 public static ArrayList<String> mapKeyToActivity(String projectName, String key)
		{
			ArrayList<String> mapedkeys = new ArrayList<String>();
			//System.out.println(" find ./unpackedProjects/"+ projectName.replace(".apk", "") +"/res/ ./ -name '*.xml' -print0 | xargs -0 egrep -l 'android:id=\"@id/"+key+"\"'");
			String[] command={"/bin/sh", "-c", " find ./unpackedProjects/"+ projectName.replace(".apk", "") +"/res/layout  -name '*.xml' -print0 | xargs -0 egrep -l 'android:id=\"@id/"+key+"\"'" };
			
			String result = excuteComamnd(command);
			
			if(result != null && !result.matches(""))
			{
			
			String temp[]= result.split("\n");
			
			for(int i= 0 ; i< temp.length; i++)
			{
				mapedkeys.add(temp[i]);
				
			}
			
			}
			return mapedkeys;
		}
	 
}
