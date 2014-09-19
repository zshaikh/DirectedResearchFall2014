package com.flurry.org.codehaus.jackson.node;

import java.math.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.util.*;

public class ObjectNode extends ContainerNode
{
    protected LinkedHashMap<String, JsonNode> _children;
    
    public ObjectNode(final JsonNodeFactory jsonNodeFactory) {
        super(jsonNodeFactory);
        this._children = null;
    }
    
    private final JsonNode _put(final String key, final JsonNode value) {
        if (this._children == null) {
            this._children = new LinkedHashMap<String, JsonNode>();
        }
        return this._children.put(key, value);
    }
    
    @Override
    public JsonToken asToken() {
        return JsonToken.START_OBJECT;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (o == null) {
            return false;
        }
        if (o.getClass() != this.getClass()) {
            return false;
        }
        final ObjectNode objectNode = (ObjectNode)o;
        if (objectNode.size() != this.size()) {
            return false;
        }
        if (this._children != null) {
            for (final Map.Entry<Object, Object> entry : this._children.entrySet()) {
                final String s = entry.getKey();
                final JsonNode jsonNode = entry.getValue();
                final JsonNode value = objectNode.get(s);
                if (value == null || !value.equals(jsonNode)) {
                    return false;
                }
            }
        }
        return true;
    }
    
    @Override
    public ObjectNode findParent(final String s) {
        if (this._children != null) {
            for (final Map.Entry<Object, Object> entry : this._children.entrySet()) {
                if (s.equals(entry.getKey())) {
                    return this;
                }
                final JsonNode parent = entry.getValue().findParent(s);
                if (parent != null) {
                    return (ObjectNode)parent;
                }
            }
        }
        return null;
    }
    
    @Override
    public List<JsonNode> findParents(final String s, List<JsonNode> parents) {
        if (this._children != null) {
            for (final Map.Entry<Object, Object> entry : this._children.entrySet()) {
                if (s.equals(entry.getKey())) {
                    if (parents == null) {
                        parents = new ArrayList<JsonNode>();
                    }
                    parents.add(this);
                }
                else {
                    parents = entry.getValue().findParents(s, parents);
                }
            }
        }
        return parents;
    }
    
    @Override
    public JsonNode findValue(final String s) {
        if (this._children != null) {
            for (final Map.Entry<Object, Object> entry : this._children.entrySet()) {
                if (s.equals(entry.getKey())) {
                    return entry.getValue();
                }
                final JsonNode value = entry.getValue().findValue(s);
                if (value != null) {
                    return value;
                }
            }
        }
        return null;
    }
    
    @Override
    public List<JsonNode> findValues(final String s, List<JsonNode> values) {
        if (this._children != null) {
            for (final Map.Entry<Object, Object> entry : this._children.entrySet()) {
                if (s.equals(entry.getKey())) {
                    if (values == null) {
                        values = new ArrayList<JsonNode>();
                    }
                    values.add(entry.getValue());
                }
                else {
                    values = entry.getValue().findValues(s, values);
                }
            }
        }
        return values;
    }
    
    @Override
    public List<String> findValuesAsText(final String s, List<String> valuesAsText) {
        if (this._children != null) {
            for (final Map.Entry<Object, Object> entry : this._children.entrySet()) {
                if (s.equals(entry.getKey())) {
                    if (valuesAsText == null) {
                        valuesAsText = new ArrayList<String>();
                    }
                    valuesAsText.add(entry.getValue().asText());
                }
                else {
                    valuesAsText = entry.getValue().findValuesAsText(s, valuesAsText);
                }
            }
        }
        return valuesAsText;
    }
    
    @Override
    public JsonNode get(final int n) {
        return null;
    }
    
    @Override
    public JsonNode get(final String key) {
        if (this._children != null) {
            return this._children.get(key);
        }
        return null;
    }
    
    @Override
    public Iterator<JsonNode> getElements() {
        if (this._children == null) {
            return NoNodesIterator.instance();
        }
        return this._children.values().iterator();
    }
    
