package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.*;
import java.util.*;
import java.io.*;

public class JsonMappingException extends JsonProcessingException
{
    static final int MAX_REFS_TO_LIST = 1000;
    private static final long serialVersionUID = 1L;
    protected LinkedList<Reference> _path;
    
    public JsonMappingException(final String s) {
        super(s);
    }
    
    public JsonMappingException(final String s, final JsonLocation jsonLocation) {
        super(s, jsonLocation);
    }
    
    public JsonMappingException(final String s, final JsonLocation jsonLocation, final Throwable t) {
        super(s, jsonLocation, t);
    }
    
    public JsonMappingException(final String s, final Throwable t) {
        super(s, t);
    }
    
    public static JsonMappingException from(final JsonParser jsonParser, final String s) {
        return new JsonMappingException(s, jsonParser.getTokenLocation());
    }
    
    public static JsonMappingException from(final JsonParser jsonParser, final String s, final Throwable t) {
        return new JsonMappingException(s, jsonParser.getTokenLocation(), t);
    }
    
    public static JsonMappingException wrapWithPath(final Throwable t, final Reference reference) {
        JsonMappingException ex;
        if (t instanceof JsonMappingException) {
            ex = (JsonMappingException)t;
        }
        else {
            String s = t.getMessage();
            if (s == null || s.length() == 0) {
                s = "(was " + t.getClass().getName() + ")";
            }
            ex = new JsonMappingException(s, null, t);
        }
        ex.prependPath(reference);
        return ex;
    }
    
    public static JsonMappingException wrapWithPath(final Throwable t, final Object o, final int n) {
        return wrapWithPath(t, new Reference(o, n));
    }
    
    public static JsonMappingException wrapWithPath(final Throwable t, final Object o, final String s) {
        return wrapWithPath(t, new Reference(o, s));
    }
    
    protected void _appendPathDesc(final StringBuilder sb) {
        final Iterator<Reference> iterator = (Iterator<Reference>)this._path.iterator();
        while (iterator.hasNext()) {
            sb.append(iterator.next().toString());
            if (iterator.hasNext()) {
                sb.append("->");
            }
        }
    }
    
    @Override
    public String getMessage() {
        final String message = super.getMessage();
        if (this._path == null) {
            return message;
        }
        StringBuilder sb;
        if (message == null) {
            sb = new StringBuilder();
        }
        else {
            sb = new StringBuilder(message);
        }
        sb.append(" (through reference chain: ");
        this._appendPathDesc(sb);
        sb.append(')');
        return sb.toString();
    }
    
    public List<Reference> getPath() {
        if (this._path == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList((List<? extends Reference>)this._path);
    }
    
    public void prependPath(final Reference e) {
        if (this._path == null) {
            this._path = new LinkedList<Reference>();
        }
        if (this._path.size() < 1000) {
            this._path.addFirst(e);
        }
    }
    
    public void prependPath(final Object o, final int n) {
        this.prependPath(new Reference(o, n));
    }
    
    public void prependPath(final Object o, final String s) {
        this.prependPath(new Reference(o, s));
    }
    
    @Override
    public String toString() {
        return this.getClass().getName() + ": " + this.getMessage();
    }
    
    public static class Reference implements Serializable
    {
        private static final long serialVersionUID = 1L;
        protected String _fieldName;
        protected Object _from;
        protected int _index;
        
        protected Reference() {
            super();
            this._index = -1;
        }
        
        public Reference(final Object from) {
            super();
            this._index = -1;
            this._from = from;
        }
        
        public Reference(final Object from, final int index) {
            super();
            this._index = -1;
            this._from = from;
            this._index = index;
        }
        
        public Reference(final Object from, final String fieldName) {
            super();
            this._index = -1;
            this._from = from;
            if (fieldName == null) {
                throw new NullPointerException("Can not pass null fieldName");
            }
            this._fieldName = fieldName;
        }
        
        public String getFieldName() {
            return this._fieldName;
        }
        
        public Object getFrom() {
            return this._from;
        }
        
        public int getIndex() {
            return this._index;
        }
        
        public void setFieldName(final String fieldName) {
            this._fieldName = fieldName;
        }
        
        public void setFrom(final Object from) {
            this._from = from;
        }
        
        public void setIndex(final int index) {
            this._index = index;
        }
        
        @Override
        public String toString() {
            final StringBuilder sb = new StringBuilder();
            Class<?> class1;
            if (this._from instanceof Class) {
                class1 = (Class<?>)this._from;
            }
            else {
                class1 = this._from.getClass();
            }
            final Package package1 = class1.getPackage();
            if (package1 != null) {
                sb.append(package1.getName());
                sb.append('.');
            }
            sb.append(class1.getSimpleName());
            sb.append('[');
            if (this._fieldName != null) {
                sb.append('\"');
                sb.append(this._fieldName);
                sb.append('\"');
            }
            else if (this._index >= 0) {
                sb.append(this._index);
            }
            else {
                sb.append('?');
            }
            sb.append(']');
            return sb.toString();
        }
    }
}
