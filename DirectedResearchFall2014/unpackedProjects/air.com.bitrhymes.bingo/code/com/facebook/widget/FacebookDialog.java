package com.facebook.widget;

import android.app.*;
import android.support.v4.app.*;
import android.content.*;
import com.facebook.internal.*;
import java.io.*;
import android.graphics.*;
import org.json.*;
import java.util.*;
import com.facebook.*;
import com.facebook.model.*;
import android.os.*;

public class FacebookDialog
{
    public static final String COMPLETION_GESTURE_CANCEL = "cancel";
    private static final String EXTRA_DIALOG_COMPLETE_KEY = "com.facebook.platform.extra.DID_COMPLETE";
    private static final String EXTRA_DIALOG_COMPLETION_GESTURE_KEY = "com.facebook.platform.extra.COMPLETION_GESTURE";
    private static final String EXTRA_DIALOG_COMPLETION_ID_KEY = "com.facebook.platform.extra.POST_ID";
    private static final int MIN_NATIVE_SHARE_PROTOCOL_VERSION = 20130618;
    private static NativeAppCallAttachmentStore attachmentStore;
    private Activity activity;
    private PendingCall appCall;
    private Fragment fragment;
    private OnPresentCallback onPresentCallback;
    
    private FacebookDialog(final Activity activity, final Fragment fragment, final PendingCall appCall, final OnPresentCallback onPresentCallback) {
        super();
        this.activity = activity;
        this.fragment = fragment;
        this.appCall = appCall;
        this.onPresentCallback = onPresentCallback;
    }
    
    public static boolean canPresentOpenGraphActionDialog(final Context context, final OpenGraphActionDialogFeature... rest) {
        return handleCanPresent(context, (Iterable<? extends DialogFeature>)EnumSet.of(OpenGraphActionDialogFeature.OG_ACTION_DIALOG, rest));
    }
    
    public static boolean canPresentShareDialog(final Context context, final ShareDialogFeature... rest) {
        return handleCanPresent(context, (Iterable<? extends DialogFeature>)EnumSet.of(ShareDialogFeature.SHARE_DIALOG, rest));
    }
    
    private static NativeAppCallAttachmentStore getAttachmentStore() {
        if (FacebookDialog.attachmentStore == null) {
            FacebookDialog.attachmentStore = new NativeAppCallAttachmentStore();
        }
        return FacebookDialog.attachmentStore;
    }
    
    private static int getMinVersionForFeatures(final Iterable<? extends DialogFeature> iterable) {
        int max = Integer.MIN_VALUE;
        final Iterator<? extends DialogFeature> iterator = iterable.iterator();
        while (iterator.hasNext()) {
            max = Math.max(max, ((DialogFeature)iterator.next()).getMinVersion());
        }
        return max;
    }
    
    public static String getNativeDialogCompletionGesture(final Bundle bundle) {
        return bundle.getString("com.facebook.platform.extra.COMPLETION_GESTURE");
    }
    
    public static boolean getNativeDialogDidComplete(final Bundle bundle) {
        return bundle.getBoolean("com.facebook.platform.extra.DID_COMPLETE", false);
    }
    
    public static String getNativeDialogPostId(final Bundle bundle) {
        return bundle.getString("com.facebook.platform.extra.POST_ID");
    }
    
    private static int getProtocolVersionForNativeDialog(final Context context, final Integer n) {
        return NativeProtocol.getLatestAvailableProtocolVersion(context, n);
    }
    
    public static boolean handleActivityResult(final Context context, final PendingCall pendingCall, final int n, final Intent intent, final Callback callback) {
        if (n != pendingCall.getRequestCode()) {
            return false;
        }
        if (FacebookDialog.attachmentStore != null) {
            FacebookDialog.attachmentStore.cleanupAttachmentsForCall(context, pendingCall.getCallId());
        }
        if (callback != null) {
            if (NativeProtocol.isErrorResult(intent)) {
                callback.onError(pendingCall, NativeProtocol.getErrorFromResult(intent), intent.getExtras());
            }
            else {
                callback.onComplete(pendingCall, intent.getExtras());
            }
        }
        return true;
    }
    