    @Override
    public Iterator<String> getFieldNames() {
        if (this._children == null) {
            return NoStringsIterator.instance();
        }
        return this._children.keySet().iterator();
    }
    
    @Override
    public Iterator<Map.Entry<String, JsonNode>> getFields() {
        if (this._children == null) {
            return NoFieldsIterator.instance;
        }
        return (Iterator<Map.Entry<String, JsonNode>>)this._children.entrySet().iterator();
    }
    
    @Override
    public int hashCode() {
        if (this._children == null) {
            return -1;
        }
        return this._children.hashCode();
    }
    
    @Override
    public boolean isObject() {
        return true;
    }
    
    @Override
    public JsonNode path(final int n) {
        return MissingNode.getInstance();
    }
    
    @Override
    public JsonNode path(final String key) {
        if (this._children != null) {
            final JsonNode jsonNode = this._children.get(key);
            if (jsonNode != null) {
                return jsonNode;
            }
        }
        return MissingNode.getInstance();
    }
    
    public JsonNode put(final String s, JsonNode nullNode) {
        if (nullNode == null) {
            nullNode = this.nullNode();
        }
        return this._put(s, nullNode);
    }
    
    public void put(final String s, final double n) {
        this._put(s, this.numberNode(n));
    }
    
    public void put(final String s, final float n) {
        this._put(s, this.numberNode(n));
    }
    
    public void put(final String s, final int n) {
        this._put(s, this.numberNode(n));
    }
    
    public void put(final String s, final long n) {
        this._put(s, this.numberNode(n));
    }
    
    public void put(final String s, final Boolean b) {
        if (b == null) {
            this._put(s, this.nullNode());
            return;
        }
        this._put(s, this.booleanNode(b));
    }
    
    public void put(final String s, final Double n) {
        if (n == null) {
            this._put(s, this.nullNode());
            return;
        }
        this._put(s, this.numberNode(n));
    }
    
    public void put(final String s, final Float n) {
        if (n == null) {
            this._put(s, this.nullNode());
            return;
        }
        this._put(s, this.numberNode(n));
    }
    
    public void put(final String s, final Integer n) {
        if (n == null) {
            this._put(s, this.nullNode());
            return;
        }
        this._put(s, this.numberNode(n));
    }
    
    public void put(final String s, final Long n) {
        if (n == null) {
            this._put(s, this.nullNode());
            return;
        }
        this._put(s, this.numberNode(n));
    }
    
    public void put(final String s, final String s2) {
        if (s2 == null) {
            this.putNull(s);
            return;
        }
        this._put(s, this.textNode(s2));
    }
    
    public void put(final String s, final BigDecimal bigDecimal) {
        if (bigDecimal == null) {
            this.putNull(s);
            return;
        }
        this._put(s, this.numberNode(bigDecimal));
    }
    
    public void put(final String s, final boolean b) {
        this._put(s, this.booleanNode(b));
    }
    
    public void put(final String s, final byte[] array) {
        if (array == null) {
            this._put(s, this.nullNode());
            return;
        }
        this._put(s, this.binaryNode(array));
    }
    
    public JsonNode putAll(final ObjectNode objectNode) {
        final int size = objectNode.size();
        if (size > 0) {
            if (this._children == null) {
                this._children = new LinkedHashMap<String, JsonNode>(size);
            }
            objectNode.putContentsTo(this._children);
        }
        return this;
    }
    
    public JsonNode putAll(final Map<String, JsonNode> m) {
        if (this._children == null) {
            this._children = new LinkedHashMap<String, JsonNode>(m);
        }
        else {
            for (final Map.Entry<String, JsonNode> entry : m.entrySet()) {
                JsonNode nullNode = entry.getValue();
                if (nullNode == null) {
                    nullNode = this.nullNode();
                }
                this._children.put(entry.getKey(), nullNode);
            }
        }
        return this;
    }
    
    public ArrayNode putArray(final String s) {
        final ArrayNode arrayNode = this.arrayNode();
        this._put(s, arrayNode);
        return arrayNode;
    }
    
