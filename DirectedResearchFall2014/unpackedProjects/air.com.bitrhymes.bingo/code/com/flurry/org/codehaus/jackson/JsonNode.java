package com.flurry.org.codehaus.jackson;

import java.io.*;
import java.math.*;
import java.util.*;

public abstract class JsonNode implements Iterable<JsonNode>
{
    protected static final List<JsonNode> NO_NODES;
    protected static final List<String> NO_STRINGS;
    
    static {
        NO_NODES = Collections.emptyList();
        NO_STRINGS = Collections.emptyList();
    }
    
    public boolean asBoolean() {
        return this.asBoolean(false);
    }
    
    public boolean asBoolean(final boolean b) {
        return b;
    }
    
    public double asDouble() {
        return this.asDouble(0.0);
    }
    
    public double asDouble(final double n) {
        return n;
    }
    
    public int asInt() {
        return this.asInt(0);
    }
    
    public int asInt(final int n) {
        return n;
    }
    
    public long asLong() {
        return this.asLong(0L);
    }
    
    public long asLong(final long n) {
        return n;
    }
    
    public abstract String asText();
    
    public abstract JsonToken asToken();
    
    @Override
    public abstract boolean equals(final Object p0);
    
    public abstract JsonNode findParent(final String p0);
    
    public final List<JsonNode> findParents(final String s) {
        final List<JsonNode> parents = this.findParents(s, null);
        if (parents == null) {
            return Collections.emptyList();
        }
        return parents;
    }
    
    public abstract List<JsonNode> findParents(final String p0, final List<JsonNode> p1);
    
    public abstract JsonNode findPath(final String p0);
    
    public abstract JsonNode findValue(final String p0);
    
    public final List<JsonNode> findValues(final String s) {
        final List<JsonNode> values = this.findValues(s, null);
        if (values == null) {
            return Collections.emptyList();
        }
        return values;
    }
    
    public abstract List<JsonNode> findValues(final String p0, final List<JsonNode> p1);
    
    public final List<String> findValuesAsText(final String s) {
        final List<String> valuesAsText = this.findValuesAsText(s, null);
        if (valuesAsText == null) {
            return Collections.emptyList();
        }
        return valuesAsText;
    }
    
    public abstract List<String> findValuesAsText(final String p0, final List<String> p1);
    
    public JsonNode get(final int n) {
        return null;
    }
    
    public JsonNode get(final String s) {
        return null;
    }
    
    public BigInteger getBigIntegerValue() {
        return BigInteger.ZERO;
    }
    
    public byte[] getBinaryValue() throws IOException {
        return null;
    }
    
    public boolean getBooleanValue() {
        return false;
    }
    
    public BigDecimal getDecimalValue() {
        return BigDecimal.ZERO;
    }
    
    public double getDoubleValue() {
        return 0.0;
    }
    
    public Iterator<JsonNode> getElements() {
        return JsonNode.NO_NODES.iterator();
    }
    
    public Iterator<String> getFieldNames() {
        return JsonNode.NO_STRINGS.iterator();
    }
    
    public Iterator<Map.Entry<String, JsonNode>> getFields() {
        return Collections.emptyList().iterator();
    }
    
    public int getIntValue() {
        return 0;
    }
    
    public long getLongValue() {
        return 0L;
    }
    
    public abstract JsonParser.NumberType getNumberType();
    
    public Number getNumberValue() {
        return null;
    }
    
    @Deprecated
    public final JsonNode getPath(final int n) {
        return this.path(n);
    }
    
    @Deprecated
    public final JsonNode getPath(final String s) {
        return this.path(s);
    }
    
    public String getTextValue() {
        return null;
    }
    
    @Deprecated
    public boolean getValueAsBoolean() {
        return this.asBoolean(false);
    }
    
    @Deprecated
    public boolean getValueAsBoolean(final boolean b) {
        return this.asBoolean(b);
    }
    
    @Deprecated
    public double getValueAsDouble() {
        return this.asDouble(0.0);
    }
    
    @Deprecated
    public double getValueAsDouble(final double n) {
        return this.asDouble(n);
    }
    
    @Deprecated
    public int getValueAsInt() {
        return this.asInt(0);
    }
    
    @Deprecated
    public int getValueAsInt(final int n) {
        return this.asInt(n);
    }
    
    @Deprecated
    public long getValueAsLong() {
        return this.asLong(0L);
    }
    
    @Deprecated
    public long getValueAsLong(final long n) {
        return this.asLong(n);
    }
    
    @Deprecated
    public String getValueAsText() {
        return this.asText();
    }
    
    public boolean has(final int n) {
        return this.get(n) != null;
    }
    
    public boolean has(final String s) {
        return this.get(s) != null;
    }
    
    public boolean isArray() {
        return false;
    }
    
    public boolean isBigDecimal() {
        return false;
    }
    
    public boolean isBigInteger() {
        return false;
    }
    
    public boolean isBinary() {
        return false;
    }
    
    public boolean isBoolean() {
        return false;
    }
    
    public boolean isContainerNode() {
        return false;
    }
    
    public boolean isDouble() {
        return false;
    }
    
    public boolean isFloatingPointNumber() {
        return false;
    }
    
    public boolean isInt() {
        return false;
    }
    
    public boolean isIntegralNumber() {
        return false;
    }
    
    public boolean isLong() {
        return false;
    }
    
    public boolean isMissingNode() {
        return false;
    }
    
    public boolean isNull() {
        return false;
    }
    
    public boolean isNumber() {
        return false;
    }
    
    public boolean isObject() {
        return false;
    }
    
    public boolean isPojo() {
        return false;
    }
    
    public boolean isTextual() {
        return false;
    }
    
    public boolean isValueNode() {
        return false;
    }
    
    @Override
    public final Iterator<JsonNode> iterator() {
        return this.getElements();
    }
    
    public abstract JsonNode path(final int p0);
    
    public abstract JsonNode path(final String p0);
    
    public int size() {
        return 0;
    }
    
    @Override
    public abstract String toString();
    
    public abstract JsonParser traverse();
    
    public JsonNode with(final String s) {
        throw new UnsupportedOperationException("JsonNode not of type ObjectNode (but " + this.getClass().getName() + "), can not call with() on it");
    }
}
