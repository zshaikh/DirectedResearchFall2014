package com.fusepowered.m1.google.gson;

import com.fusepowered.m1.google.gson.internal.*;
import java.util.*;

public final class JsonObject extends JsonElement
{
    private final LinkedHashTreeMap<String, JsonElement> members;
    
    public JsonObject() {
        super();
        this.members = new LinkedHashTreeMap<String, JsonElement>();
    }
    
    private JsonElement createJsonElement(final Object o) {
        if (o == null) {
            return JsonNull.INSTANCE;
        }
        return new JsonPrimitive(o);
    }
    
    public void add(final String s, JsonElement instance) {
        if (instance == null) {
            instance = JsonNull.INSTANCE;
        }
        this.members.put(s, instance);
    }
    
    public void addProperty(final String s, final Boolean b) {
        this.add(s, this.createJsonElement(b));
    }
    
    public void addProperty(final String s, final Character c) {
        this.add(s, this.createJsonElement(c));
    }
    
    public void addProperty(final String s, final Number n) {
        this.add(s, this.createJsonElement(n));
    }
    
    public void addProperty(final String s, final String s2) {
        this.add(s, this.createJsonElement(s2));
    }
    
    @Override
    JsonObject deepCopy() {
        final JsonObject jsonObject = new JsonObject();
        for (final Map.Entry<String, JsonElement> entry : this.members.entrySet()) {
            jsonObject.add(entry.getKey(), entry.getValue().deepCopy());
        }
        return jsonObject;
    }
    
    public Set<Map.Entry<String, JsonElement>> entrySet() {
        return this.members.entrySet();
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || (o instanceof JsonObject && ((JsonObject)o).members.equals(this.members));
    }
    
    public JsonElement get(final String s) {
        return this.members.get(s);
    }
    
    public JsonArray getAsJsonArray(final String s) {
        return this.members.get(s);
    }
    
    public JsonObject getAsJsonObject(final String s) {
        return this.members.get(s);
    }
    
    public JsonPrimitive getAsJsonPrimitive(final String s) {
        return this.members.get(s);
    }
    
    public boolean has(final String s) {
        return this.members.containsKey(s);
    }
    
    @Override
    public int hashCode() {
        return this.members.hashCode();
    }
    
    public JsonElement remove(final String s) {
        return this.members.remove(s);
    }
}
