package com.facebook;

import java.io.*;

class AppEventsLogger$AppEvent$SerializationProxyV1 implements Serializable
{
    private static final long serialVersionUID = -2488473066578201069L;
    private final boolean isImplicit;
    private final String jsonString;
    
    private AppEventsLogger$AppEvent$SerializationProxyV1(final String jsonString, final boolean isImplicit) {
        super();
        this.jsonString = jsonString;
        this.isImplicit = isImplicit;
    }
    
    private Object readResolve() {
        return new AppEventsLogger$AppEvent(this.jsonString, this.isImplicit, null);
    }
}
