package com.tapjoy;

import java.io.*;
import java.lang.reflect.*;

public class TapjoyVideoObject implements Serializable
{
    public static final int BUTTON_MAX = 10;
    private static final long serialVersionUID = 1L;
    public int buttonCount;
    public String[][] buttonData;
    public String clickURL;
    public String currencyAmount;
    public String currencyName;
    public String dataLocation;
    public String iconURL;
    public String offerID;
    public String videoAdName;
    public String videoURL;
    public String webviewURL;
    
    public TapjoyVideoObject() {
        super();
        this.buttonData = (String[][])Array.newInstance(String.class, 10, 2);
    }
    
    public void addButton(final String s, final String s2) {
        this.buttonData[this.buttonCount][0] = s;
        this.buttonData[this.buttonCount][1] = s2;
        ++this.buttonCount;
    }
}
