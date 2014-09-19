package com.fusepowered.m2.m2l.util.vast;

import org.w3c.dom.*;
import java.util.*;
import javax.xml.parsers.*;
import java.io.*;
import org.xml.sax.*;

class VastXmlManager
{
    private static final String ROOT_TAG = "MPMoVideoXMLDocRoot";
    private static final String ROOT_TAG_CLOSE = "</MPMoVideoXMLDocRoot>";
    private static final String ROOT_TAG_OPEN = "<MPMoVideoXMLDocRoot>";
    private Document mVastDoc;
    
    private List<String> getStringDataAsList(final VastElementName vastElementName) {
        return this.getStringDataAsList(vastElementName, null, null);
    }
    
    private List<String> getStringDataAsList(final VastElementName vastElementName, final VastElementAttributeName vastElementAttributeName, final VastElementAttributeValue vastElementAttributeValue) {
        final ArrayList<String> list = new ArrayList<String>();
        if (this.mVastDoc != null) {
            final NodeList elementsByTagName = this.mVastDoc.getElementsByTagName(vastElementName.getName());
            if (elementsByTagName != null) {
                for (int i = 0; i < elementsByTagName.getLength(); ++i) {
                    final Node item = elementsByTagName.item(i);
                    if (item != null && this.nodeMatchesFilter(item, vastElementAttributeName, vastElementAttributeValue)) {
                        final Node firstChild = item.getFirstChild();
                        if (firstChild != null) {
                            final String nodeValue = firstChild.getNodeValue();
                            if (nodeValue != null) {
                                list.add(nodeValue.trim());
                            }
                        }
                    }
                }
            }
        }
        return list;
    }
    
    private List<String> getVideoTrackerByAttribute(final VastElementAttributeValue vastElementAttributeValue) {
        return this.getStringDataAsList(VastElementName.VIDEO_TRACKER, VastElementAttributeName.EVENT, vastElementAttributeValue);
    }
    
    private boolean nodeMatchesFilter(final Node node, final VastElementAttributeName vastElementAttributeName, final VastElementAttributeValue vastElementAttributeValue) {
        if (vastElementAttributeName == null || vastElementAttributeValue == null) {
            return true;
        }
        final NamedNodeMap attributes = node.getAttributes();
        if (attributes != null) {
            final Node namedItem = attributes.getNamedItem(vastElementAttributeName.getName());
            if (namedItem != null && vastElementAttributeValue.getValue().equals(namedItem.getNodeValue())) {
                return true;
            }
        }
        return false;
    }
    
    String getClickThroughUrl() {
        final List<String> stringDataAsList = this.getStringDataAsList(VastElementName.CLICK_THROUGH);
        if (stringDataAsList.size() > 0) {
            return stringDataAsList.get(0);
        }
        return null;
    }
    
    List<String> getClickTrackers() {
        return this.getStringDataAsList(VastElementName.CLICK_TRACKER);
    }
    
    List<String> getImpressionTrackers() {
        final List<String> stringDataAsList = this.getStringDataAsList(VastElementName.IMPRESSION_TRACKER);
        stringDataAsList.addAll(this.getStringDataAsList(VastElementName.MP_IMPRESSION_TRACKER));
        return stringDataAsList;
    }
    
    String getMediaFileUrl() {
        final List<String> stringDataAsList = this.getStringDataAsList(VastElementName.MEDIA_FILE);
        if (stringDataAsList.size() > 0) {
            return stringDataAsList.get(0);
        }
        return null;
    }
    
    String getVastAdTagURI() {
        final List<String> stringDataAsList = this.getStringDataAsList(VastElementName.VAST_AD_TAG);
        if (stringDataAsList.size() > 0) {
            return stringDataAsList.get(0);
        }
        return null;
    }
    
    List<String> getVideoCompleteTrackers() {
        return this.getVideoTrackerByAttribute(VastElementAttributeValue.COMPLETE);
    }
    
    List<String> getVideoFirstQuartileTrackers() {
        return this.getVideoTrackerByAttribute(VastElementAttributeValue.FIRST_QUARTILE);
    }
    
    List<String> getVideoMidpointTrackers() {
        return this.getVideoTrackerByAttribute(VastElementAttributeValue.MIDPOINT);
    }
    
    List<String> getVideoStartTrackers() {
        return this.getVideoTrackerByAttribute(VastElementAttributeValue.START);
    }
    
    List<String> getVideoThirdQuartileTrackers() {
        return this.getVideoTrackerByAttribute(VastElementAttributeValue.THIRD_QUARTILE);
    }
    
    void parseVastXml(final String s) throws ParserConfigurationException, IOException, SAXException {
        final String string = "<MPMoVideoXMLDocRoot>" + s.replaceFirst("<\\?.*\\?>", "") + "</MPMoVideoXMLDocRoot>";
        final DocumentBuilderFactory instance = DocumentBuilderFactory.newInstance();
        instance.setCoalescing(true);
        this.mVastDoc = instance.newDocumentBuilder().parse(new InputSource(new StringReader(string)));
    }
    
    enum VastElementAttributeName
    {
        EVENT("EVENT", 0, "event");
        
        private final String name;
        
        private VastElementAttributeName(final String name, final int ordinal, final String name2) {
            this.name = name2;
        }
        
        public String getName() {
            return this.name;
        }
    }
    
    enum VastElementAttributeValue
    {
        COMPLETE("COMPLETE", 4, "complete"), 
        FIRST_QUARTILE("FIRST_QUARTILE", 1, "firstQuartile"), 
        MIDPOINT("MIDPOINT", 2, "midpoint"), 
        START("START", 0, "start"), 
        THIRD_QUARTILE("THIRD_QUARTILE", 3, "thirdQuartile");
        
        private final String value;
        
        private VastElementAttributeValue(final String name, final int ordinal, final String value) {
            this.value = value;
        }
        
        public String getValue() {
            return this.value;
        }
    }
    
    enum VastElementName
    {
        CLICK_THROUGH("CLICK_THROUGH", 2, "ClickThrough"), 
        CLICK_TRACKER("CLICK_TRACKER", 3, "ClickTracking"), 
        IMPRESSION_TRACKER("IMPRESSION_TRACKER", 0, "Impression"), 
        MEDIA_FILE("MEDIA_FILE", 4, "MediaFile"), 
        MP_IMPRESSION_TRACKER("MP_IMPRESSION_TRACKER", 6, "MP_TRACKING_URL"), 
        VAST_AD_TAG("VAST_AD_TAG", 5, "VASTAdTagURI"), 
        VIDEO_TRACKER("VIDEO_TRACKER", 1, "Tracking");
        
        private final String name;
        
        private VastElementName(final String name, final int ordinal, final String name2) {
            this.name = name2;
        }
        
        public String getName() {
            return this.name;
        }
    }
}
