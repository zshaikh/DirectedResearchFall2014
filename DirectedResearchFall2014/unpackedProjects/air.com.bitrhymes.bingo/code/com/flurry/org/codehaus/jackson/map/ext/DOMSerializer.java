package com.flurry.org.codehaus.jackson.map.ext;

import com.flurry.org.codehaus.jackson.map.ser.std.*;
import org.w3c.dom.*;
import org.w3c.dom.ls.*;
import org.w3c.dom.bootstrap.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.lang.reflect.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public class DOMSerializer extends SerializerBase<Node>
{
    protected final DOMImplementationLS _domImpl;
    
    public DOMSerializer() {
        super(Node.class);
        try {
            this._domImpl = (DOMImplementationLS)DOMImplementationRegistry.newInstance().getDOMImplementation("LS");
        }
        catch (Exception cause) {
            throw new IllegalStateException("Could not instantiate DOMImplementationRegistry: " + cause.getMessage(), cause);
        }
    }
    
    @Override
    public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
        return this.createSchemaNode("string", true);
    }
    
    @Override
    public void serialize(final Node node, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        if (this._domImpl == null) {
            throw new IllegalStateException("Could not find DOM LS");
        }
        jsonGenerator.writeString(this._domImpl.createLSSerializer().writeToString(node));
    }
}
