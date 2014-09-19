package v2.com.playhaven.model;

import android.net.*;
import v2.com.playhaven.utils.*;
import org.json.*;
import android.os.*;
import java.util.*;
import android.graphics.*;

public class PHContent implements Parcelable
{
    public static final Parcelable$Creator<PHContent> CREATOR;
    public static final String PARCEL_NULL = "null";
    public double closeButtonDelay;
    public String closeURL;
    public JSONObject context;
    private HashMap<String, JSONObject> frameDict;
    public boolean preloaded;
    public TransitionType transition;
    public Uri url;
    
    static {
        CREATOR = (Parcelable$Creator)new Parcelable$Creator<PHContent>() {
            public PHContent createFromParcel(final Parcel parcel) {
                return new PHContent(parcel);
            }
            
            public PHContent[] newArray(final int n) {
                return new PHContent[n];
            }
        };
    }
    
    public PHContent() {
        super();
        this.transition = TransitionType.Modal;
        this.preloaded = false;
        this.frameDict = new HashMap<String, JSONObject>();
        this.closeButtonDelay = 10.0;
        this.transition = TransitionType.Modal;
    }
    
    public PHContent(final Parcel parcel) {
        super();
        this.transition = TransitionType.Modal;
        this.preloaded = false;
        this.frameDict = new HashMap<String, JSONObject>();
        final String string = parcel.readString();
        if (string != null && !string.equals("null")) {
            this.transition = TransitionType.valueOf(string);
        }
        this.closeURL = parcel.readString();
        if (this.closeURL != null && this.closeURL.equals("null")) {
            this.closeURL = null;
        }
    Label_0168_Outer:
        while (true) {
            while (true) {
                while (true) {
                    try {
                        final String string2 = parcel.readString();
                        if (string2 != null && !string2.equals("null")) {
                            this.context = new JSONObject(string2);
                        }
                        final String string3 = parcel.readString();
                        if (string3 != null && !string3.equals("null")) {
                            this.url = Uri.parse(string3);
                        }
                        this.closeButtonDelay = parcel.readDouble();
                        if (parcel.readByte() == 1) {
                            final boolean preloaded = true;
                            this.preloaded = preloaded;
                            final Bundle bundle = parcel.readBundle();
                            if (bundle != null) {
                                for (final String key : bundle.keySet()) {
                                    try {
                                        this.frameDict.put(key, new JSONObject(bundle.getString(key)));
                                    }
                                    catch (JSONException ex2) {
                                        PHStringUtil.log("Error deserializing frameDict from bundle in PHContent");
                                    }
                                }
                                break;
                            }
                            break;
                        }
                    }
                    catch (JSONException ex) {
                        PHStringUtil.log("Error hydrating PHContent JSON context from Parcel: " + ex.getLocalizedMessage());
                        continue Label_0168_Outer;
                    }
                    break;
                }
                final boolean preloaded = false;
                continue;
            }
        }
    }
    
    public PHContent(final JSONObject jsonObject) {
        super();
        this.transition = TransitionType.Modal;
        this.preloaded = false;
        this.frameDict = new HashMap<String, JSONObject>();
        this.fromJSON(jsonObject);
    }
    
