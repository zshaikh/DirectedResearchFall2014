package com.fusepowered.util;

import java.util.*;
import com.fusepowered.fuseapi.*;

public abstract class FuseCallback
{
    public String fuseId;
    public boolean isClientRequestAd;
    public int requestId;
    
    public abstract void accountLoginComplete(final int p0, final String p1);
    
    public abstract void adAvailabilityResponse(final int p0, final int p1);
    
    public abstract void callback();
    
    public abstract void chatListError(final FuseChatError p0);
    
    public abstract void chatListReceived(final ArrayList<ChatMessage> p0, final String p1);
    
    public abstract void friendAccepted(final String p0, final FuseAcceptFriendError p1);
    
    public abstract void friendAdded(final String p0, final FuseAddFriendError p1);
    
    public abstract void friendRejected(final String p0, final FuseRejectFriendError p1);
    
    public abstract void friendRemoved(final String p0, final FuseRemoveFriendError p1);
    
    public abstract void friendsListError(final FuseFriendsListError p0);
    
    public abstract void friendsListUpdated(final ArrayList<Player> p0);
    
    public abstract void friendsMigrated(final String p0, final FuseMigrateFriendsError p1);
    
    public abstract void gameConfigurationReceived();
    
    public abstract void incentiveActionCompletedStatus(final String p0);
    
    public abstract void mailAcknowledged(final int p0, final String p1, final int p2);
    
    public abstract void mailError(final FuseMailError p0, final int p1);
    
    public abstract void mailListError(final FuseMailError p0);
    
    public abstract void mailListReceived(final ArrayList<Mail> p0, final String p1);
    
    public abstract void notificationAction(final String p0);
    
    public boolean parseResponse(final Response response, final ActionType actionType, final String s) {
        if (response != null) {
            final String xml = response.getXml();
            if (!StringUtil.isEmpty(xml) && actionType != null) {
                return XMLParser.parseResponse(actionType, s, xml, FuseAPI.responseValues, this);
            }
        }
        return true;
    }
    
    public abstract void rewardRedeemed(final int p0, final int p1, final String p2, final String p3);
    
    public abstract void sessionLoginError(final FuseLoginError p0);
    
    public abstract void sessionStartReceived();
    
    public abstract void timeUpdated(final int p0);
}
