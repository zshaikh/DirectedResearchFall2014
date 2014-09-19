package com.facebook.widget;

import com.facebook.model.*;

public class GraphObjectAdapter$SectionAndItem
{
    public GraphObject graphObject;
    public String sectionKey;
    
    public GraphObjectAdapter$SectionAndItem(final String sectionKey, final GraphObject graphObject) {
        super();
        this.sectionKey = sectionKey;
        this.graphObject = graphObject;
    }
    
    public GraphObjectAdapter$SectionAndItem$Type getType() {
        if (this.sectionKey == null) {
            return GraphObjectAdapter$SectionAndItem$Type.ACTIVITY_CIRCLE;
        }
        if (this.graphObject == null) {
            return GraphObjectAdapter$SectionAndItem$Type.SECTION_HEADER;
        }
        return GraphObjectAdapter$SectionAndItem$Type.GRAPH_OBJECT;
    }
}