    private void setFrameDict(final JSONObject jsonObject) {
        this.frameDict.clear();
        try {
            final Iterator keys = jsonObject.keys();
            while (keys.hasNext()) {
                final String key = keys.next();
                this.frameDict.put(key, (JSONObject)jsonObject.get(key));
            }
        }
        catch (JSONException ex) {
            ex.printStackTrace();
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void fromJSON(final JSONObject jsonObject) {
        while (true) {
            String optString2 = null;
        Label_0207:
            while (true) {
                try {
                    final Object opt = jsonObject.opt("frame");
                    final String optString = jsonObject.optString("url");
                    optString2 = jsonObject.optString("transition");
                    this.closeButtonDelay = jsonObject.optDouble("close_delay");
                    this.closeURL = jsonObject.optString("close_ping");
                    this.frameDict.clear();
                    if (opt instanceof String) {
                        this.frameDict.put((String)opt, new JSONObject(String.format("{\"%s\" : \"%s\"}", opt, opt)));
                    }
                    else if (opt instanceof JSONObject) {
                        this.setFrameDict((JSONObject)opt);
                    }
                    if (optString.compareTo("") != 0) {
                        final Uri parse = Uri.parse(optString);
                        this.url = parse;
                        final JSONObject optJSONObject = jsonObject.optJSONObject("context");
                        if (!JSONObject.NULL.equals(optJSONObject) && optJSONObject.length() > 0) {
                            this.context = optJSONObject;
                        }
                        if (optString2.compareTo("") == 0) {
                            break;
                        }
                        if (optString2.equals("PH_MODAL")) {
                            this.transition = TransitionType.Modal;
                            return;
                        }
                        break Label_0207;
                    }
                }
                catch (JSONException ex) {
                    ex.printStackTrace();
                    return;
                }
                final Uri parse = null;
                continue;
            }
            if (optString2.equals("PH_DIALOG")) {
                this.transition = TransitionType.Dialog;
                return;
            }
            this.transition = null;
            break;
        }
    }
    
    public RectF getFrame(final int n) {
        String s;
        if (n == 2) {
            s = "PH_LANDSCAPE";
        }
        else {
            s = "PH_PORTRAIT";
        }
        if (this.frameDict.containsKey("PH_FULLSCREEN")) {
            return new RectF(0.0f, 0.0f, 2.14748365E9f, 2.14748365E9f);
        }
        if (this.frameDict.containsKey(s)) {
            final JSONObject jsonObject = this.frameDict.get(s);
            if (jsonObject != null) {
                final float n2 = (float)jsonObject.optDouble("x");
                final float n3 = (float)jsonObject.optDouble("y");
                return new RectF(n2, n3, n2 + (float)jsonObject.optDouble("w"), n3 + (float)jsonObject.optDouble("h"));
            }
        }
        return new RectF(0.0f, 0.0f, 0.0f, 0.0f);
    }
    
    public HashMap<String, JSONObject> getFrames() {
        return this.frameDict;
    }
    
    public boolean isEmpty() {
        return this.context == null || this.context.length() == 0;
    }
    
    public void setFrames(final HashMap<String, JSONObject> frameDict) {
        this.frameDict = frameDict;
    }
    
    @Override
    public String toString() {
        try {
            final String string = this.context.toString(2);
            return String.format("Close URL: %s - Close Delay: %.1f - URL: %s\n\n---------------------------------\nJSON Context: %s", this.closeURL, this.closeButtonDelay, this.url, string);
        }
        catch (JSONException ex) {
            ex.printStackTrace();
            final String string = "(NULL)";
            return String.format("Close URL: %s - Close Delay: %.1f - URL: %s\n\n---------------------------------\nJSON Context: %s", this.closeURL, this.closeButtonDelay, this.url, string);
        }
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        String name;
        if (this.transition != null) {
            name = this.transition.name();
        }
        else {
            name = "null";
        }
        parcel.writeString(name);
        String closeURL;
        if (this.closeURL != null) {
            closeURL = this.closeURL;
        }
        else {
            closeURL = "null";
        }
        parcel.writeString(closeURL);
        String string;
        if (this.context != null) {
            string = this.context.toString();
        }
        else {
            string = "null";
        }
        parcel.writeString(string);
        String string2;
        if (this.url != null) {
            string2 = this.url.toString();
        }
        else {
            string2 = "null";
        }
        parcel.writeString(string2);
        parcel.writeDouble(this.closeButtonDelay);
        boolean b;
        if (this.preloaded) {
            b = true;
        }
        else {
            b = false;
        }
        parcel.writeByte((byte)(byte)(b ? 1 : 0));
        if (this.frameDict != null) {
            final Bundle bundle = new Bundle();
            for (final String key : this.frameDict.keySet()) {
                bundle.putString(key, this.frameDict.get(key).toString());
            }
            parcel.writeBundle(bundle);
        }
    }
    
    public enum TransitionType
    {
        Dialog, 
        Modal, 
        Unknown;
    }
}
