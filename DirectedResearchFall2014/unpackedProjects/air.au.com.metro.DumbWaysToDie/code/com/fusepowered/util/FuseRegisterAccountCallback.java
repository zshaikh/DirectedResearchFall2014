package com.fusepowered.util;

import com.fusepowered.fuseapi.*;
import java.util.*;

public class FuseRegisterAccountCallback extends FuseCallback
{
    private String alias;
    
    public FuseRegisterAccountCallback(final String alias) {
        super();
        this.alias = alias;
    }
    
    @Override
    public void accountLoginComplete(final int n, final String s) {
    }
    
    @Override
    public void adAvailabilityResponse(final int n, final int n2) {
    }
    
    @Override
    public void callback() {
        if (StringUtil.isEmpty(FuseAPI.responseValues.getAccount().getAlias())) {
            FuseAPI.responseValues.getAccount().setAlias(this.alias);
        }
        if (FuseAPI.responseValues.getAccount().getAccountId() == null) {
            FuseAPI.responseValues.setAccount(null);
        }
    }
    
    @Override
    public void chatListError(final FuseChatError fuseChatError) {
    }
    
    @Override
    public void chatListReceived(final ArrayList<ChatMessage> list, final String s) {
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
    public void rewardRedeemed(final int n, final int n2, final String s, final String s2) {
    }
    
    @Override
    public void sessionLoginError(final FuseLoginError fuseLoginError) {
    }
    
    @Override
    public void sessionStartReceived() {
    }
    
    @Override
    public void timeUpdated(final int n) {
    }
}
