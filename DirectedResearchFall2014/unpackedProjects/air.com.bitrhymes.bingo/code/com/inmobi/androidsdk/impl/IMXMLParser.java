package com.inmobi.androidsdk.impl;

import com.inmobi.commons.internal.*;
import org.xmlpull.v1.*;
import java.io.*;

public final class IMXMLParser
{
    private static String a;
    
    static {
        IMXMLParser.a = "Ad";
    }
    
    public static IMAdUnit buildAdUnitFromResponseData(final Reader input) throws IOException, IMAdException {
        IMAdUnit imAdUnit = null;
        int n2 = 0;
        String attributeValue = null;
    Label_0218_Outer:
        while (true) {
            imAdUnit = new IMAdUnit();
            while (true) {
                int n = 0;
            Label_0494:
                while (true) {
                    XmlPullParser pullParser;
                    int eventType;
                    String name;
                    try {
                        final XmlPullParserFactory instance = XmlPullParserFactory.newInstance();
                        instance.setNamespaceAware(true);
                        pullParser = instance.newPullParser();
                        pullParser.setInput(input);
                        eventType = pullParser.getEventType();
                        n = 0;
                        n2 = 0;
                        name = null;
                        attributeValue = null;
                        if (eventType == 1) {
                            if (n == 0) {
                                throw new IMAdException("App Id may be Invalid or Inactive", 800);
                            }
                            break;
                        }
                    }
                    catch (XmlPullParserException ex) {
                        throw new IMAdException("Exception constructing Ad", (Exception)ex, 200);
                    }
                    if (eventType == 0) {
                        break Label_0494;
                    }
                    int n3;
                    int n4;
                    if (eventType == 2) {
                        name = pullParser.getName();
                        if (name != null) {
                            n3 = 1;
                        }
                        else {
                            n3 = n;
                        }
                        if (name != null && name.equalsIgnoreCase(IMXMLParser.a)) {
                            imAdUnit.setWidth(Integer.parseInt(pullParser.getAttributeValue((String)null, "width")));
                            imAdUnit.setHeight(Integer.parseInt(pullParser.getAttributeValue((String)null, "height")));
                            imAdUnit.setAdActionName(IMAdUnit.adActionNamefromString(pullParser.getAttributeValue((String)null, "actionName")));
                            imAdUnit.setAdType(IMAdUnit.adTypefromString(pullParser.getAttributeValue((String)null, "type")));
                            attributeValue = pullParser.getAttributeValue((String)null, "errorcode");
                            n4 = 1;
                        }
                        else {
                            n4 = n2;
                        }
                    }
                    else if (eventType == 3) {
                        n3 = n;
                        n4 = n2;
                        name = null;
                    }
                    else if (eventType == 5) {
                        imAdUnit.setCDATABlock(pullParser.getText());
                        n3 = n;
                        n4 = n2;
                    }
                    else {
                        if (eventType == 4 && name != null && name.equalsIgnoreCase("AdURL")) {
                            imAdUnit.setTargetUrl(pullParser.getText());
                            imAdUnit.setDefaultTargetUrl(pullParser.getText());
                        }
                        break Label_0494;
                    }
                    final int nextToken = pullParser.nextToken();
                    n2 = n4;
                    n = n3;
                    eventType = nextToken;
                    continue Label_0218_Outer;
                }
                int n3 = n;
                int n4 = n2;
                continue;
            }
        }
        if (n2 == 0) {
            throw new IMAdException("No Ads present", 100);
        }
        if (attributeValue != null) {
            if (attributeValue.equals("OOF")) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IP Address not found in CCID File");
                throw new IMAdException("IP Address not found in CCID File", 400);
            }
            if (attributeValue.equals("BADIP")) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "Invalid IP Address");
                throw new IMAdException("Invalid IP Address", 500);
            }
            if (attributeValue.equals("UAND")) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "User Agent not detected through using wurfl");
                throw new IMAdException("User Agent not detected through using wurfl", 600);
            }
            if (attributeValue.equals("-UA")) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "No User Agent found");
                throw new IMAdException("No User Agent found", 700);
            }
        }
        return imAdUnit;
    }
}