    private static boolean handleCanPresent(final Context context, final Iterable<? extends DialogFeature> iterable) {
        return getProtocolVersionForNativeDialog(context, getMinVersionForFeatures(iterable)) != -1;
    }
    
    public PendingCall present() {
        Label_0020: {
            if (this.onPresentCallback == null) {
                break Label_0020;
            }
            while (true) {
                while (true) {
                    try {
                        this.onPresentCallback.onPresent((Context)this.activity);
                        if (this.fragment != null) {
                            this.fragment.startActivityForResult(this.appCall.getRequestIntent(), this.appCall.getRequestCode());
                            return this.appCall;
                        }
                    }
                    catch (Exception ex) {
                        throw new FacebookException(ex);
                    }
                    this.activity.startActivityForResult(this.appCall.getRequestIntent(), this.appCall.getRequestCode());
                    continue;
                }
            }
        }
    }
    
    private abstract static class Builder<CONCRETE extends Builder<?>>
    {
        protected final Activity activity;
        protected final PendingCall appCall;
        protected final String applicationId;
        protected String applicationName;
        protected Fragment fragment;
        
        Builder(final Activity activity) {
            super();
            Validate.notNull(activity, "activity");
            this.activity = activity;
            this.applicationId = Utility.getMetadataApplicationId((Context)activity);
            this.appCall = new PendingCall(64207);
        }
        
        public FacebookDialog build() {
            this.validate();
            final Bundle bundle = new Bundle();
            this.putExtra(bundle, "com.facebook.platform.extra.APPLICATION_ID", this.applicationId);
            this.putExtra(bundle, "com.facebook.platform.extra.APPLICATION_NAME", this.applicationName);
            final Intent handleBuild = this.handleBuild(bundle);
            if (handleBuild == null) {
                throw new FacebookException("Unable to create Intent; this likely means the Facebook app is not installed.");
            }
            this.appCall.setRequestIntent(handleBuild);
            return new FacebookDialog(this.activity, this.fragment, this.appCall, this.getOnPresentCallback(), null);
        }
        
        public boolean canPresent() {
            return this.handleCanPresent();
        }
        
        OnPresentCallback getOnPresentCallback() {
            return null;
        }
        
        abstract Intent handleBuild(final Bundle p0);
        
        boolean handleCanPresent() {
            return getProtocolVersionForNativeDialog((Context)this.activity, 20130618) != -1;
        }
        
        void putExtra(final Bundle bundle, final String s, final String s2) {
            if (s2 != null) {
                bundle.putString(s, s2);
            }
        }
        
        public CONCRETE setApplicationName(final String applicationName) {
            this.applicationName = applicationName;
            return (CONCRETE)this;
        }
        
        public CONCRETE setFragment(final Fragment fragment) {
            this.fragment = fragment;
            return (CONCRETE)this;
        }
        
        public CONCRETE setRequestCode(final int n) {
            this.appCall.setRequestCode(n);
            return (CONCRETE)this;
        }
        
        void validate() {
        }
    }
    
    public interface Callback
    {
        void onComplete(PendingCall p0, Bundle p1);
        
        void onError(PendingCall p0, Exception p1, Bundle p2);
    }
    
    private interface DialogFeature
    {
        int getMinVersion();
    }
    
    interface OnPresentCallback
    {
        void onPresent(Context p0) throws Exception;
    }
    
    public static class OpenGraphActionDialogBuilder extends Builder<OpenGraphActionDialogBuilder>
    {
        private OpenGraphAction action;
        private String actionType;
        private boolean dataErrorsFatal;
        private HashMap<String, File> imageAttachmentFiles;
        private HashMap<String, Bitmap> imageAttachments;
        private String previewPropertyName;
        
        public OpenGraphActionDialogBuilder(final Activity activity, final OpenGraphAction action, final String s) {
            super(activity);
            Validate.notNull(action, "action");
            Validate.notNullOrEmpty(action.getType(), "action.getType()");
            Validate.notNullOrEmpty(s, "previewPropertyName");
            if (action.getProperty(s) == null) {
                throw new IllegalArgumentException("A property named \"" + s + "\" was not found on the action.  The name of " + "the preview property must match the name of an action property.");
            }
            this.action = action;
            this.actionType = action.getType();
            this.previewPropertyName = s;
        }
        
