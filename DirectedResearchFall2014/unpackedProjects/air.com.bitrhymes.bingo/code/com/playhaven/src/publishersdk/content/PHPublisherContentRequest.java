package com.playhaven.src.publishersdk.content;

import v2.com.playhaven.requests.content.*;
import java.lang.ref.*;
import android.app.*;
import v2.com.playhaven.views.interstitial.*;
import android.graphics.*;
import v2.com.playhaven.configuration.*;
import android.content.*;
import com.playhaven.src.common.*;
import v2.com.playhaven.utils.*;
import com.playhaven.src.publishersdk.content.adapters.*;
import v2.com.playhaven.listeners.*;

public class PHPublisherContentRequest extends PHContentRequest implements PHAPIRequest
{
    private ContentDelegateAdapter content_adapter;
    public WeakReference<Activity> context;
    private CustomizeDelegate customize_delegate;
    
    public PHPublisherContentRequest(final Activity activity, final ContentDelegate delegates, final String s) {
        this(activity, s);
        this.setDelegates(delegates);
    }
    
    public PHPublisherContentRequest(final Activity referent, final String s) {
        super(s);
        this.context = new WeakReference<Activity>(referent);
    }
    
    public static boolean didDismissContentWithin(final long l) {
        return PHContentRequest.didDismissContentWithin(l);
    }
    
    private void getCloseButtonImages() {
        if (this.customize_delegate != null) {
            final Bitmap closeButton = this.customize_delegate.closeButton(this, PHContentView.ButtonState.Down);
            final Bitmap closeButton2 = this.customize_delegate.closeButton(this, PHContentView.ButtonState.Up);
            if (closeButton != null && closeButton2 != null) {
                super.setCloseButton(closeButton, PHCloseButton.CloseButtonState.Down);
                super.setCloseButton(closeButton2, PHCloseButton.CloseButtonState.Up);
            }
        }
    }
    
    public boolean getOverlayImmediately() {
        return false;
    }
    
    public void preload() {
        this.getCloseButtonImages();
        final PHConfiguration phConfiguration = new PHConfiguration();
        phConfiguration.setCredentials(this.context.get(), PHConfig.token, PHConfig.secret);
        phConfiguration.setShouldPrecache(this.context.get(), PHConfig.precache);
        super.preload(this.context.get());
    }
    
    @Override
    public void send() {
        this.getCloseButtonImages();
        final PHConfiguration phConfiguration = new PHConfiguration();
        phConfiguration.setCredentials(this.context.get(), PHConfig.token, PHConfig.secret);
        phConfiguration.setShouldPrecache(this.context.get(), PHConfig.precache);
        super.send(this.context.get());
    }
    
    @Override
    public void setDelegate(final Delegate delegate) {
        final ContentDelegateAdapter content_adapter = this.content_adapter;
        FailureDelegate failureDelegate = null;
        if (content_adapter != null) {
            failureDelegate = this.content_adapter.getFailureDelegate();
        }
        if (ContentDelegate.class.isInstance(delegate)) {
            this.setOnContentListener(new ContentDelegateAdapter((ContentDelegate)delegate, failureDelegate, null));
            return;
        }
        this.setOnContentListener(new ContentDelegateAdapter(null, failureDelegate, delegate));
    }
    
