package com.fusepowered.util;

import java.util.*;

public class GameInfo
{
    private String debug;
    private String encryptionBroken;
    private String gameId;
    private String gameName;
    private String gameVersion;
    private ArrayList<InAppItem> inAppItems;
    private String jailBroken;
    private String noHash;
    private String pl;
    
    public GameInfo() {
        super();
        this.noHash = "1";
        this.debug = "1";
        this.jailBroken = "0";
        this.encryptionBroken = "0";
        this.pl = "0";
    }
    
    public GameInfo(final String gameId, final String gameVersion) {
        super();
        this.gameId = gameId;
        this.gameVersion = gameVersion;
        this.noHash = "1";
        this.debug = "1";
        this.jailBroken = "0";
        this.encryptionBroken = "0";
        this.pl = "0";
    }
    
    public String getDebug() {
        return this.debug;
    }
    
    public String getEncryptionBroken() {
        return this.encryptionBroken;
    }
    
    public String getGameId() {
        return this.gameId;
    }
    
    public String getGameName() {
        return this.gameName;
    }
    
    public String getGameVersion() {
        return this.gameVersion;
    }
    
    public ArrayList<InAppItem> getInAppItems() {
        return this.inAppItems;
    }
    
    public String getJailBroken() {
        return this.jailBroken;
    }
    
    public String getNoHash() {
        return this.noHash;
    }
    
    public String getPl() {
        return this.pl;
    }
    
    public void setDebug(final String debug) {
        this.debug = debug;
    }
    
    public void setEncryptionBroken(final String encryptionBroken) {
        this.encryptionBroken = encryptionBroken;
    }
    
    public void setGameId(final String gameId) {
        this.gameId = gameId;
    }
    
    public void setGameName(final String gameName) {
        this.gameName = gameName;
    }
    
    public void setGameVersion(final String gameVersion) {
        this.gameVersion = gameVersion;
    }
    
    public void setInAppItems(final ArrayList<InAppItem> inAppItems) {
        this.inAppItems = inAppItems;
    }
    
    public void setJailBroken(final String jailBroken) {
        this.jailBroken = jailBroken;
    }
    
    public void setNoHash(final String noHash) {
        this.noHash = noHash;
    }
    
    public void setPl(final String pl) {
        this.pl = pl;
    }
    
    @Override
    public String toString() {
        return "GameInfo [gameId=" + this.gameId + ", gameVersion=" + this.gameVersion + ", gameName=" + this.gameName + ", noHash=" + this.noHash + ", debug=" + this.debug + ", jailBroken=" + this.jailBroken + ", pl=" + this.pl + ", encryptionBroken=" + this.encryptionBroken + ", inAppItems=" + this.inAppItems + ']';
    }
}
