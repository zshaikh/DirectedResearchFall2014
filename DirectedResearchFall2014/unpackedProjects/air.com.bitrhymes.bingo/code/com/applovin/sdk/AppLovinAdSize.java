package com.applovin.sdk;

public class AppLovinAdSize
{
    public static final AppLovinAdSize BANNER;
    public static final AppLovinAdSize INTERSTITIAL;
    public static final AppLovinAdSize LEADER;
    public static final AppLovinAdSize MREC;
    public static final int SPAN = -1;
    private final int a;
    private final int b;
    private final String c;
    
    static {
        BANNER = new AppLovinAdSize(-1, 50, "BANNER");
        LEADER = new AppLovinAdSize(-1, 75, "LEADER");
        INTERSTITIAL = new AppLovinAdSize(-1, -1, "INTER");
        MREC = new AppLovinAdSize(-1, -1, "MREC");
    }
    
    AppLovinAdSize(final int a, final int b, final String s) {
        super();
        if (a < 0 && a != -1) {
            throw new IllegalArgumentException("Ad width must be a positive number. Number provided: " + a);
        }
        if (a > 9999) {
            throw new IllegalArgumentException("Ad width must be less then 9999. Number provided: " + a);
        }
        if (b < 0 && b != -1) {
            throw new IllegalArgumentException("Ad height must be a positive number. Number provided: " + b);
        }
        if (b > 9999) {
            throw new IllegalArgumentException("Ad height must be less then 9999. Number provided: " + b);
        }
        if (s == null) {
            throw new IllegalArgumentException("No label specified");
        }
        if (s.length() > 9) {
            throw new IllegalArgumentException("Provided label is too long. Label provided: " + s);
        }
        this.a = a;
        this.b = b;
        this.c = s;
    }
    
    private static int a(final String s) {
        if ("span".equalsIgnoreCase(s)) {
            return -1;
        }
        try {
            return Integer.parseInt(s);
        }
        catch (NumberFormatException ex) {
            return 0;
        }
    }
    
    public static AppLovinAdSize fromString(final String s) {
        if (s == null || s.length() < 1) {
            return null;
        }
        final String lowerCase = s.toLowerCase();
        if (lowerCase.equals("banner")) {
            return AppLovinAdSize.BANNER;
        }
        if (lowerCase.equals("interstitial") || lowerCase.equals("inter")) {
            return AppLovinAdSize.INTERSTITIAL;
        }
        if (lowerCase.equals("mrec")) {
            return AppLovinAdSize.MREC;
        }
        if (lowerCase.equals("leader")) {
            return AppLovinAdSize.LEADER;
        }
        final String[] split = s.split("x");
        if (split.length == 2) {
            return new AppLovinAdSize(a(split[0]), a(split[1]), s);
        }
        return new AppLovinAdSize(0, 0, s);
    }
    
    public int getHeight() {
        return this.b;
    }
    
    public String getLabel() {
        return this.c;
    }
    
    public int getWidth() {
        return this.a;
    }
    
    @Override
    public String toString() {
        return this.c;
    }
}
