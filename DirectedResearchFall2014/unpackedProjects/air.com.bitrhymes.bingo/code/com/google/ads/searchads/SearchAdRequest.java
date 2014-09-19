package com.google.ads.searchads;

import com.google.ads.*;
import android.content.*;
import java.util.*;
import com.google.ads.mediation.admob.*;
import com.google.ads.mediation.*;
import android.graphics.*;

public class SearchAdRequest extends AdRequest
{
    private String a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private String h;
    private int i;
    private int j;
    private BorderType k;
    private int l;
    private String m;
    
    private String a(final int n) {
        return String.format(Locale.US, "#%06x", 0xFFFFFF & n);
    }
    
    @Override
    public Map<String, Object> getRequestMap(final Context context) {
        AdMobAdapterExtras networkExtras = this.getNetworkExtras(AdMobAdapterExtras.class);
        if (networkExtras == null) {
            networkExtras = new AdMobAdapterExtras();
            this.setNetworkExtras(networkExtras);
        }
        if (this.a != null) {
            networkExtras.getExtras().put("q", this.a);
        }
        if (Color.alpha(this.b) != 0) {
            networkExtras.getExtras().put("bgcolor", this.a(this.b));
        }
        if (Color.alpha(this.c) == 255 && Color.alpha(this.d) == 255) {
            networkExtras.getExtras().put("gradientfrom", this.a(this.c));
            networkExtras.getExtras().put("gradientto", this.a(this.d));
        }
        if (Color.alpha(this.e) != 0) {
            networkExtras.getExtras().put("hcolor", this.a(this.e));
        }
        if (Color.alpha(this.f) != 0) {
            networkExtras.getExtras().put("dcolor", this.a(this.f));
        }
        if (Color.alpha(this.g) != 0) {
            networkExtras.getExtras().put("acolor", this.a(this.g));
        }
        if (this.h != null) {
            networkExtras.getExtras().put("font", this.h);
        }
        networkExtras.getExtras().put("headersize", Integer.toString(this.i));
        if (Color.alpha(this.j) != 0) {
            networkExtras.getExtras().put("bcolor", this.a(this.j));
        }
        if (this.k != null) {
            networkExtras.getExtras().put("btype", this.k.toString());
        }
        networkExtras.getExtras().put("bthick", Integer.toString(this.l));
        if (this.m != null) {
            networkExtras.getExtras().put("channel", this.m);
        }
        return super.getRequestMap(context);
    }
    
    public void setAnchorTextColor(final int g) {
        this.g = g;
    }
    
    public void setBackgroundColor(final int b) {
        if (Color.alpha(b) == 255) {
            this.b = b;
            this.c = 0;
            this.d = 0;
        }
    }
    
    public void setBackgroundGradient(final int c, final int d) {
        if (Color.alpha(c) == 255 && Color.alpha(d) == 255) {
            this.b = Color.argb(0, 0, 0, 0);
            this.c = c;
            this.d = d;
        }
    }
    
    public void setBorderColor(final int j) {
        this.j = j;
    }
    
    public void setBorderThickness(final int l) {
        this.l = l;
    }
    
    public void setBorderType(final BorderType k) {
        this.k = k;
    }
    
    public void setCustomChannels(final String m) {
        this.m = m;
    }
    
    public void setDescriptionTextColor(final int f) {
        this.f = f;
    }
    
    public void setFontFace(final String h) {
        this.h = h;
    }
    
    public void setHeaderTextColor(final int e) {
        this.e = e;
    }
    
    public void setHeaderTextSize(final int i) {
        this.i = i;
    }
    
    public void setQuery(final String a) {
        this.a = a;
    }
    
    public enum BorderType
    {
        DASHED("dashed"), 
        DOTTED("dotted"), 
        NONE("none"), 
        SOLID("solid");
        
        private String a;
        
        private BorderType(final String a) {
            this.a = a;
        }
        
        @Override
        public String toString() {
            return this.a;
        }
    }
}
