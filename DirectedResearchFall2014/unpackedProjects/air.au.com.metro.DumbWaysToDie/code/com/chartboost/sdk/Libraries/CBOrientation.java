package com.chartboost.sdk.Libraries;

public enum CBOrientation
{
    LANDSCAPE("LANDSCAPE", 2);
    
    public static final CBOrientation LANDSCAPE_LEFT;
    
    LANDSCAPE_REVERSE("LANDSCAPE_REVERSE", 4);
    
    public static final CBOrientation LANDSCAPE_RIGHT;
    
    PORTRAIT("PORTRAIT", 1);
    
    public static final CBOrientation PORTRAIT_LEFT;
    
    PORTRAIT_REVERSE("PORTRAIT_REVERSE", 3);
    
    public static final CBOrientation PORTRAIT_RIGHT;
    
    UNSPECIFIED("UNSPECIFIED", 0);
    
    static {
        b = new CBOrientation[] { CBOrientation.UNSPECIFIED, CBOrientation.PORTRAIT, CBOrientation.LANDSCAPE, CBOrientation.PORTRAIT_REVERSE, CBOrientation.LANDSCAPE_REVERSE };
        PORTRAIT_LEFT = CBOrientation.PORTRAIT_REVERSE;
        PORTRAIT_RIGHT = CBOrientation.PORTRAIT;
        LANDSCAPE_LEFT = CBOrientation.LANDSCAPE;
        LANDSCAPE_RIGHT = CBOrientation.LANDSCAPE_REVERSE;
    }
    
    static /* synthetic */ int[] a() {
        final int[] a = CBOrientation.a;
        if (a != null) {
            return a;
        }
        final int[] a2 = new int[values().length];
        while (true) {
            try {
                a2[CBOrientation.LANDSCAPE.ordinal()] = 3;
                try {
                    a2[CBOrientation.LANDSCAPE_REVERSE.ordinal()] = 5;
                    try {
                        a2[CBOrientation.PORTRAIT.ordinal()] = 2;
                        try {
                            a2[CBOrientation.PORTRAIT_REVERSE.ordinal()] = 4;
                            try {
                                a2[CBOrientation.UNSPECIFIED.ordinal()] = 1;
                                return CBOrientation.a = a2;
                            }
                            catch (NoSuchFieldError noSuchFieldError) {}
                        }
                        catch (NoSuchFieldError noSuchFieldError2) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError3) {}
                }
                catch (NoSuchFieldError noSuchFieldError4) {}
            }
            catch (NoSuchFieldError noSuchFieldError5) {
                continue;
            }
            break;
        }
    }
    
    public boolean isLandscape() {
        return this == CBOrientation.LANDSCAPE || this == CBOrientation.LANDSCAPE_REVERSE;
    }
    
    public boolean isPortrait() {
        return this == CBOrientation.PORTRAIT || this == CBOrientation.PORTRAIT_REVERSE;
    }
    
    public CBOrientation rotate180() {
        return this.rotate90().rotate90();
    }
    
    public CBOrientation rotate270() {
        return this.rotate90().rotate90().rotate90();
    }
    
    public CBOrientation rotate90() {
        switch (a()[this.ordinal()]) {
            default: {
                return CBOrientation.UNSPECIFIED;
            }
            case 3: {
                return CBOrientation.PORTRAIT_LEFT;
            }
            case 4: {
                return CBOrientation.LANDSCAPE_RIGHT;
            }
            case 5: {
                return CBOrientation.PORTRAIT_RIGHT;
            }
            case 2: {
                return CBOrientation.LANDSCAPE_LEFT;
            }
        }
    }
    
    public enum Difference
    {
        ANGLE_0("ANGLE_0", 0), 
        ANGLE_180("ANGLE_180", 2), 
        ANGLE_270("ANGLE_270", 3), 
        ANGLE_90("ANGLE_90", 1);
        
        static {
            b = new Difference[] { Difference.ANGLE_0, Difference.ANGLE_90, Difference.ANGLE_180, Difference.ANGLE_270 };
        }
        
        static /* synthetic */ int[] a() {
            final int[] a = Difference.a;
            if (a != null) {
                return a;
            }
            final int[] a2 = new int[values().length];
            while (true) {
                try {
                    a2[Difference.ANGLE_0.ordinal()] = 1;
                    try {
                        a2[Difference.ANGLE_180.ordinal()] = 3;
                        try {
                            a2[Difference.ANGLE_270.ordinal()] = 4;
                            try {
                                a2[Difference.ANGLE_90.ordinal()] = 2;
                                return Difference.a = a2;
                            }
                            catch (NoSuchFieldError noSuchFieldError) {}
                        }
                        catch (NoSuchFieldError noSuchFieldError2) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError3) {}
                }
                catch (NoSuchFieldError noSuchFieldError4) {
                    continue;
                }
                break;
            }
        }
        
        public int getAsInt() {
            switch (a()[this.ordinal()]) {
                default: {
                    return 0;
                }
                case 2: {
                    return 90;
                }
                case 3: {
                    return 180;
                }
                case 4: {
                    return 270;
                }
            }
        }
        
        public boolean isOdd() {
            return this == Difference.ANGLE_90 || this == Difference.ANGLE_270;
        }
        
        public boolean isReverse() {
            return this == Difference.ANGLE_180 || this == Difference.ANGLE_270;
        }
    }
}
