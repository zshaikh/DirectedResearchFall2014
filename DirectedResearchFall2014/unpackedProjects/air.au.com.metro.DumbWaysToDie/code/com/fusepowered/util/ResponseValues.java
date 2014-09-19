package com.fusepowered.util;

import java.util.concurrent.*;
import com.fusepowered.fuseapi.*;
import android.util.*;
import java.util.*;
import android.content.*;

public class ResponseValues
{
    private Account account;
    private ConcurrentLinkedQueue<Ad> adQueueParsed;
    private ArrayList<AdProvider> ads;
    private String applifierId;
    private boolean applifierUseImpact;
    private HashMap<String, ArrayList<ChatMessage>> chatMessages;
    private boolean disableAll;
    private boolean disableAnalytics;
    private boolean disableConfiguration;
    private boolean disableNotifications;
    private ArrayList<DLC> dlc;
    private ArrayList<Player> enemiesList;
    private String error;
    private ArrayList<Player> friendsList;
    private String fuseId;
    private ArrayList<GameConfig> gameConfigs;
    private GameKeyValuePairs gameKeyValuePairs;
    private ArrayList<Incentive> incentives;
    private HashMap<String, ArrayList<Mail>> mailLists;
    private ArrayList<Message> messages;
    private String requestId;
    private String sessionId;
    private ArrayList<SignPost> signPosts;
    private String timestamp;
    private String userCity;
    private String userCountry;
    private ArrayList<UserTransactionLog> userTransactionLogs;
    private String vungleId;
    
    public ResponseValues() {
        super();
        this.applifierId = null;
        this.vungleId = null;
        this.chatMessages = new HashMap<String, ArrayList<ChatMessage>>();
        this.mailLists = new HashMap<String, ArrayList<Mail>>();
        this.adQueueParsed = new ConcurrentLinkedQueue<Ad>();
    }
    
    public Account getAccount() {
        return this.account;
    }
    
    public Ad getAd() {
        return this.adQueueParsed.poll();
    }
    
    public ArrayList<AdProvider> getAds() {
        return this.ads;
    }
    
    public String getApplifierId() {
        return this.applifierId;
    }
    
    public boolean getApplifierUseImpact() {
        return this.applifierUseImpact;
    }
    
    public ArrayList<ChatMessage> getChatMessages(final String key) {
        if (key == null) {
            return null;
        }
        return this.chatMessages.get(key);
    }
    
    public ArrayList<DLC> getDlc() {
        return this.dlc;
    }
    
    public ArrayList<Player> getEnemiesList() {
        return this.enemiesList;
    }
    
    public String getError() {
        return this.error;
    }
    
    public ArrayList<Player> getFriendsList() {
        return this.friendsList;
    }
    
    public String getFuseId() {
        return this.fuseId;
    }
    
    public ArrayList<GameConfig> getGameConfigs() {
        final ArrayList<GameConfig> list = new ArrayList<GameConfig>();
        for (final String s : FuseAPI.appdata.getAll().keySet()) {
            final String string = FuseAPI.appdata.getString(s, (String)null);
            Log.d("GAME CONFIG", "sending this configuration key:" + s + " value:" + string);
            final GameConfig e = new GameConfig();
            e.setKey(s);
            e.setValue(string);
            list.add(e);
        }
        return list;
    }
    
    public GameKeyValuePairs getGameKeyValuePairs() {
        return this.gameKeyValuePairs;
    }
    
    public ArrayList<Incentive> getIncentives() {
        return this.incentives;
    }
    
    public ArrayList<Mail> getMailList(final String key) {
        if (key == null) {
            return null;
        }
        return this.mailLists.get(key);
    }
    
    public ArrayList<Message> getMessages() {
        return this.messages;
    }
    
    public Message getNextMessage() {
        if (this.messages.isEmpty()) {
            return null;
        }
        final Message message = this.messages.get(0);
        this.messages.remove(0);
        return message;
    }
    
    public int getQueueSize() {
        return this.adQueueParsed.size();
    }
    
    public String getReqId() {
        return this.requestId;
    }
    
    public String getSessionId() {
        return this.sessionId;
    }
    
    public ArrayList<SignPost> getSignPosts() {
        return this.signPosts;
    }
    
    public String getTimestamp() {
        return this.timestamp;
    }
    
    public String getUserCity() {
        return this.userCity;
    }
    
    public String getUserCountry() {
        return this.userCountry;
    }
    
    public ArrayList<UserTransactionLog> getUserTransactionLogs() {
        return this.userTransactionLogs;
    }
    
    public String getVungleId() {
        return this.vungleId;
    }
    
    public boolean isDisableAll() {
        return this.disableAll;
    }
    
    public boolean isDisableAnalytics() {
        return this.disableAnalytics;
    }
    
