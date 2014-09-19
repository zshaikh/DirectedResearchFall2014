package com.facebook.widget;

import java.io.*;
import android.graphics.*;
import android.app.*;
import com.facebook.internal.*;
import org.json.*;
import java.util.*;
import android.os.*;
import com.facebook.*;
import com.facebook.model.*;

abstract class FacebookDialog$OpenGraphDialogBuilderBase<CONCRETE extends FacebookDialog$OpenGraphDialogBuilderBase<?>> extends FacebookDialog$Builder<CONCRETE>
{
    private OpenGraphAction action;
    private String actionType;
    private boolean dataErrorsFatal;
    private HashMap<String, File> imageAttachmentFiles;
    private HashMap<String, Bitmap> imageAttachments;
    private String previewPropertyName;
    
    public FacebookDialog$OpenGraphDialogBuilderBase(final Activity activity, final OpenGraphAction action, final String s) {
        super(activity);
        Validate.notNull(action, "action");
        Validate.notNullOrEmpty(action.getType(), "action.getType()");
        Validate.notNullOrEmpty(s, "previewPropertyName");
        if (action.getProperty(s) == null) {
            throw new IllegalArgumentException("A property named \"" + s + "\" was not found on the action.  The name of the preview property must match the name of an action property.");
        }
        this.action = action;
        this.actionType = action.getType();
        this.previewPropertyName = s;
    }
    
    public FacebookDialog$OpenGraphDialogBuilderBase(final Activity activity, final OpenGraphAction action, final String s, final String s2) {
        super(activity);
        Validate.notNull(action, "action");
        Validate.notNullOrEmpty(s, "actionType");
        Validate.notNullOrEmpty(s2, "previewPropertyName");
        if (action.getProperty(s2) == null) {
            throw new IllegalArgumentException("A property named \"" + s2 + "\" was not found on the action.  The name of the preview property must match the name of an action property.");
        }
        final String type = action.getType();
        if (!Utility.isNullOrEmpty(type) && !type.equals(s)) {
            throw new IllegalArgumentException("'actionType' must match the type of 'action' if it is specified. Consider using OpenGraphDialogBuilderBase(Activity activity, OpenGraphAction action, String previewPropertyName) instead.");
        }
        this.action = action;
        this.actionType = s;
        this.previewPropertyName = s2;
    }
    
    private CONCRETE addImageAttachment(final String key, final Bitmap value) {
        if (this.imageAttachments == null) {
            this.imageAttachments = new HashMap<String, Bitmap>();
        }
        this.imageAttachments.put(key, value);
        return (CONCRETE)this;
    }
    
    private CONCRETE addImageAttachment(final String key, final File value) {
        if (this.imageAttachmentFiles == null) {
            this.imageAttachmentFiles = new HashMap<String, File>();
        }
        this.imageAttachmentFiles.put(key, value);
        return (CONCRETE)this;
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
        JSONObject jsonObject2;
        try {
            jsonObject2 = new JSONObject(jsonObject.toString());
            final Iterator keys = jsonObject2.keys();
            while (keys.hasNext()) {
                final String s = keys.next();
                if (!s.equalsIgnoreCase("image")) {
                    jsonObject2.put(s, this.flattenObject(jsonObject2.get(s)));
                }
            }
        }
        catch (JSONException ex) {
            throw new FacebookException((Throwable)ex);
        }
        return jsonObject2;
    }
    
