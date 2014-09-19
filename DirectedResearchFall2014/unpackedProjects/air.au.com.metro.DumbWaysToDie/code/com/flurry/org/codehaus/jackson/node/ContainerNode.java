package com.flurry.org.codehaus.jackson.node;

import com.flurry.org.codehaus.jackson.*;
import java.math.*;
import java.util.*;

public abstract class ContainerNode extends BaseJsonNode
{
    JsonNodeFactory _nodeFactory;
    
    protected ContainerNode(final JsonNodeFactory nodeFactory) {
        super();
        this._nodeFactory = nodeFactory;
    }
    
    public final POJONode POJONode(final Object o) {
        return this._nodeFactory.POJONode(o);
    }
    
    public final ArrayNode arrayNode() {
        return this._nodeFactory.arrayNode();
    }
    
    @Override
    public String asText() {
        return "";
    }
    
    @Override
    public abstract JsonToken asToken();
    
    public final BinaryNode binaryNode(final byte[] array) {
        return this._nodeFactory.binaryNode(array);
    }
    
    public final BinaryNode binaryNode(final byte[] array, final int n, final int n2) {
        return this._nodeFactory.binaryNode(array, n, n2);
    }
    
    public final BooleanNode booleanNode(final boolean b) {
        return this._nodeFactory.booleanNode(b);
    }
    
    @Override
    public abstract ObjectNode findParent(final String p0);
    
    @Override
    public abstract List<JsonNode> findParents(final String p0, final List<JsonNode> p1);
    
    @Override
    public abstract JsonNode findValue(final String p0);
    
    @Override
    public abstract List<JsonNode> findValues(final String p0, final List<JsonNode> p1);
    
    @Override
    public abstract List<String> findValuesAsText(final String p0, final List<String> p1);
    
    @Override
    public abstract JsonNode get(final int p0);
    
    @Override
    public abstract JsonNode get(final String p0);
    
    @Override
    public String getValueAsText() {
        return null;
    }
    
    @Override
    public boolean isContainerNode() {
        return true;
    }
    
    public final NullNode nullNode() {
        return this._nodeFactory.nullNode();
    }
    
    public final NumericNode numberNode(final byte b) {
        return this._nodeFactory.numberNode(b);
    }
    
    public final NumericNode numberNode(final double n) {
        return this._nodeFactory.numberNode(n);
    }
    
    public final NumericNode numberNode(final float n) {
        return this._nodeFactory.numberNode(n);
    }
    
    public final NumericNode numberNode(final int n) {
        return this._nodeFactory.numberNode(n);
    }
    
    public final NumericNode numberNode(final long n) {
        return this._nodeFactory.numberNode(n);
    }
    
    public final NumericNode numberNode(final BigDecimal bigDecimal) {
        return this._nodeFactory.numberNode(bigDecimal);
    }
    
    public final NumericNode numberNode(final short n) {
        return this._nodeFactory.numberNode(n);
    }
    
    public final ObjectNode objectNode() {
        return this._nodeFactory.objectNode();
    }
    
    public abstract ContainerNode removeAll();
    
    @Override
    public abstract int size();
    
    public final TextNode textNode(final String s) {
        return this._nodeFactory.textNode(s);
    }
    
    protected static class NoNodesIterator implements Iterator<JsonNode>
    {
        static final NoNodesIterator instance;
        
        static {
            instance = new NoNodesIterator();
        }
        
        public static NoNodesIterator instance() {
            return NoNodesIterator.instance;
        }
        
        @Override
        public boolean hasNext() {
            return false;
        }
        
        @Override
        public JsonNode next() {
            throw new NoSuchElementException();
        }
        
        @Override
        public void remove() {
            throw new IllegalStateException();
        }
    }
    
    protected static class NoStringsIterator implements Iterator<String>
    {
        static final NoStringsIterator instance;
        
        static {
            instance = new NoStringsIterator();
        }
        
        public static NoStringsIterator instance() {
            return NoStringsIterator.instance;
        }
        
        @Override
        public boolean hasNext() {
            return false;
        }
        
        @Override
        public String next() {
            throw new NoSuchElementException();
        }
        
        @Override
        public void remove() {
            throw new IllegalStateException();
        }
    }
}
