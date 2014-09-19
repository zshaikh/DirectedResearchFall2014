package com.adobe.air;

import android.graphics.*;

class DrawRequest
{
    public static final int messageID = 1009;
    public int bgColor;
    public Bitmap bm;
    public int dstHt;
    public int dstWd;
    public int dstX;
    public int dstY;
    public boolean fullsc;
    public int ht;
    public boolean scale;
    public int wd;
    public int x;
    public int y;
    
    public DrawRequest(final int x, final int y, final int wd, final int ht, final Bitmap bm) {
        super();
        this.scale = false;
        this.fullsc = false;
        this.x = x;
        this.y = y;
        this.wd = wd;
        this.ht = ht;
        this.bm = bm;
        this.scale = false;
    }
    
    public DrawRequest(final int x, final int y, final int wd, final int ht, final Bitmap bm, final int dstX, final int dstY, final int dstWd, final int dstHt, final boolean fullsc, final int bgColor) {
        super();
        this.scale = false;
        this.fullsc = false;
        this.x = x;
        this.y = y;
        this.wd = wd;
        this.ht = ht;
        this.bm = bm;
        this.dstX = dstX;
        this.dstY = dstY;
        this.dstWd = dstWd;
        this.dstHt = dstHt;
        this.scale = true;
        this.fullsc = fullsc;
        this.bgColor = bgColor;
    }
}
