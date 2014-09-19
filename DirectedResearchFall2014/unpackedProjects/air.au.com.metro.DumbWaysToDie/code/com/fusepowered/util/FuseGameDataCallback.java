package com.fusepowered.util;

import java.util.*;

public abstract class FuseGameDataCallback extends FuseCallback
{
    FuseGameDataError fuseGameDataError;
    GameKeyValuePairs gameKeyValuePairs;
    
    public FuseGameDataCallback() {
        super();
        this.gameKeyValuePairs = new GameKeyValuePairs();
    }
    
    @Override
    public void accountLoginComplete(final int n, final String s) {
    }
    
    @Override
    public void adAvailabilityResponse(final int n, final int n2) {
    }
    
    public abstract void attackRobberyLogError(final FuseAttackErrors p0);
    
    public abstract void attackRobberyLogReceived(final ArrayList<UserTransactionLog> p0);
    
    @Override
    public void callback() {
    }
    
    @Override
    public void chatListError(final FuseChatError fuseChatError) {
    }
    
    @Override
    public void chatListReceived(final ArrayList<ChatMessage> list, final String s) {
    }
    
    public abstract void enemiesListError(final FuseEnemiesListError p0);
    
    public abstract void enemiesListResult(final ArrayList<Player> p0);
    
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
    
    public abstract void gameDataError(final FuseGameDataError p0);
    
    public abstract void gameDataError(final FuseGameDataError p0, final int p1);
    
    public abstract void gameDataReceived(final String p0, final GameKeyValuePairs p1);
    
    public abstract void gameDataReceived(final String p0, final GameKeyValuePairs p1, final int p2);
    
    public abstract void gameDataSetAcknowledged(final int p0);
    
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
    
    public void setFuseGameDataError(final FuseGameDataError fuseGameDataError) {
        this.gameDataError(this.fuseGameDataError = fuseGameDataError);
    }
    
    public void setFuseGameDataError(final FuseGameDataError fuseGameDataError, final int requestId) {
        this.gameDataError(this.fuseGameDataError = fuseGameDataError, this.requestId = requestId);
    }
    
    public void setGameData(final String fuseId, final GameKeyValuePairs gameKeyValuePairs) {
        this.gameKeyValuePairs = gameKeyValuePairs;
        this.fuseId = fuseId;
        final Set<Map.Entry<String, String>> entrySet = gameKeyValuePairs.getRequestIdToObjectMapKeyMap().entrySet();
        if (entrySet.size() > 0) {
            for (final Map.Entry<String, String> entry : entrySet) {
                final String s = entry.getKey();
                final String rowKey = entry.getValue();
                gameKeyValuePairs.setReqId(s);
                gameKeyValuePairs.setRowKey(rowKey);
                this.gameDataReceived(fuseId, gameKeyValuePairs, Integer.parseInt(s));
            }
        }
        else {
            this.gameDataReceived(fuseId, gameKeyValuePairs);
        }
    }
    
    @Override
    public void timeUpdated(final int n) {
    }
}
