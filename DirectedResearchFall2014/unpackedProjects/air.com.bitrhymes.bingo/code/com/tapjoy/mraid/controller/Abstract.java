package com.tapjoy.mraid.controller;

import android.content.*;
import com.tapjoy.mraid.view.*;
import org.json.*;
import android.os.*;
import com.tapjoy.mraid.util.*;
import java.lang.reflect.*;

public abstract class Abstract
{
    private static final String BOOLEAN_TYPE = "boolean";
    public static final String EXIT = "exit";
    private static final String FLOAT_TYPE = "float";
    public static final String FULL_SCREEN = "fullscreen";
    private static final String INT_TYPE = "int";
    private static final String NAVIGATION_TYPE = "class com.tapjoy.mraid.util.NavigationStringEnum";
    private static final String STRING_TYPE = "class java.lang.String";
    public static final String STYLE_NORMAL = "normal";
    private static final String TRANSITION_TYPE = "class com.tapjoy.mraid.util.TransitionStringEnum";
    protected Context mContext;
    protected MraidView mMraidView;
    
    public Abstract(final MraidView mMraidView, final Context mContext) {
        super();
        this.mMraidView = mMraidView;
        this.mContext = mContext;
    }
    
    protected static Object getFromJSON(final JSONObject p0, final Class<?> p1) throws IllegalAccessException, InstantiationException, NumberFormatException, NullPointerException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: invokevirtual   java/lang/Class.getDeclaredFields:()[Ljava/lang/reflect/Field;
        //     4: astore_2       
        //     5: aload_1        
        //     6: invokevirtual   java/lang/Class.newInstance:()Ljava/lang/Object;
        //     9: astore_3       
        //    10: iconst_0       
        //    11: istore          4
        //    13: iload           4
        //    15: aload_2        
        //    16: arraylength    
        //    17: if_icmpge       313
        //    20: aload_2        
        //    21: iload           4
        //    23: aaload         
        //    24: astore          5
        //    26: aload           5
        //    28: invokevirtual   java/lang/reflect/Field.getName:()Ljava/lang/String;
        //    31: bipush          95
        //    33: bipush          45
        //    35: invokevirtual   java/lang/String.replace:(CC)Ljava/lang/String;
        //    38: astore          6
        //    40: aload           5
        //    42: invokevirtual   java/lang/reflect/Field.getType:()Ljava/lang/Class;
        //    45: invokevirtual   java/lang/Object.toString:()Ljava/lang/String;
        //    48: astore          7
        //    50: aload           7
        //    52: ldc             "int"
        //    54: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    57: ifeq            163
        //    60: aload_0        
        //    61: aload           6
        //    63: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    66: invokevirtual   java/lang/String.toLowerCase:()Ljava/lang/String;
        //    69: astore          9
        //    71: aload           9
        //    73: ldc             "#"
        //    75: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //    78: istore          10
        //    80: iload           10
        //    82: ifeq            153
        //    85: iconst_m1      
        //    86: istore          11
        //    88: aload           9
        //    90: ldc             "#0x"
        //    92: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //    95: ifeq            133
        //    98: aload           9
        //   100: iconst_1       
        //   101: invokevirtual   java/lang/String.substring:(I)Ljava/lang/String;
        //   104: invokestatic    java/lang/Integer.decode:(Ljava/lang/String;)Ljava/lang/Integer;
        //   107: invokevirtual   java/lang/Integer.intValue:()I
        //   110: istore          14
        //   112: iload           14
        //   114: istore          11
        //   116: aload           5
        //   118: aload_3        
        //   119: iload           11
        //   121: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   124: invokevirtual   java/lang/reflect/Field.set:(Ljava/lang/Object;Ljava/lang/Object;)V
        //   127: iinc            4, 1
        //   130: goto            13
        //   133: aload           9
        //   135: iconst_1       
        //   136: invokevirtual   java/lang/String.substring:(I)Ljava/lang/String;
        //   139: bipush          16
        //   141: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;I)I
        //   144: istore          13
        //   146: iload           13
        //   148: istore          11
        //   150: goto            116
        //   153: aload           9
        //   155: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //   158: istore          11
        //   160: goto            116
        //   163: aload           7
        //   165: ldc             "class java.lang.String"
        //   167: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   170: ifeq            198
        //   173: aload           5
        //   175: aload_3        
        //   176: aload_0        
        //   177: aload           6
        //   179: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   182: invokevirtual   java/lang/reflect/Field.set:(Ljava/lang/Object;Ljava/lang/Object;)V
        //   185: goto            127
        //   188: astore          8
        //   190: aload           8
        //   192: invokevirtual   org/json/JSONException.printStackTrace:()V
        //   195: goto            127
        //   198: aload           7
        //   200: ldc             "boolean"
        //   202: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   205: ifeq            226
        //   208: aload           5
        //   210: aload_3        
        //   211: aload_0        
        //   212: aload           6
        //   214: invokevirtual   org/json/JSONObject.getBoolean:(Ljava/lang/String;)Z
        //   217: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   220: invokevirtual   java/lang/reflect/Field.set:(Ljava/lang/Object;Ljava/lang/Object;)V
        //   223: goto            127
        //   226: aload           7
        //   228: ldc             "float"
        //   230: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   233: ifeq            257
        //   236: aload           5
        //   238: aload_3        
        //   239: aload_0        
        //   240: aload           6
        //   242: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   245: invokestatic    java/lang/Float.parseFloat:(Ljava/lang/String;)F
        //   248: invokestatic    java/lang/Float.valueOf:(F)Ljava/lang/Float;
        //   251: invokevirtual   java/lang/reflect/Field.set:(Ljava/lang/Object;Ljava/lang/Object;)V
        //   254: goto            127
        //   257: aload           7
        //   259: ldc             "class com.tapjoy.mraid.util.NavigationStringEnum"
        //   261: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   264: ifeq            285
        //   267: aload           5
        //   269: aload_3        
        //   270: aload_0        
        //   271: aload           6
        //   273: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   276: invokestatic    com/tapjoy/mraid/util/NavigationStringEnum.fromString:(Ljava/lang/String;)Lcom/tapjoy/mraid/util/NavigationStringEnum;
        //   279: invokevirtual   java/lang/reflect/Field.set:(Ljava/lang/Object;Ljava/lang/Object;)V
        //   282: goto            127
        //   285: aload           7
        //   287: ldc             "class com.tapjoy.mraid.util.TransitionStringEnum"
        //   289: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   292: ifeq            127
        //   295: aload           5
        //   297: aload_3        
        //   298: aload_0        
        //   299: aload           6
        //   301: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   304: invokestatic    com/tapjoy/mraid/util/TransitionStringEnum.fromString:(Ljava/lang/String;)Lcom/tapjoy/mraid/util/TransitionStringEnum;
        //   307: invokevirtual   java/lang/reflect/Field.set:(Ljava/lang/Object;Ljava/lang/Object;)V
        //   310: goto            127
        //   313: aload_3        
        //   314: areturn        
        //   315: astore          12
        //   317: goto            116
        //    Exceptions:
        //  throws java.lang.IllegalAccessException
        //  throws java.lang.InstantiationException
        //  throws java.lang.NumberFormatException
        //  throws java.lang.NullPointerException
        //    Signature:
        //  (Lorg/json/JSONObject;Ljava/lang/Class<*>;)Ljava/lang/Object;
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  50     80     188    198    Lorg/json/JSONException;
        //  88     112    315    320    Ljava/lang/NumberFormatException;
        //  88     112    188    198    Lorg/json/JSONException;
        //  116    127    188    198    Lorg/json/JSONException;
        //  133    146    315    320    Ljava/lang/NumberFormatException;
        //  133    146    188    198    Lorg/json/JSONException;
        //  153    160    188    198    Lorg/json/JSONException;
        //  163    185    188    198    Lorg/json/JSONException;
        //  198    223    188    198    Lorg/json/JSONException;
        //  226    254    188    198    Lorg/json/JSONException;
        //  257    282    188    198    Lorg/json/JSONException;
        //  285    310    188    198    Lorg/json/JSONException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0116:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public abstract void stopAllListeners();
    
    public static class Dimensions extends ReflectedParcelable
    {
        public static final Parcelable$Creator<Dimensions> CREATOR;
        public int height;
        public int width;
        public int x;
        public int y;
        
        static {
            CREATOR = (Parcelable$Creator)new Parcelable$Creator<Dimensions>() {
                public Dimensions createFromParcel(final Parcel parcel) {
                    return new Dimensions(parcel);
                }
                
                public Dimensions[] newArray(final int n) {
                    return new Dimensions[n];
                }
            };
        }
        
        public Dimensions() {
            super();
            this.x = -1;
            this.y = -1;
            this.width = -1;
            this.height = -1;
        }
        
        protected Dimensions(final Parcel parcel) {
            super(parcel);
        }
    }
    
    public static class PlayerProperties extends ReflectedParcelable
    {
        public static final Parcelable$Creator<PlayerProperties> CREATOR;
        public boolean audioMuted;
        public boolean autoPlay;
        public boolean doLoop;
        public boolean inline;
        public boolean showControl;
        public String startStyle;
        public String stopStyle;
        
        static {
            CREATOR = (Parcelable$Creator)new Parcelable$Creator<PlayerProperties>() {
                public PlayerProperties createFromParcel(final Parcel parcel) {
                    return new PlayerProperties(parcel);
                }
                
                public PlayerProperties[] newArray(final int n) {
                    return new PlayerProperties[n];
                }
            };
        }
        
        public PlayerProperties() {
            super();
            this.showControl = true;
            this.autoPlay = true;
            this.audioMuted = false;
            this.doLoop = false;
            this.stopStyle = "normal";
            this.startStyle = "normal";
            this.inline = false;
        }
        
        public PlayerProperties(final Parcel parcel) {
            super(parcel);
        }
        
        public boolean doLoop() {
            return this.doLoop;
        }
        
        public boolean doMute() {
            return this.audioMuted;
        }
        
        public boolean exitOnComplete() {
            return this.stopStyle.equalsIgnoreCase("exit");
        }
        
        public boolean isAutoPlay() {
            return this.autoPlay;
        }
        
        public boolean isFullScreen() {
            return this.startStyle.equalsIgnoreCase("fullscreen");
        }
        
        public void muteAudio() {
            this.audioMuted = true;
        }
        
        public void setProperties(final boolean audioMuted, final boolean autoPlay, final boolean showControl, final boolean inline, final boolean doLoop, final String startStyle, final String stopStyle) {
            this.autoPlay = autoPlay;
            this.showControl = showControl;
            this.doLoop = doLoop;
            this.audioMuted = audioMuted;
            this.startStyle = startStyle;
            this.stopStyle = stopStyle;
            this.inline = inline;
        }
        
        public void setStopStyle(final String stopStyle) {
            this.stopStyle = stopStyle;
        }
        
        public boolean showControl() {
            return this.showControl;
        }
    }
    
    public static class Properties extends ReflectedParcelable
    {
        public static final Parcelable$Creator<Properties> CREATOR;
        public int backgroundColor;
        public float backgroundOpacity;
        public boolean isModal;
        public boolean lockOrientation;
        public boolean useBackground;
        public boolean useCustomClose;
        
        static {
            CREATOR = (Parcelable$Creator)new Parcelable$Creator<Properties>() {
                public Properties createFromParcel(final Parcel parcel) {
                    return new Properties(parcel);
                }
                
                public Properties[] newArray(final int n) {
                    return new Properties[n];
                }
            };
        }
        
        public Properties() {
            super();
            this.useBackground = false;
            this.backgroundColor = 0;
            this.backgroundOpacity = 0.0f;
            this.isModal = false;
            this.lockOrientation = false;
            this.useCustomClose = false;
        }
        
        protected Properties(final Parcel parcel) {
            super(parcel);
        }
    }
    
    public static class ReflectedParcelable implements Parcelable
    {
        public ReflectedParcelable() {
            super();
        }
        
        protected ReflectedParcelable(final Parcel parcel) {
            super();
            final Field[] declaredFields = this.getClass().getDeclaredFields();
            int n = 0;
            while (true) {
                try {
                    if (n >= declaredFields.length) {
                        goto Label_0106;
                    }
                    final Field field = declaredFields[n];
                    final Class<?> type = field.getType();
                    if (!type.isEnum()) {
                        goto Label_0107;
                    }
                    final String string = type.toString();
                    if (string.equals("class com.tapjoy.mraid.util.NavigationStringEnum")) {
                        field.set(this, NavigationStringEnum.fromString(parcel.readString()));
                    }
                    else if (string.equals("class com.tapjoy.mraid.util.TransitionStringEnum")) {
                        field.set(this, TransitionStringEnum.fromString(parcel.readString()));
                    }
                }
                catch (IllegalArgumentException ex) {
                    ex.printStackTrace();
                }
                catch (IllegalAccessException ex2) {
                    ex2.printStackTrace();
                    return;
                }
                ++n;
            }
        }
        
        public int describeContents() {
            return 0;
        }
        
        public void writeToParcel(final Parcel parcel, final int n) {
            final Field[] declaredFields = this.getClass().getDeclaredFields();
            int n2 = 0;
            while (true) {
                try {
                    if (n2 >= declaredFields.length) {
                        goto Label_0111;
                    }
                    final Field field = declaredFields[n2];
                    final Class<?> type = field.getType();
                    if (!type.isEnum()) {
                        goto Label_0112;
                    }
                    final String string = type.toString();
                    if (string.equals("class com.tapjoy.mraid.util.NavigationStringEnum")) {
                        parcel.writeString(((NavigationStringEnum)field.get(this)).getText());
                    }
                    else if (string.equals("class com.tapjoy.mraid.util.TransitionStringEnum")) {
                        parcel.writeString(((TransitionStringEnum)field.get(this)).getText());
                    }
                }
                catch (IllegalArgumentException ex) {
                    ex.printStackTrace();
                }
                catch (IllegalAccessException ex2) {
                    ex2.printStackTrace();
                    return;
                }
                ++n2;
            }
        }
    }
}
