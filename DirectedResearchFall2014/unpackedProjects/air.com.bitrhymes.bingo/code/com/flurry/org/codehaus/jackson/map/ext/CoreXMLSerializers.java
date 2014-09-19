package com.flurry.org.codehaus.jackson.map.ext;

import com.flurry.org.codehaus.jackson.map.util.*;
import javax.xml.datatype.*;
import javax.xml.namespace.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.map.ser.std.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import java.util.*;

public class CoreXMLSerializers implements Provider<Map.Entry<Class<?>, JsonSerializer<?>>>
{
    static final HashMap<Class<?>, JsonSerializer<?>> _serializers;
    
    static {
        _serializers = new HashMap<Class<?>, JsonSerializer<?>>();
        final ToStringSerializer instance = ToStringSerializer.instance;
        CoreXMLSerializers._serializers.put(Duration.class, instance);
        CoreXMLSerializers._serializers.put(XMLGregorianCalendar.class, new XMLGregorianCalendarSerializer());
        CoreXMLSerializers._serializers.put(QName.class, instance);
    }
    
    @Override
    public Collection<Map.Entry<Class<?>, JsonSerializer<?>>> provide() {
        return CoreXMLSerializers._serializers.entrySet();
    }
    
    public static class XMLGregorianCalendarSerializer extends SerializerBase<XMLGregorianCalendar>
    {
        public XMLGregorianCalendarSerializer() {
            super(XMLGregorianCalendar.class);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) throws JsonMappingException {
            return CalendarSerializer.instance.getSchema(serializerProvider, type);
        }
        
        @Override
        public void serialize(final XMLGregorianCalendar xmlGregorianCalendar, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            CalendarSerializer.instance.serialize(xmlGregorianCalendar.toGregorianCalendar(), jsonGenerator, serializerProvider);
        }
    }
}