    private Object flattenObject(final Object o) {
        if (o != null) {
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
        return null;
    }
    
    private void updateActionAttachmentUrls(final List<String> list, final boolean b) {
        final List<JSONObject> image = this.action.getImage();
        List<JSONObject> image2;
        if (image == null) {
            image2 = new ArrayList<JSONObject>(list.size());
        }
        else {
            image2 = image;
        }
        for (final String s : list) {
            final JSONObject jsonObject = new JSONObject();
            try {
                jsonObject.put("url", (Object)s);
                if (b) {
                    jsonObject.put("user_generated", true);
                }
                image2.add(jsonObject);
                continue;
            }
            catch (JSONException ex) {
                throw new FacebookException("Unable to attach images", (Throwable)ex);
            }
            break;
        }
        this.action.setImage(image2);
    }
    
    List<String> getImageAttachmentNames() {
        return new ArrayList<String>(this.imageAttachments.keySet());
    }
    
    @Override
    FacebookDialog$OnPresentCallback getOnPresentCallback() {
        return new FacebookDialog$OpenGraphDialogBuilderBase$1(this);
    }
    
    @Override
    Bundle setBundleExtras(final Bundle bundle) {
        this.putExtra(bundle, "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME", this.previewPropertyName);
        this.putExtra(bundle, "com.facebook.platform.extra.ACTION_TYPE", this.actionType);
        bundle.putBoolean("com.facebook.platform.extra.DATA_FAILURES_FATAL", this.dataErrorsFatal);
        this.putExtra(bundle, "com.facebook.platform.extra.ACTION", this.flattenChildrenOfGraphObject(this.action.getInnerJSONObject()).toString());
        return bundle;
    }
    
    public CONCRETE setDataErrorsFatal(final boolean dataErrorsFatal) {
        this.dataErrorsFatal = dataErrorsFatal;
        return (CONCRETE)this;
    }
    
    public CONCRETE setImageAttachmentFilesForAction(final List<File> list) {
        return this.setImageAttachmentFilesForAction(list, false);
    }
    
    public CONCRETE setImageAttachmentFilesForAction(final List<File> list, final boolean b) {
        Validate.containsNoNulls((Collection<Object>)list, "bitmapFiles");
        if (this.action == null) {
            throw new FacebookException("Can not set attachments prior to setting action.");
        }
        this.updateActionAttachmentUrls(this.addImageAttachmentFiles(list), b);
        return (CONCRETE)this;
    }
    
    public CONCRETE setImageAttachmentFilesForObject(final String s, final List<File> list) {
        return this.setImageAttachmentFilesForObject(s, list, false);
    }
    
    public CONCRETE setImageAttachmentFilesForObject(final String s, final List<File> list, final boolean b) {
        Validate.notNull(s, "objectProperty");
        Validate.containsNoNulls((Collection<Object>)list, "bitmapFiles");
        if (this.action == null) {
            throw new FacebookException("Can not set attachments prior to setting action.");
        }
        this.updateObjectAttachmentUrls(s, this.addImageAttachmentFiles(list), b);
        return (CONCRETE)this;
    }
    
    public CONCRETE setImageAttachmentsForAction(final List<Bitmap> list) {
        return this.setImageAttachmentsForAction(list, false);
    }
    
    public CONCRETE setImageAttachmentsForAction(final List<Bitmap> list, final boolean b) {
        Validate.containsNoNulls((Collection<Object>)list, "bitmaps");
        if (this.action == null) {
            throw new FacebookException("Can not set attachments prior to setting action.");
        }
        this.updateActionAttachmentUrls(this.addImageAttachments(list), b);
        return (CONCRETE)this;
    }
    
    public CONCRETE setImageAttachmentsForObject(final String s, final List<Bitmap> list) {
        return this.setImageAttachmentsForObject(s, list, false);
    }
    
    public CONCRETE setImageAttachmentsForObject(final String s, final List<Bitmap> list, final boolean b) {
        Validate.notNull(s, "objectProperty");
        Validate.containsNoNulls((Collection<Object>)list, "bitmaps");
        if (this.action == null) {
            throw new FacebookException("Can not set attachments prior to setting action.");
        }
        this.updateObjectAttachmentUrls(s, this.addImageAttachments(list), b);
        return (CONCRETE)this;
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
        final GraphObjectList<GraphObject> image = openGraphObject.getImage();
        GraphObjectList<GraphObject> list2;
        if (image == null) {
            list2 = GraphObject$Factory.createList(GraphObject.class);
        }
        else {
            list2 = image;
        }
        for (final String s : list) {
            final GraphObject create = GraphObject$Factory.create();
            create.setProperty("url", s);
            if (b) {
                create.setProperty("user_generated", true);
            }
            list2.add(create);
        }
        openGraphObject.setImage(list2);
    }
}