    public boolean isDisableConfiguration() {
        return this.disableConfiguration;
    }
    
    public boolean isDisableNotifications() {
        return this.disableNotifications;
    }
    
    public Ad peekAd() {
        return this.adQueueParsed.peek();
    }
    
    public void setAccount(final Account account) {
        this.account = account;
    }
    
    public void setAd(final Ad e) {
        this.adQueueParsed.add(e);
    }
    
    public void setAds(final ArrayList<AdProvider> ads) {
        this.ads = ads;
    }
    
    public void setApplifierId(final String applifierId) {
        this.applifierId = applifierId;
    }
    
    public void setApplifierUseImpact(final boolean applifierUseImpact) {
        this.applifierUseImpact = applifierUseImpact;
    }
    
    public void setChatMessages(final String key, final ArrayList<ChatMessage> value) {
        this.chatMessages.put(key, value);
    }
    
    public void setDisableAll(final boolean disableAll) {
        this.disableAll = disableAll;
    }
    
    public void setDisableAnalytics(final boolean disableAnalytics) {
        this.disableAnalytics = disableAnalytics;
    }
    
    public void setDisableConfiguration(final boolean disableConfiguration) {
        this.disableConfiguration = disableConfiguration;
    }
    
    public void setDisableNotifications(final boolean disableNotifications) {
        this.disableNotifications = disableNotifications;
    }
    
    public void setDlc(final ArrayList<DLC> dlc) {
        this.dlc = dlc;
    }
    
    public void setEnemiesList(final ArrayList<Player> enemiesList) {
        this.enemiesList = enemiesList;
    }
    
    public void setError(final String error) {
        this.error = error;
    }
    
    public void setFriendsList(final ArrayList<Player> friendsList) {
        this.friendsList = friendsList;
    }
    
    public void setFuseId(final String fuseId) {
        this.fuseId = fuseId;
    }
    
    public void setGameConfigs(final ArrayList<GameConfig> list) {
        final SharedPreferences$Editor edit = FuseAPI.appdata.edit();
        edit.clear();
        edit.commit();
        for (final GameConfig gameConfig : list) {
            edit.putString(gameConfig.getKey(), gameConfig.getValue());
            Log.d("GAME CONFIG", "storing this configuration key:" + gameConfig.getKey() + " value:" + gameConfig.getValue());
        }
        edit.commit();
    }
    
    public void setGameKeyValuePairs(final GameKeyValuePairs gameKeyValuePairs) {
        this.gameKeyValuePairs = gameKeyValuePairs;
    }
    
    public void setIncentives(final ArrayList<Incentive> incentives) {
        this.incentives = incentives;
    }
    
    public void setMailList(final String key, final ArrayList<Mail> value) {
        this.mailLists.put(key, value);
    }
    
    public void setMessages(final ArrayList<Message> messages) {
        this.messages = messages;
    }
    
    public void setReqId(final String requestId) {
        this.requestId = requestId;
    }
    
    public void setSessionId(final String sessionId) {
        this.sessionId = sessionId;
    }
    
    public void setSignPosts(final ArrayList<SignPost> signPosts) {
        this.signPosts = signPosts;
    }
    
    public void setTimestamp(final String timestamp) {
        this.timestamp = timestamp;
    }
    
    public void setUserCity(final String userCity) {
        this.userCity = userCity;
    }
    
    public void setUserCountry(final String userCountry) {
        this.userCountry = userCountry;
    }
    
    public void setUserTransactionLogs(final ArrayList<UserTransactionLog> userTransactionLogs) {
        this.userTransactionLogs = userTransactionLogs;
    }
    
    public void setVungleId(final String vungleId) {
        this.vungleId = vungleId;
    }
    
    @Override
    public String toString() {
        return "ResponseValues [sessionId=" + this.sessionId + ", disableAll=" + this.disableAll + ", disableNotifications=" + this.disableNotifications + ", disableConfiguration=" + this.disableConfiguration + ", disableAnalytics=" + this.disableAnalytics + ", timestamp=" + this.timestamp + ", userCity=" + this.userCity + ", userCountry=" + this.userCountry + ", messages=" + this.messages + ", gameConfigs=" + this.gameConfigs + ", gameKeyValuePairs=" + this.gameKeyValuePairs + ", ads=" + this.ads + ", incentives=" + this.incentives + ", chatMessages=" + this.chatMessages + ", signPosts=" + this.signPosts + ", friendsList=" + this.friendsList + ", enemiesList=" + this.enemiesList + ", mailLists=" + this.mailLists + ", userTransactionLogs=" + this.userTransactionLogs + ", dlc=" + this.dlc + ", adQueueSize=" + this.adQueueParsed.size() + ", account=" + this.account + ']';
    }
}
