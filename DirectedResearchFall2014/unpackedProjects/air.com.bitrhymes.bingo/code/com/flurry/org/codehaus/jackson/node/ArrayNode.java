package com.flurry.org.codehaus.jackson.node;

import java.math.*;
import java.util.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

public final class ArrayNode extends ContainerNode
{
    protected ArrayList<JsonNode> _children;
    
    public ArrayNode(final JsonNodeFactory jsonNodeFactory) {
        super(jsonNodeFactory);
    }
    
    private void _add(final JsonNode e) {
        if (this._children == null) {
            this._children = new ArrayList<JsonNode>();
        }
        this._children.add(e);
    }
    
    private void _insert(final int index, final JsonNode jsonNode) {
        if (this._children == null) {
            (this._children = new ArrayList<JsonNode>()).add(jsonNode);
            return;
        }
        if (index < 0) {
            this._children.add(0, jsonNode);
            return;
        }
        if (index >= this._children.size()) {
            this._children.add(jsonNode);
            return;
        }
        this._children.add(index, jsonNode);
    }
    
    private boolean _sameChildren(final ArrayList<JsonNode> list) {
        final int size = list.size();
        if (this.size() != size) {
            return false;
        }
        for (int i = 0; i < size; ++i) {
            if (!this._children.get(i).equals(list.get(i))) {
                return false;
            }
        }
        return true;
    }
    
    public JsonNode _set(final int n, final JsonNode element) {
        if (this._children == null || n < 0 || n >= this._children.size()) {
            throw new IndexOutOfBoundsException("Illegal index " + n + ", array size " + this.size());
        }
        return this._children.set(n, element);
    }
    
    public void add(final double n) {
        this._add(this.numberNode(n));
    }
    
    public void add(final float n) {
        this._add(this.numberNode(n));
    }
    
    public void add(final int n) {
        this._add(this.numberNode(n));
    }
    
    public void add(final long n) {
        this._add(this.numberNode(n));
    }
    
    public void add(JsonNode nullNode) {
        if (nullNode == null) {
            nullNode = this.nullNode();
        }
        this._add(nullNode);
    }
    
    public void add(final Boolean b) {
        if (b == null) {
            this.addNull();
            return;
        }
        this._add(this.booleanNode(b));
    }
    
    public void add(final Double n) {
        if (n == null) {
            this.addNull();
            return;
        }
        this._add(this.numberNode(n));
    }
    
    public void add(final Float n) {
        if (n == null) {
            this.addNull();
            return;
        }
        this._add(this.numberNode(n));
    }
    
    public void add(final Integer n) {
        if (n == null) {
            this.addNull();
            return;
        }
        this._add(this.numberNode(n));
    }
    
    public void add(final Long n) {
        if (n == null) {
            this.addNull();
            return;
        }
        this._add(this.numberNode(n));
    }
    
    public void add(final String s) {
        if (s == null) {
            this.addNull();
            return;
        }
        this._add(this.textNode(s));
    }
    
    public void add(final BigDecimal bigDecimal) {
        if (bigDecimal == null) {
            this.addNull();
            return;
        }
        this._add(this.numberNode(bigDecimal));
    }
    
    public void add(final boolean b) {
        this._add(this.booleanNode(b));
    }
    
    public void add(final byte[] array) {
        if (array == null) {
            this.addNull();
            return;
        }
        this._add(this.binaryNode(array));
    }
    
    public JsonNode addAll(final ArrayNode arrayNode) {
        final int size = arrayNode.size();
        if (size > 0) {
            if (this._children == null) {
                this._children = new ArrayList<JsonNode>(size + 2);
            }
            arrayNode.addContentsTo(this._children);
        }
        return this;
    }
    
    public JsonNode addAll(final Collection<JsonNode> collection) {
        if (collection.size() > 0) {
            if (this._children != null) {
                this._children.addAll(collection);
                return this;
            }
            this._children = new ArrayList<JsonNode>(collection);
        }
        return this;
    }
    
