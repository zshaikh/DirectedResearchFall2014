package com.inmobi.androidsdk.ai.controller.util;

public final class IMConfigException extends Exception
{
    public static final int MISSING_ACTIVITY_DECLARATION = -2;
    public static final int MISSING_CONFIG_CHANGES = -3;
    public static final int MISSING_CONFIG_KEYBOARD = -4;
    public static final int MISSING_CONFIG_KEYBOARDHIDDEN = -5;
    public static final int MISSING_CONFIG_ORIENTATION = -6;
    public static final int MISSING_CONFIG_SCREENSIZE = -7;
    public static final int MISSING_CONFIG_SMALLEST_SCREENSIZE = -8;
    public static final int MISSING_PERMISSION = -1;
    private static final long serialVersionUID = 1L;
    private int a;
    
    IMConfigException(final int a) {
        super();
        this.a = a;
    }
    
    public int getExceptionCode() {
        return this.a;
    }
    
    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("IMConfigException : ");
        switch (this.a) {
            case -2: {
                sb.append("IMBrowserActivity not declared in the manifest. Please declare it in the app manifest");
                break;
            }
            case -3: {
                sb.append("IMBrowserActivity in the manifest does not have android:configChanges attributes.Please add android:configChanges=keyboardHidden|orientation|keyboard|screenSize|smallestScreenSize to IMBrowserActivity in the app manifest");
                break;
            }
            case -1: {
                sb.append("App does not have INTERNET permissions. Please provide INTERNET permissions");
                break;
            }
            case -4: {
                sb.append("Missing Config keyboard from android:configChangesof IMBRowserActivity");
                break;
            }
            case -5: {
                sb.append("Missing Config keyboardHidden from android:configChangesof IMBRowserActivity");
                break;
            }
            case -6: {
                sb.append("Missing Config orientation from android:configChangesof IMBRowserActivity");
                break;
            }
            case -7: {
                sb.append("Missing Config screenSize from android:configChangesof IMBRowserActivity");
                break;
            }
            case -8: {
                sb.append("Missing Config smallestScreenSize from android:configChanges of IMBRowserActivity");
                break;
            }
        }
        return sb.toString();
    }
}
