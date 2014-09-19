package com.fusepowered.util;

import android.util.*;
import java.util.*;

public class GameKeyValuePairs
{
    private HashMap<String, GameValue> map;
    private HashMap<String, HashMap<String, String>> objectMap;
    private String reqId;
    private HashMap<String, String> requestIdToObjectMapKeyMap;
    private String rowKey;
    private String user;
    
    public GameKeyValuePairs() {
        super();
        this.map = new HashMap<String, GameValue>();
        this.objectMap = new HashMap<String, HashMap<String, String>>();
        this.requestIdToObjectMapKeyMap = new HashMap<String, String>();
    }
    
    public byte[] getBinaryValue(final String key) {
        final GameValue gameValue = this.map.get(key);
        byte[] decode = null;
        if (gameValue != null) {
            decode = Base64.decode(gameValue.getValue(), 0);
        }
        return decode;
    }
    
    public HashMap<String, GameValue> getMap() {
        return this.map;
    }
    
    public HashMap<String, String> getMapForKey(final String key) {
        return this.objectMap.get(key);
    }
    
    public Set<String> getObjectMapKeys() {
        return this.objectMap.keySet();
    }
    
    public String getReqId() {
        return this.reqId;
    }
    
    public HashMap<String, String> getRequestIdToObjectMapKeyMap() {
        return this.requestIdToObjectMapKeyMap;
    }
    
    public String getRowKey() {
        return this.rowKey;
    }
    
    public String getStringValue(final String key) {
        final GameValue gameValue = this.map.get(key);
        String value = null;
        if (gameValue != null) {
            value = gameValue.getValue();
        }
        return value;
    }
    
    public String getStringValue(final String key, final String key2) {
        return this.objectMap.get(key).get(key2);
    }
    
    public String getUser() {
        return this.user;
    }
    
    public void setKeyValue(final String key, final double d) {
        this.map.put(key, new GameValue(String.valueOf(d), false));
    }
    
    public void setKeyValue(final String key, final float f) {
        this.map.put(key, new GameValue(String.valueOf(f), false));
    }
    
    public void setKeyValue(final String key, final int i) {
        this.map.put(key, new GameValue(String.valueOf(i), false));
    }
    
    public void setKeyValue(final String key, final String s) {
        this.map.put(key, new GameValue(s, false));
    }
    
    public void setKeyValue(final String key, final Date obj) {
        this.map.put(key, new GameValue(String.valueOf(obj), false));
    }
    
    public void setKeyValue(final String key, final boolean b) {
        this.map.put(key, new GameValue(String.valueOf(b), false));
    }
    
    public void setKeyValue(final String key, final byte[] array) {
        this.map.put(key, new GameValue(String.valueOf(Base64.encodeToString(array, 2)), true));
    }
    
    public void setMap(final HashMap<String, GameValue> map) {
        this.map = map;
    }
    
    public void setMapForKey(final String key, final HashMap<String, String> value) {
        this.objectMap.put(key, value);
    }
    
    public void setObjectKeyValue(final String s, final String s2, final double d, final String s3) {
        this.setObjectKeyValue(s, s2, String.valueOf(d), s3);
    }
    
    public void setObjectKeyValue(final String s, final String s2, final float f, final String s3) {
        this.setObjectKeyValue(s, s2, String.valueOf(f), s3);
    }
    
    public void setObjectKeyValue(final String s, final String s2, final int i, final String s3) {
        this.setObjectKeyValue(s, s2, String.valueOf(i), s3);
    }
    
    public void setObjectKeyValue(final String s, final String key, final String value, final String key2) {
        HashMap<String, String> mapForKey = this.getMapForKey(s);
        if (mapForKey == null) {
            mapForKey = new HashMap<String, String>();
        }
        mapForKey.put(key, value);
        this.objectMap.put(s, mapForKey);
        this.requestIdToObjectMapKeyMap.put(key2, s);
    }
    
    public void setObjectKeyValue(final String s, final String s2, final Date obj, final String s3) {
        this.setObjectKeyValue(s, s2, String.valueOf(obj), s3);
    }
    
    public void setObjectKeyValue(final String s, final String s2, final boolean b, final String s3) {
        this.setObjectKeyValue(s, s2, String.valueOf(b), s3);
    }
    
    public void setReqId(final String reqId) {
        this.reqId = reqId;
    }
    
    public void setRowKey(final String rowKey) {
        this.rowKey = rowKey;
    }
    
    public void setUser(final String user) {
        this.user = user;
    }
    
    @Override
    public String toString() {
        final StringBuilder append = new StringBuilder("GameKeyValuePairs ").append("user=").append(this.user).append(' ').append("rowKey=").append(this.rowKey).append(' ').append("reqId=").append(this.reqId).append(' ');
        if (this.map.size() > 0) {
            append.append("[map=");
            for (final Map.Entry<String, GameValue> entry : this.map.entrySet()) {
                append.append('(').append(entry.getKey()).append(',').append(entry.getValue()).append(')');
            }
            append.append(']');
        }
        if (this.requestIdToObjectMapKeyMap.size() > 0) {
            append.append("[requestIdMap=");
            for (final Map.Entry<String, String> entry2 : this.requestIdToObjectMapKeyMap.entrySet()) {
                append.append('(').append(entry2.getKey()).append(':').append(entry2.getValue()).append(')');
            }
            append.append(']');
        }
        if (this.objectMap.size() > 0) {
            append.append("[objectMap=");
            for (final Map.Entry<String, HashMap<String, String>> entry3 : this.objectMap.entrySet()) {
                append.append("{Key:").append(entry3.getKey());
                for (final Map.Entry<String, String> entry4 : entry3.getValue().entrySet()) {
                    append.append('(').append(entry4.getKey()).append(',').append(entry4.getValue()).append(')');
                }
                append.append('}');
            }
            append.append(']');
        }
        return append.toString();
    }
}
