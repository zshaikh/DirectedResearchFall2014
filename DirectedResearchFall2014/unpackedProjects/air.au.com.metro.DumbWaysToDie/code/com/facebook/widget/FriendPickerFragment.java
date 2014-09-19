package com.facebook.widget;

import android.annotation.*;
import android.os.*;
import com.facebook.model.*;
import com.milkmangames.extensions.android.goviral.*;
import android.text.*;
import android.content.*;
import java.util.*;
import com.facebook.*;
import android.app.*;
import android.util.*;
import android.content.res.*;

@SuppressLint({ "ValidFragment" })
public class FriendPickerFragment extends PickerFragment
{
    private static final String ID = "id";
    public static final String MULTI_SELECT_BUNDLE_KEY = "com.facebook.widget.FriendPickerFragment.MultiSelect";
    private static final String NAME = "name";
    public static final String USER_ID_BUNDLE_KEY = "com.facebook.widget.FriendPickerFragment.UserId";
    private boolean multiSelect;
    private String userId;
    
    public FriendPickerFragment() {
        this(null);
    }
    
    public FriendPickerFragment(final Bundle friendPickerSettingsFromBundle) {
        super(GraphUser.class, b.a("layout.com_facebook_friendpickerfragment"), friendPickerSettingsFromBundle);
        this.multiSelect = true;
        this.setFriendPickerSettingsFromBundle(friendPickerSettingsFromBundle);
    }
    
    private Request createRequest(final String str, final Set c, final Session session) {
        final Request graphPathRequest = Request.newGraphPathRequest(session, str + "/friends", null);
        final HashSet<Object> set = new HashSet<Object>(c);
        set.addAll(Arrays.asList("id", "name"));
        final String pictureFieldSpecifier = this.adapter.getPictureFieldSpecifier();
        if (pictureFieldSpecifier != null) {
            set.add(pictureFieldSpecifier);
        }
        final Bundle parameters = graphPathRequest.getParameters();
        parameters.putString("fields", TextUtils.join((CharSequence)",", (Iterable)set));
        graphPathRequest.setParameters(parameters);
        return graphPathRequest;
    }
    
    private void setFriendPickerSettingsFromBundle(final Bundle bundle) {
        if (bundle != null) {
            if (bundle.containsKey("com.facebook.widget.FriendPickerFragment.UserId")) {
                this.setUserId(bundle.getString("com.facebook.widget.FriendPickerFragment.UserId"));
            }
            this.setMultiSelect(bundle.getBoolean("com.facebook.widget.FriendPickerFragment.MultiSelect", this.multiSelect));
        }
    }
    
    @Override
    PickerFragment$PickerFragmentAdapter createAdapter() {
        final FriendPickerFragment$1 friendPickerFragment$1 = new FriendPickerFragment$1(this, (Context)this.getActivity());
        friendPickerFragment$1.setShowCheckbox(true);
        friendPickerFragment$1.setShowPicture(this.getShowPictures());
        friendPickerFragment$1.setSortFields(Arrays.asList("name"));
        friendPickerFragment$1.setGroupByField("name");
        return friendPickerFragment$1;
    }
    
    @Override
    PickerFragment$LoadingStrategy createLoadingStrategy() {
        return new FriendPickerFragment$ImmediateLoadingStrategy(this, null);
    }
    
    @Override
    PickerFragment$SelectionStrategy createSelectionStrategy() {
        if (this.multiSelect) {
            return new PickerFragment$MultiSelectionStrategy(this);
        }
        return new PickerFragment$SingleSelectionStrategy(this);
    }
    
    @Override
    String getDefaultTitleText() {
        return this.getString(b.a("string.com_facebook_choose_friends"));
    }
    
    public boolean getMultiSelect() {
        return this.multiSelect;
    }
    
    @Override
    Request getRequestForLoadData(final Session session) {
        if (this.adapter == null) {
            throw new FacebookException("Can't issue requests until Fragment has been created.");
        }
        String userId;
        if (this.userId != null) {
            userId = this.userId;
        }
        else {
            userId = "me";
        }
        return this.createRequest(userId, this.extraFields, session);
    }
    
    public List getSelection() {
        return this.getSelectedGraphObjects();
    }
    
    public String getUserId() {
        return this.userId;
    }
    
    @Override
    public void onInflate(final Activity activity, final AttributeSet set, final Bundle bundle) {
        super.onInflate(activity, set, bundle);
        final TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(set, b.b("styleable.com_facebook_friend_picker_fragment"));
        this.setMultiSelect(obtainStyledAttributes.getBoolean(b.a("styleable.com_facebook_friend_picker_fragment_multi_select"), this.multiSelect));
        obtainStyledAttributes.recycle();
    }
    
    @Override
    void saveSettingsToBundle(final Bundle bundle) {
        super.saveSettingsToBundle(bundle);
        bundle.putString("com.facebook.widget.FriendPickerFragment.UserId", this.userId);
        bundle.putBoolean("com.facebook.widget.FriendPickerFragment.MultiSelect", this.multiSelect);
    }
    
    public void setMultiSelect(final boolean multiSelect) {
        if (this.multiSelect != multiSelect) {
            this.multiSelect = multiSelect;
            this.setSelectionStrategy(this.createSelectionStrategy());
        }
    }
    
    @Override
    public void setSettingsFromBundle(final Bundle bundle) {
        super.setSettingsFromBundle(bundle);
        this.setFriendPickerSettingsFromBundle(bundle);
    }
    
    public void setUserId(final String userId) {
        this.userId = userId;
    }
}
