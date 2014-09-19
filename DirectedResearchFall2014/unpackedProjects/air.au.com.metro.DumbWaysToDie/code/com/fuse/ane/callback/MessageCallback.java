package com.fuse.ane.callback;

import android.app.*;
import com.fuse.ane.AirFuseAPI.*;
import com.fusepowered.util.*;
import java.text.*;
import java.util.*;

public class MessageCallback extends FuseGameDataCallback
{
    private Activity activity;
    
    public MessageCallback(final Activity activity) {
        super();
        this.activity = activity;
    }
    
    private void logCallback(final String s) {
    }
    
    @Override
    public void accountLoginComplete(final int n, final String s) {
        this.logCallback("Account Login Complete");
    }
    
    @Override
    public void adAvailabilityResponse(final int n, final int n2) {
    }
    
    @Override
    public void attackRobberyLogError(final FuseAttackErrors fuseAttackErrors) {
    }
    
    @Override
    public void attackRobberyLogReceived(final ArrayList<UserTransactionLog> list) {
    }
    
    @Override
    public void callback() {
        this.logCallback("Fuse Game Call Back Called");
    }
    
    @Override
    public void chatListError(final FuseChatError obj) {
        this.logCallback("Chat list error: errorCode[" + obj + "]");
    }
    
    @Override
    public void chatListReceived(final ArrayList<ChatMessage> list, final String str) {
        final StringBuilder sb = new StringBuilder("Chat list received: count[");
        sb.append(list.size()).append("] fuse_id[").append(str).append("]");
        final Iterator<ChatMessage> iterator = list.iterator();
        while (iterator.hasNext()) {
            sb.append("   Message: ").append(iterator.next().toString());
        }
        this.logCallback(sb.toString());
    }
    
    @Override
    public void enemiesListError(final FuseEnemiesListError fuseEnemiesListError) {
    }
    
    @Override
    public void enemiesListResult(final ArrayList<Player> list) {
    }
    
    @Override
    public void friendAccepted(final String str, final FuseAcceptFriendError obj) {
        this.logCallback("Friend accepted: fuseId[" + str + "] errorCode[" + obj + "]");
    }
    
    @Override
    public void friendAdded(final String str, final FuseAddFriendError obj) {
        this.logCallback("Friend added: fuseId[" + str + "] errorCode[" + obj + "]");
    }
    
    @Override
    public void friendRejected(final String str, final FuseRejectFriendError obj) {
        this.logCallback("Friend rejected: fuseId[" + str + "] errorCode[" + obj + "]");
    }
    
    @Override
    public void friendRemoved(final String str, final FuseRemoveFriendError obj) {
        this.logCallback("Friend removed: fuseId[" + str + "] errorCode[" + obj + "]");
    }
    
    @Override
    public void friendsListError(final FuseFriendsListError obj) {
        this.logCallback("Friend list error: errorCode[" + obj + "]");
    }
    
    @Override
    public void friendsListUpdated(final ArrayList<Player> list) {
        final StringBuilder sb = new StringBuilder("Friend list updated: count[");
        sb.append(list.size()).append("]");
        final Iterator<Player> iterator = list.iterator();
        while (iterator.hasNext()) {
            sb.append("   Friend: ").append(iterator.next().toString());
        }
        this.logCallback(sb.toString());
    }
    
    @Override
    public void gameConfigurationReceived() {
        AirFuseAPIExtension.dispatch("AppConfigurationReceived", "2");
    }
    
    @Override
    public void gameDataError(final FuseGameDataError fuseGameDataError) {
    }
    
    @Override
    public void gameDataError(final FuseGameDataError fuseGameDataError, final int n) {
    }
    
    @Override
    public void gameDataReceived(final String s, final GameKeyValuePairs gameKeyValuePairs) {
    }
    
    @Override
    public void gameDataReceived(final String s, final GameKeyValuePairs gameKeyValuePairs, final int n) {
    }
    
    @Override
    public void gameDataSetAcknowledged(final int n) {
    }
    
    @Override
    public void incentiveActionCompletedStatus(final String str) {
        this.logCallback("Incentive Action Completed Status: " + str);
    }
    
    @Override
    public void mailAcknowledged(final int i, final String s, final int j) {
        this.logCallback(String.format("Mail acknowledged: messageId[%d] fuseId[%s] requestID[%d]", i, s, j));
    }
    
    @Override
    public void mailError(final FuseMailError obj, final int n) {
        this.logCallback("Mail error: [" + obj + "]");
    }
    
    @Override
    public void mailListError(final FuseMailError obj) {
        this.logCallback("Mail list error: [" + obj + "]");
    }
    
    @Override
    public void mailListReceived(final ArrayList<Mail> list, final String s) {
        final StringBuilder sb = new StringBuilder("Mail list received: count[");
        sb.append(list.size()).append("]");
        final Iterator<Mail> iterator = list.iterator();
        while (iterator.hasNext()) {
            sb.append("   Mail: ").append(iterator.next().toString());
        }
        this.logCallback(sb.toString());
    }
    
    @Override
    public void notificationAction(final String s) {
        this.logCallback("Notification Action");
    }
    
    @Override
    public void rewardRedeemed(final int n, final int i, final String str, final String str2) {
        this.logCallback("Reward ID: " + str + " Reward Name: " + str2 + " Amount: " + i);
    }
    
    @Override
    public void sessionLoginError(final FuseLoginError fuseLoginError) {
        AirFuseAPIExtension.dispatch("SessionStartError", String.valueOf(fuseLoginError.getErrorCode()));
    }
    
    @Override
    public void sessionStartReceived() {
        AirFuseAPIExtension.dispatch("SessionStartReceived", "2");
    }
    
    @Override
    public void timeUpdated(final int n) {
        this.logCallback("Time Updated: " + new SimpleDateFormat("yyyy MM dd HH:mm:ss").format(new Date(1000L * n)) + " UTC");
    }
}