        public OpenGraphActionDialogBuilder(final Activity activity, final OpenGraphAction action, final String s, final String s2) {
            super(activity);
            Validate.notNull(action, "action");
            Validate.notNullOrEmpty(s, "actionType");
            Validate.notNullOrEmpty(s2, "previewPropertyName");
            if (action.getProperty(s2) == null) {
                throw new IllegalArgumentException("A property named \"" + s2 + "\" was not found on the action.  The name of " + "the preview property must match the name of an action property.");
            }
            final String type = action.getType();
            if (!Utility.isNullOrEmpty(type) && !type.equals(s)) {
                throw new IllegalArgumentException("'actionType' must match the type of 'action' if it is specified. Consider using OpenGraphActionDialogBuilder(Activity activity, OpenGraphAction action, String previewPropertyName) instead.");
            }
            this.action = action;
            this.actionType = s;
            this.previewPropertyName = s2;
        }
        
        private OpenGraphActionDialogBuilder addImageAttachment(final String key, final Bitmap value) {
            if (this.imageAttachments == null) {
                this.imageAttachments = new HashMap<String, Bitmap>();
            }
            this.imageAttachments.put(key, value);
            return this;
        }
        
        private OpenGraphActionDialogBuilder addImageAttachment(final String key, final File value) {
            if (this.imageAttachmentFiles == null) {
                this.imageAttachmentFiles = new HashMap<String, File>();
            }
            this.imageAttachmentFiles.put(key, value);
            return this;
        }
        
        private List<String> addImageAttachmentFiles(final List<File> list) {
            final ArrayList<String> list2 = new ArrayList<String>();
            for (final File file : list) {
                final String string = UUID.randomUUID().toString();
                this.addImageAttachment(string, file);
                list2.add(NativeAppCallContentProvider.getAttachmentUrl(this.applicationId, this.appCall.getCallId(), string));
            }
            return list2;
        }
        
        private List<String> addImageAttachments(final List<Bitmap> list) {
            final ArrayList<String> list2 = new ArrayList<String>();
            for (final Bitmap bitmap : list) {
                final String string = UUID.randomUUID().toString();
                this.addImageAttachment(string, bitmap);
                list2.add(NativeAppCallContentProvider.getAttachmentUrl(this.applicationId, this.appCall.getCallId(), string));
            }
            return list2;
        }
        
        private JSONObject flattenChildrenOfGraphObject(final JSONObject jsonObject) {
            try {
                final JSONObject jsonObject2 = new JSONObject(jsonObject.toString());
                Throwable t;
                try {
                    final Iterator keys = jsonObject2.keys();
                    while (keys.hasNext()) {
                        final String s = keys.next();
                        if (!s.equalsIgnoreCase("image")) {
                            jsonObject2.put(s, this.flattenObject(jsonObject2.get(s)));
                        }
                    }
                    return jsonObject2;
                }
                catch (JSONException ex) {
                    t = (Throwable)ex;
                }
                throw new FacebookException(t);
            }
            catch (JSONException ex2) {
                final Throwable t = (Throwable)ex2;
                throw new FacebookException(t);
            }
        }
        
        private Object flattenObject(final Object o) throws JSONException {
            if (o == null) {
                return null;
            }
            if (o instanceof JSONObject) {
                final JSONObject jsonObject = (JSONObject)o;
                if (jsonObject.optBoolean("fbsdk:create_object")) {
                    return o;
                }
                if (jsonObject.has("id")) {
                    return jsonObject.getString("id");
                }
                if (jsonObject.has("url")) {
                    return jsonObject.getString("url");
                }
            }
            else if (o instanceof JSONArray) {
                final JSONArray jsonArray = (JSONArray)o;
                final JSONArray jsonArray2 = new JSONArray();
                for (int length = jsonArray.length(), i = 0; i < length; ++i) {
                    jsonArray2.put(this.flattenObject(jsonArray.get(i)));
                }
                return jsonArray2;
            }
            return o;
        }
        