    protected void putContentsTo(final Map<String, JsonNode> map) {
        if (this._children != null) {
            for (final Map.Entry<Object, Object> entry : this._children.entrySet()) {
                map.put(entry.getKey(), entry.getValue());
            }
        }
    }
    
    public void putNull(final String s) {
        this._put(s, this.nullNode());
    }
    
    public ObjectNode putObject(final String s) {
        final ObjectNode objectNode = this.objectNode();
        this._put(s, objectNode);
        return objectNode;
    }
    
    public void putPOJO(final String s, final Object o) {
        this._put(s, this.POJONode(o));
    }
    
    public JsonNode remove(final String key) {
        if (this._children != null) {
            return this._children.remove(key);
        }
        return null;
    }
    
    public ObjectNode remove(final Collection<String> collection) {
        if (this._children != null) {
            final Iterator<String> iterator = collection.iterator();
            while (iterator.hasNext()) {
                this._children.remove(iterator.next());
            }
        }
        return this;
    }
    
    @Override
    public ObjectNode removeAll() {
        this._children = null;
        return this;
    }
    
    public ObjectNode retain(final Collection<String> collection) {
        if (this._children != null) {
            final Iterator<Map.Entry<Object, Object>> iterator = this._children.entrySet().iterator();
            while (iterator.hasNext()) {
                if (!collection.contains(iterator.next().getKey())) {
                    iterator.remove();
                }
            }
        }
        return this;
    }
    
    public ObjectNode retain(final String... a) {
        return this.retain(Arrays.asList(a));
    }
    
    @Override
    public final void serialize(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeStartObject();
        if (this._children != null) {
            for (final Map.Entry<Object, Object> entry : this._children.entrySet()) {
                jsonGenerator.writeFieldName(entry.getKey());
                entry.getValue().serialize(jsonGenerator, serializerProvider);
            }
        }
        jsonGenerator.writeEndObject();
    }
    
    @Override
    public void serializeWithType(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonProcessingException {
        typeSerializer.writeTypePrefixForObject(this, jsonGenerator);
        if (this._children != null) {
            for (final Map.Entry<Object, Object> entry : this._children.entrySet()) {
                jsonGenerator.writeFieldName(entry.getKey());
                entry.getValue().serialize(jsonGenerator, serializerProvider);
            }
        }
        typeSerializer.writeTypeSuffixForObject(this, jsonGenerator);
    }
    
    @Override
    public int size() {
        if (this._children == null) {
            return 0;
        }
        return this._children.size();
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder(32 + (this.size() << 4));
        sb.append("{");
        if (this._children != null) {
            int n = 0;
            for (final Map.Entry<Object, Object> entry : this._children.entrySet()) {
                if (n > 0) {
                    sb.append(",");
                }
                ++n;
                TextNode.appendQuoted(sb, entry.getKey());
                sb.append(':');
                sb.append(entry.getValue().toString());
            }
        }
        sb.append("}");
        return sb.toString();
    }
    
    @Override
    public ObjectNode with(final String key) {
        if (this._children == null) {
            this._children = new LinkedHashMap<String, JsonNode>();
        }
        else {
            final JsonNode jsonNode = this._children.get(key);
            if (jsonNode != null) {
                if (jsonNode instanceof ObjectNode) {
                    return (ObjectNode)jsonNode;
                }
                throw new UnsupportedOperationException("Property '" + key + "' has value that is not of type ObjectNode (but " + ((ObjectNode)jsonNode).getClass().getName() + ")");
            }
        }
        final ObjectNode objectNode = this.objectNode();
        this._children.put(key, objectNode);
        return objectNode;
    }
    
    protected static class NoFieldsIterator implements Iterator<Map.Entry<String, JsonNode>>
    {
        static final NoFieldsIterator instance;
        
        static {
            instance = new NoFieldsIterator();
        }
        
        @Override
        public boolean hasNext() {
            return false;
        }
        
        @Override
        public Map.Entry<String, JsonNode> next() {
            throw new NoSuchElementException();
        }
        
        @Override
        public void remove() {
            throw new IllegalStateException();
        }
    }
}
