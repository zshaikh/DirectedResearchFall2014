package com.flurry.org.codehaus.jackson.node;

import com.flurry.org.codehaus.jackson.*;
import java.util.*;

abstract class NodeCursor extends JsonStreamContext
{
    final NodeCursor _parent;
    
    public NodeCursor(final int type, final NodeCursor parent) {
        super();
        this._type = type;
        this._index = -1;
        this._parent = parent;
    }
    
    public abstract boolean currentHasChildren();
    
    public abstract JsonNode currentNode();
    
    public abstract JsonToken endToken();
    
    @Override
    public abstract String getCurrentName();
    
    @Override
    public final NodeCursor getParent() {
        return this._parent;
    }
    
    public final NodeCursor iterateChildren() {
        final JsonNode currentNode = this.currentNode();
        if (currentNode == null) {
            throw new IllegalStateException("No current node");
        }
        if (currentNode.isArray()) {
            return new Array(currentNode, this);
        }
        if (currentNode.isObject()) {
            return new Object(currentNode, this);
        }
        throw new IllegalStateException("Current node of type " + currentNode.getClass().getName());
    }
    
    public abstract JsonToken nextToken();
    
    public abstract JsonToken nextValue();
    
    protected static final class Array extends NodeCursor
    {
        Iterator<JsonNode> _contents;
        JsonNode _currentNode;
        
        public Array(final JsonNode jsonNode, final NodeCursor nodeCursor) {
            super(1, nodeCursor);
            this._contents = jsonNode.getElements();
        }
        
        @Override
        public boolean currentHasChildren() {
            return ((ContainerNode)this.currentNode()).size() > 0;
        }
        
        @Override
        public JsonNode currentNode() {
            return this._currentNode;
        }
        
        @Override
        public JsonToken endToken() {
            return JsonToken.END_ARRAY;
        }
        
        @Override
        public String getCurrentName() {
            return null;
        }
        
        @Override
        public JsonToken nextToken() {
            if (!this._contents.hasNext()) {
                this._currentNode = null;
                return null;
            }
            this._currentNode = this._contents.next();
            return this._currentNode.asToken();
        }
        
        @Override
        public JsonToken nextValue() {
            return this.nextToken();
        }
    }
    
    protected static final class Object extends NodeCursor
    {
        Iterator<Map.Entry<String, JsonNode>> _contents;
        Map.Entry<String, JsonNode> _current;
        boolean _needEntry;
        
        public Object(final JsonNode jsonNode, final NodeCursor nodeCursor) {
            super(2, nodeCursor);
            this._contents = ((ObjectNode)jsonNode).getFields();
            this._needEntry = true;
        }
        
        @Override
        public boolean currentHasChildren() {
            return ((ContainerNode)this.currentNode()).size() > 0;
        }
        
        @Override
        public JsonNode currentNode() {
            if (this._current == null) {
                return null;
            }
            return this._current.getValue();
        }
        
        @Override
        public JsonToken endToken() {
            return JsonToken.END_OBJECT;
        }
        
        @Override
        public String getCurrentName() {
            if (this._current == null) {
                return null;
            }
            return this._current.getKey();
        }
        
        @Override
        public JsonToken nextToken() {
            if (!this._needEntry) {
                this._needEntry = true;
                return this._current.getValue().asToken();
            }
            if (!this._contents.hasNext()) {
                this._current = null;
                return null;
            }
            this._needEntry = false;
            this._current = this._contents.next();
            return JsonToken.FIELD_NAME;
        }
        
        @Override
        public JsonToken nextValue() {
            JsonToken jsonToken = this.nextToken();
            if (jsonToken == JsonToken.FIELD_NAME) {
                jsonToken = this.nextToken();
            }
            return jsonToken;
        }
    }
    
    protected static final class RootValue extends NodeCursor
    {
        protected boolean _done;
        JsonNode _node;
        
        public RootValue(final JsonNode node, final NodeCursor nodeCursor) {
            super(0, nodeCursor);
            this._done = false;
            this._node = node;
        }
        
        @Override
        public boolean currentHasChildren() {
            return false;
        }
        
        @Override
        public JsonNode currentNode() {
            return this._node;
        }
        
        @Override
        public JsonToken endToken() {
            return null;
        }
        
        @Override
        public String getCurrentName() {
            return null;
        }
        
        @Override
        public JsonToken nextToken() {
            if (!this._done) {
                this._done = true;
                return this._node.asToken();
            }
            this._node = null;
            return null;
        }
        
        @Override
        public JsonToken nextValue() {
            return this.nextToken();
        }
    }
}