        private void updateActionAttachmentUrls(final List<String> list, final boolean b) {
            List<JSONObject> image = this.action.getImage();
            if (image == null) {
                image = new ArrayList<JSONObject>(list.size());
            }
            for (final String s : list) {
                final JSONObject jsonObject = new JSONObject();
                try {
                    jsonObject.put("url", (Object)s);
                    if (b) {
                        jsonObject.put("user_generated", true);
                    }
                    image.add(jsonObject);
                }
                catch (JSONException ex) {
                    throw new FacebookException("Unable to attach images", (Throwable)ex);
                }
            }
            this.action.setImage(image);
        }
        
        List<String> getImageAttachmentNames() {
            return new ArrayList<String>(this.imageAttachments.keySet());
        }
        
        @Override
        OnPresentCallback getOnPresentCallback() {
            return new OnPresentCallback() {
                @Override
                public void onPresent(final Context context) throws Exception {
                    if (OpenGraphActionDialogBuilder.this.imageAttachments != null && OpenGraphActionDialogBuilder.this.imageAttachments.size() > 0) {
                        getAttachmentStore().addAttachmentsForCall(context, OpenGraphActionDialogBuilder.this.appCall.getCallId(), OpenGraphActionDialogBuilder.this.imageAttachments);
                    }
                    if (OpenGraphActionDialogBuilder.this.imageAttachmentFiles != null && OpenGraphActionDialogBuilder.this.imageAttachmentFiles.size() > 0) {
                        getAttachmentStore().addAttachmentFilesForCall(context, OpenGraphActionDialogBuilder.this.appCall.getCallId(), OpenGraphActionDialogBuilder.this.imageAttachmentFiles);
                    }
                }
            };
        }
        
        @Override
        Intent handleBuild(final Bundle bundle) {
            ((Builder)this).putExtra(bundle, "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME", this.previewPropertyName);
            ((Builder)this).putExtra(bundle, "com.facebook.platform.extra.ACTION_TYPE", this.actionType);
            bundle.putBoolean("com.facebook.platform.extra.DATA_FAILURES_FATAL", this.dataErrorsFatal);
            ((Builder)this).putExtra(bundle, "com.facebook.platform.extra.ACTION", this.flattenChildrenOfGraphObject(this.action.getInnerJSONObject()).toString());
            return NativeProtocol.createPlatformActivityIntent((Context)this.activity, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", getProtocolVersionForNativeDialog((Context)this.activity, 20130618), bundle);
        }
        
        @Override
        boolean handleCanPresent() {
            return FacebookDialog.canPresentOpenGraphActionDialog((Context)this.activity, OpenGraphActionDialogFeature.OG_ACTION_DIALOG);
        }
        
        public OpenGraphActionDialogBuilder setDataErrorsFatal(final boolean dataErrorsFatal) {
            this.dataErrorsFatal = dataErrorsFatal;
            return this;
        }
        
        public OpenGraphActionDialogBuilder setImageAttachmentFilesForAction(final List<File> list) {
            return this.setImageAttachmentFilesForAction(list, false);
        }
        
        public OpenGraphActionDialogBuilder setImageAttachmentFilesForAction(final List<File> list, final boolean b) {
            Validate.containsNoNulls((Collection<Object>)list, "bitmapFiles");
            if (this.action == null) {
                throw new FacebookException("Can not set attachments prior to setting action.");
            }
            this.updateActionAttachmentUrls(this.addImageAttachmentFiles(list), b);
            return this;
        }
        
        public OpenGraphActionDialogBuilder setImageAttachmentFilesForObject(final String s, final List<File> list) {
            return this.setImageAttachmentFilesForObject(s, list, false);
        }
        
        public OpenGraphActionDialogBuilder setImageAttachmentFilesForObject(final String s, final List<File> list, final boolean b) {
            Validate.notNull(s, "objectProperty");
            Validate.containsNoNulls((Collection<Object>)list, "bitmapFiles");
            if (this.action == null) {
                throw new FacebookException("Can not set attachments prior to setting action.");
            }
            this.updateObjectAttachmentUrls(s, this.addImageAttachmentFiles(list), b);
            return this;
        }
        
        public OpenGraphActionDialogBuilder setImageAttachmentsForAction(final List<Bitmap> list) {
            return this.setImageAttachmentsForAction(list, false);
        }
        
        public OpenGraphActionDialogBuilder setImageAttachmentsForAction(final List<Bitmap> list, final boolean b) {
            Validate.containsNoNulls((Collection<Object>)list, "bitmaps");
            if (this.action == null) {
                throw new FacebookException("Can not set attachments prior to setting action.");
            }
            this.updateActionAttachmentUrls(this.addImageAttachments(list), b);
            return this;
        }
        
        public OpenGraphActionDialogBuilder setImageAttachmentsForObject(final String s, final List<Bitmap> list) {
            return this.setImageAttachmentsForObject(s, list, false);
        }
        
        public OpenGraphActionDialogBuilder setImageAttachmentsForObject(final String s, final List<Bitmap> list, final boolean b) {
            Validate.notNull(s, "objectProperty");
            Validate.containsNoNulls((Collection<Object>)list, "bitmaps");
            if (this.action == null) {
                throw new FacebookException("Can not set attachments prior to setting action.");
            }
            this.updateObjectAttachmentUrls(s, this.addImageAttachments(list), b);
            return this;
        }
        
        void updateObjectAttachmentUrls(final String str, final List<String> list, final boolean b) {
            OpenGraphObject openGraphObject;
            try {
                openGraphObject = this.action.getPropertyAs(str, OpenGraphObject.class);
                if (openGraphObject == null) {
                    throw new IllegalArgumentException("Action does not contain a property '" + str + "'");
                }
            }
            catch (FacebookGraphObjectException ex) {
                throw new IllegalArgumentException("Property '" + str + "' is not a graph object");
            }
            if (!openGraphObject.getCreateObject()) {
                throw new IllegalArgumentException("The Open Graph object in '" + str + "' is not marked for creation");
            }
            GraphObjectList<GraphObject> image = openGraphObject.getImage();
            if (image == null) {
                image = GraphObject.Factory.createList(GraphObject.class);
            }
            for (final String s : list) {
                final GraphObject create = GraphObject.Factory.create();
                create.setProperty("url", s);
                if (b) {
                    create.setProperty("user_generated", true);
                }
                image.add(create);
            }
            openGraphObject.setImage(image);
        }
    }
    