    public void setDelegates(final Object o) {
        if (o instanceof RewardDelegate) {
            super.setOnRewardListener(new RewardDelegateAdapter((RewardDelegate)o));
        }
        else {
            PHStringUtil.log("*** RewardDelegate is not implemented. If you are using rewards this needs to be implemented.");
        }
        if (o instanceof PurchaseDelegate) {
            super.setOnPurchaseListener(new PurchaseDelegateAdapter((PurchaseDelegate)o));
        }
        else {
            PHStringUtil.log("*** PurchaseDelegate is not implemented. If you are using VGP this needs to be implemented.");
        }
        if (o instanceof CustomizeDelegate) {
            this.customize_delegate = (CustomizeDelegate)o;
        }
        else {
            this.customize_delegate = null;
            PHStringUtil.log("*** CustomizeDelegate is not implemented, using Play Haven close button bitmap. Implement to use own close button bitmap.");
        }
        if (o instanceof FailureDelegate) {
            super.setOnContentListener(new ContentDelegateAdapter(null, (FailureDelegate)o, null));
        }
        else {
            PHStringUtil.log("*** FailureDelegate is not implemented. Implement if want to be notified of failed content downloads.");
        }
        if (o instanceof ContentDelegate) {
            super.setOnContentListener(new ContentDelegateAdapter((ContentDelegate)o, null, null));
        }
        else {
            PHStringUtil.log("*** ContentDelegate is not implemented. Implement if want to be notified of content request states.");
        }
        if (o instanceof Delegate) {
            super.setOnContentListener(new ContentDelegateAdapter(null, null, (Delegate)o));
        }
        if (o instanceof ContentDelegate && o instanceof FailureDelegate) {
            super.setOnContentListener(new ContentDelegateAdapter((ContentDelegate)o, (FailureDelegate)o, null));
        }
    }
    
    public void setOnContentListener(final ContentDelegate contentDelegate) {
        final ContentDelegateAdapter content_adapter = this.content_adapter;
        FailureDelegate failureDelegate = null;
        if (content_adapter != null) {
            failureDelegate = this.content_adapter.getFailureDelegate();
        }
        final ContentDelegateAdapter content_adapter2 = this.content_adapter;
        Delegate requestDelegate = null;
        if (content_adapter2 != null) {
            requestDelegate = this.content_adapter.getRequestDelegate();
        }
        super.setOnContentListener(this.content_adapter = new ContentDelegateAdapter(contentDelegate, failureDelegate, requestDelegate));
    }
    
    public void setOnCustomizeListener(final CustomizeDelegate customize_delegate) {
        this.customize_delegate = customize_delegate;
    }
    
    public void setOnFailureListener(final FailureDelegate failureDelegate) {
        final ContentDelegateAdapter content_adapter = this.content_adapter;
        ContentDelegate contentDelegate = null;
        if (content_adapter != null) {
            contentDelegate = this.content_adapter.getContentDelegate();
        }
        final ContentDelegateAdapter content_adapter2 = this.content_adapter;
        Delegate requestDelegate = null;
        if (content_adapter2 != null) {
            requestDelegate = this.content_adapter.getRequestDelegate();
        }
        super.setOnContentListener(this.content_adapter = new ContentDelegateAdapter(contentDelegate, failureDelegate, requestDelegate));
    }
    
    public void setOnPurchaseListener(final PurchaseDelegate purchaseDelegate) {
        super.setOnPurchaseListener(new PurchaseDelegateAdapter(purchaseDelegate));
    }
    
    public void setOnRewardListener(final RewardDelegate rewardDelegate) {
        super.setOnRewardListener(new RewardDelegateAdapter(rewardDelegate));
    }
    
    public void setOverlayImmediately(final boolean b) {
    }
    
    public interface ContentDelegate extends Delegate
    {
        void didDismissContent(PHPublisherContentRequest p0, PHDismissType p1);
        
        void didDisplayContent(PHPublisherContentRequest p0, PHContent p1);
        
        void willDisplayContent(PHPublisherContentRequest p0, PHContent p1);
        
        void willGetContent(PHPublisherContentRequest p0);
    }
    
    public interface CustomizeDelegate
    {
        int borderColor(PHPublisherContentRequest p0, PHContent p1);
        
        Bitmap closeButton(PHPublisherContentRequest p0, PHContentView.ButtonState p1);
    }
    
    public interface FailureDelegate
    {
        void contentDidFail(PHPublisherContentRequest p0, Exception p1);
        
        void didFail(PHPublisherContentRequest p0, String p1);
    }
    
    public enum PHDismissType
    {
        ApplicationTriggered, 
        CloseButtonTriggered, 
        ContentUnitTriggered, 
        NoContentTriggered;
    }
    
    public interface PurchaseDelegate
    {
        void shouldMakePurchase(PHPublisherContentRequest p0, PHPurchase p1);
    }
    
    public interface RewardDelegate
    {
        void unlockedReward(PHPublisherContentRequest p0, PHReward p1);
    }
}
