package com.fusepowered.a1.campaign;

import org.json.*;
import com.fusepowered.a1.*;
import java.util.*;

public class ApplifierImpactRewardItem
{
    private String _key;
    private String _name;
    private String _pictureURL;
    private String[] _requiredKeys;
    private JSONObject _rewardItemJSON;
    
    public ApplifierImpactRewardItem(final JSONObject rewardItemJSON) {
        super();
        this._key = null;
        this._name = null;
        this._pictureURL = null;
        this._rewardItemJSON = null;
        this._requiredKeys = new String[] { "itemKey", "name", "picture" };
        this._rewardItemJSON = rewardItemJSON;
        this.parseValues();
    }
    
    private boolean checkDataIntegrity() {
        if (this._rewardItemJSON != null) {
            final String[] requiredKeys = this._requiredKeys;
            for (int length = requiredKeys.length, i = 0; i < length; ++i) {
                if (!this._rewardItemJSON.has(requiredKeys[i])) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
    
    private void parseValues() {
        try {
            this._key = this._rewardItemJSON.getString("itemKey");
            this._name = this._rewardItemJSON.getString("name");
            this._pictureURL = this._rewardItemJSON.getString("picture");
        }
        catch (Exception ex) {
            ApplifierImpactUtils.Log("Problem parsing campaign values", this);
        }
    }
    
    public void clearData() {
        this._key = null;
        this._name = null;
        this._pictureURL = null;
        this._rewardItemJSON = null;
        this._requiredKeys = null;
    }
    
    public Map<String, String> getDetails() {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("name", this.getName());
        hashMap.put("picture", this.getPictureUrl());
        return hashMap;
    }
    
    public String getKey() {
        return this._key;
    }
    
    public String getName() {
        return this._name;
    }
    
    public String getPictureUrl() {
        return this._pictureURL;
    }
    
    public boolean hasValidData() {
        return this.checkDataIntegrity();
    }
}
