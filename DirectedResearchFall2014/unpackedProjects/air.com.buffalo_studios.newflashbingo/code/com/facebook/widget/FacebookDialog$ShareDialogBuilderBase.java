package com.facebook.widget;

import android.app.*;
import android.os.*;
import com.facebook.internal.*;
import java.util.*;

abstract class FacebookDialog$ShareDialogBuilderBase<CONCRETE extends FacebookDialog$ShareDialogBuilderBase<?>> extends FacebookDialog$Builder<CONCRETE>
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
    
    public FacebookDialog$ShareDialogBuilderBase(final Activity activity) {
        super(activity);
    }
    
    @Override
    Bundle setBundleExtras(final Bundle bundle) {
        this.putExtra(bundle, "com.facebook.platform.extra.APPLICATION_ID", this.applicationId);
        this.putExtra(bundle, "com.facebook.platform.extra.APPLICATION_NAME", this.applicationName);
        this.putExtra(bundle, "com.facebook.platform.extra.TITLE", this.name);
        this.putExtra(bundle, "com.facebook.platform.extra.SUBTITLE", this.caption);
        this.putExtra(bundle, "com.facebook.platform.extra.DESCRIPTION", this.description);
        this.putExtra(bundle, "com.facebook.platform.extra.LINK", this.link);
        this.putExtra(bundle, "com.facebook.platform.extra.IMAGE", this.picture);
        this.putExtra(bundle, "com.facebook.platform.extra.PLACE", this.place);
        this.putExtra(bundle, "com.facebook.platform.extra.TITLE", this.name);
        this.putExtra(bundle, "com.facebook.platform.extra.REF", this.ref);
        bundle.putBoolean("com.facebook.platform.extra.DATA_FAILURES_FATAL", this.dataErrorsFatal);
        if (!Utility.isNullOrEmpty(this.friends)) {
            bundle.putStringArrayList("com.facebook.platform.extra.FRIENDS", (ArrayList)this.friends);
        }
        return bundle;
    }
    
    public CONCRETE setCaption(final String caption) {
        this.caption = caption;
        return (CONCRETE)this;
    }
    
    public CONCRETE setDataErrorsFatal(final boolean dataErrorsFatal) {
        this.dataErrorsFatal = dataErrorsFatal;
        return (CONCRETE)this;
    }
    
    public CONCRETE setDescription(final String description) {
        this.description = description;
        return (CONCRETE)this;
    }
    
    public CONCRETE setFriends(final List<String> c) {
        this.friends = new ArrayList<String>(c);
        return (CONCRETE)this;
    }
    
    public CONCRETE setLink(final String link) {
        this.link = link;
        return (CONCRETE)this;
    }
    
    public CONCRETE setName(final String name) {
        this.name = name;
        return (CONCRETE)this;
    }
    
    public CONCRETE setPicture(final String picture) {
        this.picture = picture;
        return (CONCRETE)this;
    }
    
    public CONCRETE setPlace(final String place) {
        this.place = place;
        return (CONCRETE)this;
    }
    
    public CONCRETE setRef(final String ref) {
        this.ref = ref;
        return (CONCRETE)this;
    }
}