    public enum OpenGraphActionDialogFeature implements DialogFeature
    {
        OG_ACTION_DIALOG("OG_ACTION_DIALOG", 0, 20130618);
        
        private int minVersion;
        
        private OpenGraphActionDialogFeature(final String name, final int ordinal, final int minVersion) {
            this.minVersion = minVersion;
        }
        
        @Override
        public int getMinVersion() {
            return this.minVersion;
        }
    }
    
    public static class PendingCall implements Parcelable
    {
        public static final Parcelable$Creator<PendingCall> CREATOR;
        private UUID callId;
        private int requestCode;
        private Intent requestIntent;
        
        static {
            CREATOR = (Parcelable$Creator)new Parcelable$Creator<PendingCall>() {
                public PendingCall createFromParcel(final Parcel parcel) {
                    return new PendingCall(parcel, null);
                }
                
                public PendingCall[] newArray(final int n) {
                    return new PendingCall[n];
                }
            };
        }
        
        public PendingCall(final int requestCode) {
            super();
            this.callId = UUID.randomUUID();
            this.requestCode = requestCode;
        }
        
        private PendingCall(final Parcel parcel) {
            super();
            this.callId = UUID.fromString(parcel.readString());
            this.requestIntent = (Intent)parcel.readParcelable((ClassLoader)null);
            this.requestCode = parcel.readInt();
        }
        
        private void setRequestCode(final int requestCode) {
            this.requestCode = requestCode;
        }
        
        private void setRequestIntent(final Intent requestIntent) {
            (this.requestIntent = requestIntent).putExtra("com.facebook.platform.protocol.CALL_ID", this.callId.toString());
        }
        
        public int describeContents() {
            return 0;
        }
        
        public UUID getCallId() {
            return this.callId;
        }
        
