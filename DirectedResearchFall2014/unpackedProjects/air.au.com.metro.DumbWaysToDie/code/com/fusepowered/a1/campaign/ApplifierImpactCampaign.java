package com.fusepowered.a1.campaign;

import org.json.*;
import com.fusepowered.a1.*;
import java.io.*;

public class ApplifierImpactCampaign
{
    private JSONObject _campaignJson;
    private ApplifierImpactCampaignStatus _campaignStatus;
    private String[] _requiredKeys;
    
    public ApplifierImpactCampaign() {
        super();
        this._campaignJson = null;
        this._requiredKeys = new String[] { "endScreen", "clickUrl", "picture", "trailerDownloadable", "trailerStreaming", "gameId", "gameName", "id", "tagLine" };
        this._campaignStatus = ApplifierImpactCampaignStatus.READY;
    }
    
    public ApplifierImpactCampaign(final JSONObject campaignJson) {
        super();
        this._campaignJson = null;
        this._requiredKeys = new String[] { "endScreen", "clickUrl", "picture", "trailerDownloadable", "trailerStreaming", "gameId", "gameName", "id", "tagLine" };
        this._campaignStatus = ApplifierImpactCampaignStatus.READY;
        this._campaignJson = campaignJson;
    }
    
    private boolean checkDataIntegrity() {
        if (this._campaignJson != null) {
            final String[] requiredKeys = this._requiredKeys;
            for (int length = requiredKeys.length, i = 0; i < length; ++i) {
                if (!this._campaignJson.has(requiredKeys[i])) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
    
    public void clearData() {
        this._campaignJson = null;
    }
    
    public String getCampaignId() {
        if (this.checkDataIntegrity()) {
            try {
                return this._campaignJson.getString("id");
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("getCampaignId: This should not happen!", this);
            }
        }
        return null;
    }
    
    public ApplifierImpactCampaignStatus getCampaignStatus() {
        return this._campaignStatus;
    }
    
    public String getClickUrl() {
        if (this.checkDataIntegrity()) {
            try {
                return this._campaignJson.getString("clickUrl");
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("getClickUrl: This should not happen!", this);
            }
        }
        return null;
    }
    
    public String getEndScreenUrl() {
        if (this.checkDataIntegrity()) {
            try {
                return this._campaignJson.getString("endScreen");
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("getEndScreenUrl: This should not happen!", this);
            }
        }
        return null;
    }
    
    public String getGameId() {
        if (this.checkDataIntegrity()) {
            try {
                return this._campaignJson.getString("gameId");
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("getGameId: This should not happen!", this);
            }
        }
        return null;
    }
    
    public String getGameName() {
        if (this.checkDataIntegrity()) {
            try {
                return this._campaignJson.getString("gameName");
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("getGameName: This should not happen!", this);
            }
        }
        return null;
    }
    
    public String getPicture() {
        if (this.checkDataIntegrity()) {
            try {
                return this._campaignJson.getString("picture");
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("getPicture: This should not happen!", this);
            }
        }
        return null;
    }
    
    public String getStoreId() {
        if (this._campaignJson.has("storeId")) {
            try {
                return this._campaignJson.getString("storeId");
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("getStoreId: Was supposed to use ApplifierImpactConstants.IMPACT_CAMPAIGN_STOREID_KEY but " + ex.getMessage() + " occured", this);
            }
        }
        if (this._campaignJson.has("iTunesId")) {
            try {
                return this._campaignJson.getString("iTunesId");
            }
            catch (Exception ex2) {
                ApplifierImpactUtils.Log("getStoreId: Was supposed to use ApplifierImpactConstants.IMPACT_CAMPAIGN_ITUNESID_KEY but " + ex2.getMessage() + " occured", this);
            }
        }
        return null;
    }
    
    public String getTagLine() {
        if (this.checkDataIntegrity()) {
            try {
                return this._campaignJson.getString("tagLine");
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("getTagLine: This should not happen!", this);
            }
        }
        return null;
    }
    
    public long getVideoFileExpectedSize() {
        if (this.checkDataIntegrity()) {
            try {
                final String string = this._campaignJson.getString("trailerSize");
                try {
                    return Long.parseLong(string);
                }
                catch (Exception ex) {
                    ApplifierImpactUtils.Log("getVideoFileExpectedSize: could not parse size: " + ex.getMessage(), this);
                    return -1L;
                }
            }
            catch (Exception ex2) {
                ApplifierImpactUtils.Log("getVideoFileExpectedSize: not found, returning -1", this);
                return -1L;
            }
        }
        return -1L;
    }
    
    public String getVideoFilename() {
        if (this.checkDataIntegrity()) {
            try {
                return String.valueOf(this.getCampaignId()) + "-" + new File(this._campaignJson.getString("trailerDownloadable")).getName();
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("getVideoFilename: This should not happen!", this);
            }
        }
        return null;
    }
    
    public String getVideoStreamUrl() {
        if (this.checkDataIntegrity()) {
            try {
                return this._campaignJson.getString("trailerStreaming");
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("getVideoStreamUrl: This should not happen!", this);
            }
        }
        return null;
    }
    
    public String getVideoUrl() {
        if (this.checkDataIntegrity()) {
            try {
                return this._campaignJson.getString("trailerDownloadable");
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("getVideoUrl: This should not happen!", this);
            }
        }
        return null;
    }
    
    public boolean hasValidData() {
        return this.checkDataIntegrity();
    }
    
    public Boolean isViewed() {
        if (this._campaignStatus == ApplifierImpactCampaignStatus.VIEWED) {
            return true;
        }
        return false;
    }
    
    public void setCampaignStatus(final ApplifierImpactCampaignStatus campaignStatus) {
        this._campaignStatus = campaignStatus;
    }
    
    public Boolean shouldBypassAppSheet() {
        if (this.checkDataIntegrity()) {
            try {
                return this._campaignJson.getBoolean("bypassAppSheet");
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("shouldBypassAppSheet: key not found for campaign: " + this.getCampaignId() + ", returning false", this);
            }
        }
        return false;
    }
    
    public Boolean shouldCacheVideo() {
        if (this.checkDataIntegrity()) {
            try {
                return this._campaignJson.getBoolean("cacheVideo");
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("shouldCacheVideo: key not found for campaign: " + this.getCampaignId() + ", returning false", this);
            }
        }
        return false;
    }
    
    public JSONObject toJson() {
        final JSONObject campaignJson = this._campaignJson;
        try {
            campaignJson.put("status", (Object)this.getCampaignStatus().toString());
            return campaignJson;
        }
        catch (Exception ex) {
            ApplifierImpactUtils.Log("Error creating campaign JSON", this);
            return null;
        }
    }
    
    @Override
    public String toString() {
        return "<ID: " + this.getCampaignId() + ", STATUS: " + this.getCampaignStatus().toString() + ", URL: " + this.getVideoUrl() + ">";
    }
    
    public enum ApplifierImpactCampaignStatus
    {
        PANIC("PANIC", 2), 
        READY("READY", 0), 
        VIEWED("VIEWED", 1);
        
        public static ApplifierImpactCampaignStatus getValueOf(final String s) {
            if (ApplifierImpactCampaignStatus.READY.toString().equals(s.toLowerCase())) {
                return ApplifierImpactCampaignStatus.READY;
            }
            if (ApplifierImpactCampaignStatus.VIEWED.toString().equals(s.toLowerCase())) {
                return ApplifierImpactCampaignStatus.VIEWED;
            }
            return ApplifierImpactCampaignStatus.PANIC;
        }
        
        @Override
        public String toString() {
            return this.name().toString().toLowerCase();
        }
    }
}
