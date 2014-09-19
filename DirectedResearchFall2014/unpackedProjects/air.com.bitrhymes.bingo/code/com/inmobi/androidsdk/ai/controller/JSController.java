package com.inmobi.androidsdk.ai.controller;

import com.inmobi.androidsdk.ai.container.*;
import android.content.*;
import java.lang.reflect.*;
import com.inmobi.androidsdk.ai.controller.util.*;
import org.json.*;
import android.os.*;

public abstract class JSController
{
    public static final String EXIT = "exit";
    public static final String FULL_SCREEN = "fullscreen";
    public static final String STYLE_NORMAL = "normal";
    protected ExpandProperties expProps;
    protected IMWebView imWebView;
    protected Context mContext;
    protected ExpandProperties temporaryexpProps;
    
    public JSController(final IMWebView imWebView, final Context mContext) {
        super();
        this.imWebView = imWebView;
        this.mContext = mContext;
        this.expProps = new ExpandProperties();
        this.temporaryexpProps = new ExpandProperties();
    }
    
    protected static Object getFromJSON(final JSONObject jsonObject, final Class<?> clazz) throws IllegalAccessException, InstantiationException, NumberFormatException, NullPointerException {
        final Field[] array = null;
        final Field[] declaredFields = clazz.getDeclaredFields();
        final Object instance = clazz.newInstance();
        int i = 0;
    Label_0019:
        while (i < declaredFields.length) {
            final Field field = declaredFields[i];
            final String replace = field.getName().replace('_', '-');
            final String string = field.getType().toString();
        Label_0134:
            while (true) {
                try {
                Label_0122:
                    while (true) {
                        final String lowerCase;
                        if (string.equals("int")) {
                            lowerCase = jsonObject.getString(replace).toLowerCase();
                            if (!lowerCase.startsWith("#")) {
                                final int j = Integer.parseInt(lowerCase);
                                break Label_0122;
                            }
                        }
                        else {
                            if (string.equals("class java.lang.String")) {
                                field.set(instance, jsonObject.getString(replace));
                                break Label_0134;
                            }
                            if (string.equals("boolean")) {
                                field.set(instance, jsonObject.getBoolean(replace));
                                break Label_0134;
                            }
                            if (string.equals("float")) {
                                field.set(instance, Float.parseFloat(jsonObject.getString(replace)));
                                break Label_0134;
                            }
                            if (string.equals("class com.mraid.NavigationStringEnum")) {
                                field.set(instance, IMNavigationStringEnum.fromString(jsonObject.getString(replace)));
                                break Label_0134;
                            }
                            if (string.equals("class com.mraid.TransitionStringEnum")) {
                                field.set(instance, IMTransitionStringEnum.fromString(jsonObject.getString(replace)));
                                break Label_0134;
                            }
                            break Label_0134;
                        }
                        while (true) {
                            try {
                                int j;
                                if (lowerCase.startsWith("#0x")) {
                                    j = Integer.decode(lowerCase.substring(1));
                                }
                                else {
                                    j = Integer.parseInt(lowerCase.substring(1), 16);
                                }
                                field.set(instance, j);
                                ++i;
                                continue Label_0019;
                            }
                            catch (NumberFormatException ex) {
                                final int j = -1;
                                continue Label_0122;
                            }
                            continue Label_0122;
                        }
                        break;
                    }
                }
                catch (JSONException ex2) {
                    continue Label_0134;
                }
                continue Label_0134;
            }
        }
        return instance;
    }
    
