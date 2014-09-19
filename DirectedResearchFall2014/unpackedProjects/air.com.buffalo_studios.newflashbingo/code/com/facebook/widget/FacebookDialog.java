package com.facebook.widget;

import android.app.*;
import c.m.x.a.gv.*;
import java.util.*;
import android.os.*;
import com.facebook.internal.*;
import android.content.*;
import com.facebook.*;

public class FacebookDialog
{
    public static final String COMPLETION_GESTURE_CANCEL = "cancel";
    private static final String EXTRA_DIALOG_COMPLETE_KEY = "com.facebook.platform.extra.DID_COMPLETE";
    private static final String EXTRA_DIALOG_COMPLETION_GESTURE_KEY = "com.facebook.platform.extra.COMPLETION_GESTURE";
    private static final String EXTRA_DIALOG_COMPLETION_ID_KEY = "com.facebook.platform.extra.POST_ID";
    private static NativeAppCallAttachmentStore attachmentStore;
    private Activity activity;
    private FacebookDialog$PendingCall appCall;
    private e fragment;
    private FacebookDialog$OnPresentCallback onPresentCallback;
    
    private FacebookDialog(final Activity activity, final e fragment, final FacebookDialog$PendingCall appCall, final FacebookDialog$OnPresentCallback onPresentCallback) {
        super();
        this.activity = activity;
        this.fragment = fragment;
        this.appCall = appCall;
        this.onPresentCallback = onPresentCallback;
    }
    
    public static boolean canPresentOpenGraphActionDialog(final Context context, final FacebookDialog$OpenGraphActionDialogFeature... rest) {
        return handleCanPresent(context, EnumSet.of(FacebookDialog$OpenGraphActionDialogFeature.OG_ACTION_DIALOG, rest));
    }
    
    public static boolean canPresentShareDialog(final Context context, final FacebookDialog$ShareDialogFeature... rest) {
        return handleCanPresent(context, EnumSet.of(FacebookDialog$ShareDialogFeature.SHARE_DIALOG, rest));
    }
    
    private static String getActionForFeatures(final Iterable<? extends FacebookDialog$DialogFeature> iterable) {
        final Iterator<? extends FacebookDialog$DialogFeature> iterator = iterable.iterator();
        final boolean hasNext = iterator.hasNext();
        String action = null;
        if (hasNext) {
            action = ((FacebookDialog$DialogFeature)iterator.next()).getAction();
        }
        return action;
    }
    
    private static NativeAppCallAttachmentStore getAttachmentStore() {
        if (FacebookDialog.attachmentStore == null) {
            FacebookDialog.attachmentStore = new NativeAppCallAttachmentStore();
        }
        return FacebookDialog.attachmentStore;
    }
    
    private static int getMinVersionForFeatures(final Iterable<? extends FacebookDialog$DialogFeature> iterable) {
        int max = Integer.MIN_VALUE;
        final Iterator<? extends FacebookDialog$DialogFeature> iterator = iterable.iterator();
        while (iterator.hasNext()) {
            max = Math.max(max, ((FacebookDialog$DialogFeature)iterator.next()).getMinVersion());
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
    
    private static int getProtocolVersionForNativeDialog(final Context context, final String s, final int n) {
        return NativeProtocol.getLatestAvailableProtocolVersionForAction(context, s, n);
    }
    
    public static boolean handleActivityResult(final Context context, final FacebookDialog$PendingCall facebookDialog$PendingCall, final int n, final Intent intent, final FacebookDialog$Callback facebookDialog$Callback) {
        if (n != facebookDialog$PendingCall.getRequestCode()) {
            return false;
        }
        if (FacebookDialog.attachmentStore != null) {
            FacebookDialog.attachmentStore.cleanupAttachmentsForCall(context, facebookDialog$PendingCall.getCallId());
        }
        if (facebookDialog$Callback != null) {
            if (NativeProtocol.isErrorResult(intent)) {
                facebookDialog$Callback.onError(facebookDialog$PendingCall, NativeProtocol.getErrorFromResult(intent), intent.getExtras());
            }
            else {
                facebookDialog$Callback.onComplete(facebookDialog$PendingCall, intent.getExtras());
            }
        }
        return true;
    }
    
    private static boolean handleCanPresent(final Context context, final Iterable<? extends FacebookDialog$DialogFeature> iterable) {
        return getProtocolVersionForNativeDialog(context, getActionForFeatures(iterable), getMinVersionForFeatures(iterable)) != -1;
    }
    
    public FacebookDialog$PendingCall present() {
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
}