    public ArrayNode addArray() {
        final ArrayNode arrayNode = this.arrayNode();
        this._add(arrayNode);
        return arrayNode;
    }
    
    protected void addContentsTo(final List<JsonNode> list) {
        if (this._children != null) {
            final Iterator<JsonNode> iterator = this._children.iterator();
            while (iterator.hasNext()) {
                list.add(iterator.next());
            }
        }
    }
    
    public void addNull() {
        this._add(this.nullNode());
    }
    
    public ObjectNode addObject() {
        final ObjectNode objectNode = this.objectNode();
        this._add(objectNode);
        return objectNode;
    }
    
    public void addPOJO(final Object o) {
        if (o == null) {
            this.addNull();
            return;
        }
        this._add(this.POJONode(o));
    }
    
    @Override
    public JsonToken asToken() {
        return JsonToken.START_ARRAY;
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
        final ArrayNode arrayNode = (ArrayNode)o;
        if (this._children == null || this._children.size() == 0) {
            return arrayNode.size() == 0;
        }
        return arrayNode._sameChildren(this._children);
    }
    
    @Override
    public ObjectNode findParent(final String s) {
        if (this._children != null) {
            final Iterator<JsonNode> iterator = this._children.iterator();
            while (iterator.hasNext()) {
                final JsonNode parent = iterator.next().findParent(s);
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
            final Iterator<JsonNode> iterator = this._children.iterator();
            while (iterator.hasNext()) {
                parents = iterator.next().findParents(s, parents);
            }
        }
        return parents;
    }
    
    @Override
    public JsonNode findValue(final String s) {
        if (this._children != null) {
            final Iterator<JsonNode> iterator = this._children.iterator();
            while (iterator.hasNext()) {
                final JsonNode value = iterator.next().findValue(s);
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
            final Iterator<JsonNode> iterator = this._children.iterator();
            while (iterator.hasNext()) {
                values = iterator.next().findValues(s, values);
            }
        }
        return values;
    }
    
    @Override
    public List<String> findValuesAsText(final String s, List<String> valuesAsText) {
        if (this._children != null) {
            final Iterator<JsonNode> iterator = this._children.iterator();
            while (iterator.hasNext()) {
                valuesAsText = iterator.next().findValuesAsText(s, valuesAsText);
            }
        }
        return valuesAsText;
    }
    
    @Override
    public JsonNode get(final int index) {
        if (index >= 0 && this._children != null && index < this._children.size()) {
            return this._children.get(index);
        }
        return null;
    }
    
    @Override
    public JsonNode get(final String s) {
        return null;
    }
    
    @Override
    public Iterator<JsonNode> getElements() {
        if (this._children == null) {
            return NoNodesIterator.instance();
        }
        return this._children.iterator();
    }
    
    @Override
    public int hashCode() {
        int size;
        if (this._children == null) {
            size = 1;
        }
        else {
            size = this._children.size();
            for (final JsonNode jsonNode : this._children) {
                if (jsonNode != null) {
                    size ^= jsonNode.hashCode();
                }
            }
        }
        return size;
    }
    
    public void insert(final int n, final double n2) {
        this._insert(n, this.numberNode(n2));
    }
    
    public void insert(final int n, final float n2) {
        this._insert(n, this.numberNode(n2));
    }
    
    public void insert(final int n, final int n2) {
        this._insert(n, this.numberNode(n2));
    }
    
    public void insert(final int n, final long n2) {
        this._insert(n, this.numberNode(n2));
    }
    
    public void insert(final int n, JsonNode nullNode) {
        if (nullNode == null) {
            nullNode = this.nullNode();
        }
        this._insert(n, nullNode);
    }
    
    public void insert(final int n, final Boolean b) {
        if (b == null) {
            this.insertNull(n);
            return;
        }
        this._insert(n, this.booleanNode(b));
    }
    
    public void insert(final int n, final Double n2) {
        if (n2 == null) {
            this.insertNull(n);
            return;
        }
        this._insert(n, this.numberNode(n2));
    }
    
    public void insert(final int n, final Float n2) {
        if (n2 == null) {
            this.insertNull(n);
            return;
        }
        this._insert(n, this.numberNode(n2));
    }
    
    public void insert(final int n, final Integer n2) {
        if (n2 == null) {
            this.insertNull(n);
            return;
        }
        this._insert(n, this.numberNode(n2));
    }
    
    public void insert(final int n, final Long n2) {
        if (n2 == null) {
            this.insertNull(n);
            return;
        }
        this._insert(n, this.numberNode(n2));
    }
    
    public void insert(final int n, final String s) {
        if (s == null) {
            this.insertNull(n);
            return;
        }
        this._insert(n, this.textNode(s));
    }
    
    public void insert(final int n, final BigDecimal bigDecimal) {
        if (bigDecimal == null) {
            this.insertNull(n);
            return;
        }
        this._insert(n, this.numberNode(bigDecimal));
    }
    
    public void insert(final int n, final boolean b) {
        this._insert(n, this.booleanNode(b));
    }
    
    public void insert(final int n, final byte[] array) {
        if (array == null) {
            this.insertNull(n);
            return;
        }
        this._insert(n, this.binaryNode(array));
    }
    
    public ArrayNode insertArray(final int n) {
        final ArrayNode arrayNode = this.arrayNode();
        this._insert(n, arrayNode);
        return arrayNode;
    }
    
    public void insertNull(final int n) {
        this._insert(n, this.nullNode());
    }
    
    public ObjectNode insertObject(final int n) {
        final ObjectNode objectNode = this.objectNode();
        this._insert(n, objectNode);
        return objectNode;
    }
    
    public void insertPOJO(final int n, final Object o) {
        if (o == null) {
            this.insertNull(n);
            return;
        }
        this._insert(n, this.POJONode(o));
    }
    
    @Override
    public boolean isArray() {
        return true;
    }
    
    @Override
    public JsonNode path(final int index) {
        if (index >= 0 && this._children != null && index < this._children.size()) {
            return this._children.get(index);
        }
        return MissingNode.getInstance();
    }
    
    @Override
    public JsonNode path(final String s) {
        return MissingNode.getInstance();
    }
    
    public JsonNode remove(final int index) {
        if (index >= 0 && this._children != null && index < this._children.size()) {
            return this._children.remove(index);
        }
        return null;
    }
    
    @Override
    public ArrayNode removeAll() {
        this._children = null;
        return this;
    }
    
    @Override
    public final void serialize(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeStartArray();
        if (this._children != null) {
            final Iterator<JsonNode> iterator = this._children.iterator();
            while (iterator.hasNext()) {
                ((BaseJsonNode)iterator.next()).serialize(jsonGenerator, serializerProvider);
            }
        }
        jsonGenerator.writeEndArray();
    }
    
    @Override
    public void serializeWithType(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonProcessingException {
        typeSerializer.writeTypePrefixForArray(this, jsonGenerator);
        if (this._children != null) {
            final Iterator<JsonNode> iterator = this._children.iterator();
            while (iterator.hasNext()) {
                ((BaseJsonNode)iterator.next()).serialize(jsonGenerator, serializerProvider);
            }
        }
        typeSerializer.writeTypeSuffixForArray(this, jsonGenerator);
    }
    
    public JsonNode set(final int n, JsonNode nullNode) {
        if (nullNode == null) {
            nullNode = this.nullNode();
        }
        return this._set(n, nullNode);
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
        final StringBuilder sb = new StringBuilder(16 + (this.size() << 4));
        sb.append('[');
        if (this._children != null) {
            for (int i = 0; i < this._children.size(); ++i) {
                if (i > 0) {
                    sb.append(',');
                }
                sb.append(this._children.get(i).toString());
            }
        }
        sb.append(']');
        return sb.toString();
    }
}