        public int getRequestCode() {
            return this.requestCode;
        }
        
        public Intent getRequestIntent() {
            return this.requestIntent;
        }
        
        public void writeToParcel(final Parcel parcel, final int n) {
            parcel.writeString(this.callId.toString());
            parcel.writeParcelable((Parcelable)this.requestIntent, 0);
            parcel.writeInt(this.requestCode);
        }
    }
    
    public static class ShareDialogBuilder extends Builder<ShareDialogBuilder>
    {
        private String caption;
        private boolean dataErrorsFatal;
        private String description;
        private ArrayList<String> friends;
        private String link;
        private String name;
        private String picture;
        private String place;
        private String ref;
        
        public ShareDialogBuilder(final Activity activity) {
            super(activity);
        }
        
        @Override
        Intent handleBuild(final Bundle bundle) {
            ((Builder)this).putExtra(bundle, "com.facebook.platform.extra.APPLICATION_ID", this.applicationId);
            ((Builder)this).putExtra(bundle, "com.facebook.platform.extra.APPLICATION_NAME", this.applicationName);
            ((Builder)this).putExtra(bundle, "com.facebook.platform.extra.TITLE", this.name);
            ((Builder)this).putExtra(bundle, "com.facebook.platform.extra.SUBTITLE", this.caption);
            ((Builder)this).putExtra(bundle, "com.facebook.platform.extra.DESCRIPTION", this.description);
            ((Builder)this).putExtra(bundle, "com.facebook.platform.extra.LINK", this.link);
            ((Builder)this).putExtra(bundle, "com.facebook.platform.extra.IMAGE", this.picture);
            ((Builder)this).putExtra(bundle, "com.facebook.platform.extra.PLACE", this.place);
            ((Builder)this).putExtra(bundle, "com.facebook.platform.extra.TITLE", this.name);
            ((Builder)this).putExtra(bundle, "com.facebook.platform.extra.REF", this.ref);
            bundle.putBoolean("com.facebook.platform.extra.DATA_FAILURES_FATAL", this.dataErrorsFatal);
            if (!Utility.isNullOrEmpty(this.friends)) {
                bundle.putStringArrayList("com.facebook.platform.extra.FRIENDS", (ArrayList)this.friends);
            }
            return NativeProtocol.createPlatformActivityIntent((Context)this.activity, "com.facebook.platform.action.request.FEED_DIALOG", getProtocolVersionForNativeDialog((Context)this.activity, 20130618), bundle);
        }
        
        @Override
        boolean handleCanPresent() {
            return FacebookDialog.canPresentShareDialog((Context)this.activity, ShareDialogFeature.SHARE_DIALOG);
        }
        
        public ShareDialogBuilder setCaption(final String caption) {
            this.caption = caption;
            return this;
        }
        
        public ShareDialogBuilder setDataErrorsFatal(final boolean dataErrorsFatal) {
            this.dataErrorsFatal = dataErrorsFatal;
            return this;
        }
        
        public ShareDialogBuilder setDescription(final String description) {
            this.description = description;
            return this;
        }
        
        public ShareDialogBuilder setFriends(final List<String> c) {
            this.friends = new ArrayList<String>(c);
            return this;
        }
        
        public ShareDialogBuilder setLink(final String link) {
            this.link = link;
            return this;
        }
        
        public ShareDialogBuilder setName(final String name) {
            this.name = name;
            return this;
        }
        
        public ShareDialogBuilder setPicture(final String picture) {
            this.picture = picture;
            return this;
        }
        
        public ShareDialogBuilder setPlace(final String place) {
            this.place = place;
            return this;
        }
        
        public ShareDialogBuilder setRef(final String ref) {
            this.ref = ref;
            return this;
        }
    }
    
    public enum ShareDialogFeature implements DialogFeature
    {
        SHARE_DIALOG("SHARE_DIALOG", 0, 20130618);
        
        private int minVersion;
        
        private ShareDialogFeature(final String name, final int ordinal, final int minVersion) {
            this.minVersion = minVersion;
        }
        
        @Override
        public int getMinVersion() {
            return this.minVersion;
        }
    }
}
