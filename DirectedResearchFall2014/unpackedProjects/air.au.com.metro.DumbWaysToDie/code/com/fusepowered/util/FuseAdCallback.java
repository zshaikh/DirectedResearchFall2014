package com.fusepowered.util;

import com.fusepowered.a1.*;
import com.vungle.sdk.*;
import com.fusepowered.activities.*;
import java.util.*;
import com.fusepowered.fuseapi.*;
import android.util.*;
import com.fusepowered.m2.m2l.*;

public abstract class FuseAdCallback extends FuseCallback implements InterstitialAdListener, IApplifierImpactListener, EventListener
{
    public FuseLoginError ErrorCode;
    private boolean adFetched;
    private FuseApiBrowser fuseApiAdBrowser;
    
    public FuseAdCallback() {
        super();
        this.adFetched = false;
        this.isClientRequestAd = false;
    }
    
    @Override
    public void accountLoginComplete(final int n, final String s) {
    }
    
    @Override
    public void adAvailabilityResponse(final int n, final int n2) {
    }
    
    public abstract void adClicked();
    
    public abstract void adDisplayed();
    
    public abstract void adWillClose();
    
    @Override
    public void callback() {
    }
    
    @Override
    public void chatListError(final FuseChatError fuseChatError) {
    }
    
    @Override
    public void chatListReceived(final ArrayList<ChatMessage> list, final String s) {
    }
    
    public void displayAd() {
        this.adFetched = true;
    }
    
    @Override
    public void friendAccepted(final String s, final FuseAcceptFriendError fuseAcceptFriendError) {
    }
    
    @Override
    public void friendAdded(final String s, final FuseAddFriendError fuseAddFriendError) {
    }
    
    @Override
    public void friendRejected(final String s, final FuseRejectFriendError fuseRejectFriendError) {
    }
    
    @Override
    public void friendRemoved(final String s, final FuseRemoveFriendError fuseRemoveFriendError) {
    }
    
    @Override
    public void friendsListError(final FuseFriendsListError fuseFriendsListError) {
    }
    
    @Override
    public void friendsListUpdated(final ArrayList<Player> list) {
    }
    
    @Override
    public void friendsMigrated(final String s, final FuseMigrateFriendsError fuseMigrateFriendsError) {
    }
    
    @Override
    public void gameConfigurationReceived() {
    }
    
    @Override
    public void incentiveActionCompletedStatus(final String s) {
    }
    
    public boolean isAdFetched() {
        return this.adFetched;
    }
    
    @Override
    public void mailAcknowledged(final int n, final String s, final int n2) {
    }
    
    @Override
    public void mailError(final FuseMailError fuseMailError, final int n) {
    }
    
    @Override
    public void mailListError(final FuseMailError fuseMailError) {
    }
    
    @Override
    public void mailListReceived(final ArrayList<Mail> list, final String s) {
    }
    
    @Override
    public void notificationAction(final String s) {
    }
    
    @Override
    public void onCampaignsAvailable() {
    }
    
    @Override
    public void onCampaignsFetchFailed() {
    }
    
    @Override
    public void onImpactClose() {
        if (FuseAPI.showingApplifier) {
            FuseAPI.showingApplifier = false;
            FuseAPI.adDismiss();
            this.adWillClose();
        }
    }
    
    @Override
    public void onImpactOpen() {
        this.adDisplayed();
    }
    
    @Override
    public void onInterstitialClicked(final MoPubInterstitial moPubInterstitial) {
        Log.d("MOPUB_AKIL", "Ad Clicked");
        this.adClicked();
    }
    
    @Override
    public void onInterstitialDismissed(final MoPubInterstitial moPubInterstitial) {
        Log.d("MOPUB_AKIL", "Ad Dismissed");
        FuseAPI.adDismiss();
        this.adWillClose();
        moPubInterstitial.load();
    }
    
    @Override
    public void onInterstitialFailed(final MoPubInterstitial moPubInterstitial, final MoPubErrorCode moPubErrorCode) {
        Log.d("MOPUB_AKIL", "Ad Load failed");
    }
    
    @Override
    public void onInterstitialLoaded(final MoPubInterstitial moPubInterstitial) {
        Log.d("MOPUB_AKIL", "Ad Loaded");
    }
    
    @Override
    public void onInterstitialShown(final MoPubInterstitial moPubInterstitial) {
        Log.d("MOPUB_AKIL", "Ad Shown");
        this.adDisplayed();
    }
    
    @Override
    public void onVideoCompleted(final String s, final boolean b) {
    }
    
    @Override
    public void onVideoStarted() {
    }
    
    @Override
    public void onVungleAdEnd() {
        FuseAPI.adDismiss();
        this.adWillClose();
    }
    
    @Override
    public void onVungleAdStart() {
    }
    
    @Override
    public void onVungleView(final double n, final double n2) {
    }
    
    @Override
    public void rewardRedeemed(final int n, final int n2, final String s, final String s2) {
    }
    
    @Override
    public void sessionLoginError(final FuseLoginError errorCode) {
        this.ErrorCode = errorCode;
    }
    
    @Override
    public void sessionStartReceived() {
    }
    
    public void setAdFetched(final boolean adFetched) {
        this.adFetched = adFetched;
    }
    
    public void setFuseApiAdBrowser(final FuseApiBrowser fuseApiAdBrowser) {
        this.fuseApiAdBrowser = fuseApiAdBrowser;
    }
    
    @Override
    public void timeUpdated(final int n) {
    }
}
