package com.applovin.impl.sdk;

import com.applovin.sdk.*;
import java.util.*;

class ba
{
    private final CharSequence a;
    private final AppLovinLogger b;
    private final Map c;
    private bb d;
    
    public ba(final CharSequence a, final AppLovinLogger b) {
        super();
        this.c = new HashMap(1);
        if (a == null) {
            throw new IllegalArgumentException("No template specified");
        }
        if (b == null) {
            throw new IllegalArgumentException("No logger specified");
        }
        this.a = a;
        this.b = b;
    }
    
    private String a(final String s) {
        final int index = s.indexOf(58);
        String lowerCase;
        String s2;
        if (index > 0) {
            final String trim = s.substring(0, index).trim();
            String trim2;
            if (index + 1 < s.length()) {
                trim2 = s.substring(index + 1).trim();
            }
            else {
                trim2 = "";
            }
            lowerCase = trim;
            s2 = trim2;
        }
        else {
            lowerCase = s.trim().toLowerCase();
            s2 = null;
        }
        Label_0169: {
            if (this.d == null) {
                break Label_0169;
            }
            final String a = this.d.a(lowerCase);
            String substring;
            if (a != null) {
                substring = a.substring(0, Math.min(a.length(), 30));
            }
            else {
                substring = "";
            }
            this.b.d("TemplateProcessor", lowerCase + " was resolved to \"" + substring + "\"");
            if (a == null) {
                break Label_0169;
            }
            return a;
        }
        final String a = this.c.get(lowerCase);
        if (a != null) {
            return a;
        }
        final String s3 = this.c.get(lowerCase.toLowerCase());
        if (s3 != null) {
            return s3;
        }
        return s2;
    }
    
    public String a() {
        final StringBuffer sb = new StringBuffer();
        final StringBuffer sb2 = new StringBuffer();
        int i = 0;
        int n = 0;
        int n2 = 0;
        int n3 = 0;
        while (i < this.a.length()) {
            final char char1 = this.a.charAt(i);
            if (n3 == 0) {
                if (char1 == '<') {
                    if (n2 == 0) {
                        n2 = 1;
                    }
                    else {
                        sb.append("<");
                        n2 = 0;
                    }
                }
                else if (char1 == '%') {
                    if (n2 != 0) {
                        n3 = 1;
                        n2 = 0;
                    }
                    else {
                        sb.append(char1);
                    }
                }
                else {
                    if (n2 != 0) {
                        sb.append("<");
                        n2 = 0;
                    }
                    sb.append(char1);
                }
            }
            else if (char1 == '%') {
                if (n == 0) {
                    n = 1;
                }
                else {
                    sb2.append("%");
                    n = 0;
                }
            }
            else if (char1 == '>') {
                if (n != 0) {
                    final String string = sb2.toString();
                    sb2.setLength(0);
                    final String a = this.a(string);
                    if (a != null) {
                        sb.append(a);
                    }
                    else {
                        sb.append("");
                        this.b.w("TemplateProcessor", "Unable to resolve \"" + string + "\", using empty string");
                    }
                    n = 0;
                    n3 = 0;
                }
                else {
                    sb2.append(">");
                }
            }
            else {
                sb2.append(char1);
            }
            ++i;
        }
        if (n2 != 0) {
            sb.append("<");
        }
        if (n3 != 0) {
            sb.append("<%").append(sb2);
            if (n != 0) {
                sb.append("%");
            }
        }
        return sb.toString();
    }
    
    public void a(final String s, final String s2) {
        if (s == null) {
            throw new IllegalArgumentException("No name specified");
        }
        this.c.put(s, s2);
    }
}