    public void reinitializeExpandProperties() {
        this.expProps.reinitializeExpandProperties();
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
                public Dimensions a(final Parcel parcel) {
                    return new Dimensions(parcel);
                }
                
                public Dimensions[] a(final int n) {
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
        
        @Override
        public String toString() {
            return "x: " + this.x + ", y: " + this.y + ", width: " + this.width + ", height: " + this.height;
        }
    }
    
    public static class ExpandProperties extends ReflectedParcelable
    {
        public static final Parcelable$Creator<ExpandProperties> CREATOR;
        public int actualHeightRequested;
        public int actualWidthRequested;
        public int bottomStuff;
        public int currentX;
        public int currentY;
        public int height;
        public boolean isModal;
        public boolean lockOrientation;
        public String orientation;
        public int portraitHeightRequested;
        public int portraitWidthRequested;
        public String rotationAtExpand;
        public int topStuff;
        public boolean useCustomClose;
        public int width;
        public int x;
        public int y;
        public boolean zeroWidthHeight;
        
        static {
            CREATOR = (Parcelable$Creator)new Parcelable$Creator<ExpandProperties>() {
                public ExpandProperties a(final Parcel parcel) {
                    return new ExpandProperties(parcel);
                }
                
                public ExpandProperties[] a(final int n) {
                    return new ExpandProperties[n];
                }
            };
        }
        
        public ExpandProperties() {
            super();
            this.width = 0;
            this.height = 0;
            this.x = -1;
            this.y = -1;
            this.useCustomClose = false;
            this.isModal = true;
            this.lockOrientation = false;
            this.orientation = "";
            this.actualWidthRequested = 0;
            this.actualHeightRequested = 0;
            this.topStuff = 0;
            this.bottomStuff = 0;
            this.portraitWidthRequested = 0;
            this.portraitHeightRequested = 0;
            this.zeroWidthHeight = false;
            this.rotationAtExpand = "";
            this.currentX = 0;
            this.currentY = 0;
        }
        
        protected ExpandProperties(final Parcel parcel) {
            super(parcel);
        }
        
        public void reinitializeExpandProperties() {
            this.width = 0;
            this.height = 0;
            this.x = -1;
            this.y = -1;
            this.useCustomClose = false;
            this.isModal = true;
            this.lockOrientation = false;
            this.orientation = "";
            this.actualWidthRequested = 0;
            this.actualHeightRequested = 0;
            this.topStuff = 0;
            this.bottomStuff = 0;
            this.portraitWidthRequested = 0;
            this.portraitHeightRequested = 0;
            this.zeroWidthHeight = false;
            this.rotationAtExpand = "";
            this.currentX = 0;
            this.currentY = 0;
        }
    }
    
    public static class PlayerProperties extends ReflectedParcelable
    {
        public static final Parcelable$Creator<PlayerProperties> CREATOR;
        public boolean audioMuted;
        public boolean autoPlay;
        public boolean doLoop;
        public String id;
        public boolean showControl;
        public String startStyle;
        public String stopStyle;
        
        static {
            CREATOR = (Parcelable$Creator)new Parcelable$Creator<PlayerProperties>() {
                public PlayerProperties a(final Parcel parcel) {
                    return new PlayerProperties(parcel);
                }
                
                public PlayerProperties[] a(final int n) {
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
            this.id = "";
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
        
        public void setFullScreen() {
            this.startStyle = "fullscreen";
        }
        
        public void setProperties(final boolean audioMuted, final boolean autoPlay, final boolean showControl, final boolean doLoop, final String startStyle, final String stopStyle, final String id) {
            this.autoPlay = autoPlay;
            this.showControl = showControl;
            this.doLoop = doLoop;
            this.audioMuted = audioMuted;
            this.startStyle = startStyle;
            this.stopStyle = stopStyle;
            this.id = id;
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
        public boolean useBackground;
        
        static {
            CREATOR = (Parcelable$Creator)new Parcelable$Creator<Properties>() {
                public Properties a(final Parcel parcel) {
                    return new Properties(parcel);
                }
                
                public Properties[] a(final int n) {
                    return new Properties[n];
                }
            };
        }
        
        public Properties() {
            super();
            this.useBackground = false;
            this.backgroundColor = 0;
            this.backgroundOpacity = 0.0f;
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
            final Field[] array = null;
            final Field[] declaredFields = this.getClass().getDeclaredFields();
            int n = 0;
            while (true) {
                try {
                    if (n >= declaredFields.length) {
                        return;
                    }
                    final Field field = declaredFields[n];
                    final Class<?> type = field.getType();
                    if (!type.isEnum()) {
                        goto Label_0116;
                    }
                    final String string = type.toString();
                    if (string.equals("class com.mraid.NavigationStringEnum")) {
                        field.set(this, IMNavigationStringEnum.fromString(parcel.readString()));
                    }
                    else if (string.equals("class com.mraid.TransitionStringEnum")) {
                        field.set(this, IMTransitionStringEnum.fromString(parcel.readString()));
                    }
                }
                catch (IllegalArgumentException ex) {
                    ex.printStackTrace();
                    return;
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
            final Field[] array = null;
            final Field[] declaredFields = this.getClass().getDeclaredFields();
            int n2 = 0;
            while (true) {
                try {
                    if (n2 >= declaredFields.length) {
                        return;
                    }
                    final Field field = declaredFields[n2];
                    final Class<?> type = field.getType();
                    if (!type.isEnum()) {
                        goto Label_0121;
                    }
                    final String string = type.toString();
                    if (string.equals("class com.mraid.NavigationStringEnum")) {
                        parcel.writeString(((IMNavigationStringEnum)field.get(this)).getText());
                    }
                    else if (string.equals("class com.mraid.TransitionStringEnum")) {
                        parcel.writeString(((IMTransitionStringEnum)field.get(this)).getText());
                    }
                }
                catch (IllegalArgumentException ex) {
                    ex.printStackTrace();
                    return;
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
