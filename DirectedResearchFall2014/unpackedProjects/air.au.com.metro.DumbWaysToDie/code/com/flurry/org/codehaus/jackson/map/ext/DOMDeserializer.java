package com.flurry.org.codehaus.jackson.map.ext;

import com.flurry.org.codehaus.jackson.map.deser.std.*;
import javax.xml.parsers.*;
import com.flurry.org.codehaus.jackson.map.*;
import org.xml.sax.*;
import java.io.*;
import org.w3c.dom.*;

public abstract class DOMDeserializer<T> extends FromStringDeserializer<T>
{
    static final DocumentBuilderFactory _parserFactory;
    
    static {
        (_parserFactory = DocumentBuilderFactory.newInstance()).setNamespaceAware(true);
    }
    
    protected DOMDeserializer(final Class<T> clazz) {
        super(clazz);
    }
    
    public abstract T _deserialize(final String p0, final DeserializationContext p1);
    
    protected final Document parse(final String s) throws IllegalArgumentException {
        try {
            return DOMDeserializer._parserFactory.newDocumentBuilder().parse(new InputSource(new StringReader(s)));
        }
        catch (Exception cause) {
            throw new IllegalArgumentException("Failed to parse JSON String as XML: " + cause.getMessage(), cause);
        }
    }
    
    public static class DocumentDeserializer extends DOMDeserializer<Document>
    {
        public DocumentDeserializer() {
            super(Document.class);
        }
        
        @Override
        public Document _deserialize(final String s, final DeserializationContext deserializationContext) throws IllegalArgumentException {
            return this.parse(s);
        }
    }
    
    public static class NodeDeserializer extends DOMDeserializer<Node>
    {
        public NodeDeserializer() {
            super(Node.class);
        }
        
        @Override
        public Node _deserialize(final String s, final DeserializationContext deserializationContext) throws IllegalArgumentException {
            return this.parse(s);
        }
    }
}
