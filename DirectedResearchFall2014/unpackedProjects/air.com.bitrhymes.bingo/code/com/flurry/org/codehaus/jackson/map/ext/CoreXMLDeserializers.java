package com.flurry.org.codehaus.jackson.map.ext;

import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.map.deser.std.*;
import javax.xml.datatype.*;
import com.flurry.org.codehaus.jackson.*;
import java.util.*;
import javax.xml.namespace.*;

public class CoreXMLDeserializers implements Provider<StdDeserializer<?>>
{
    static final DatatypeFactory _dataTypeFactory;
    
    static {
        try {
            _dataTypeFactory = DatatypeFactory.newInstance();
        }
        catch (DatatypeConfigurationException cause) {
            throw new RuntimeException(cause);
        }
    }
    
    @Override
    public Collection<StdDeserializer<?>> provide() {
        return (Collection<StdDeserializer<?>>)Arrays.asList(new DurationDeserializer(), new GregorianCalendarDeserializer(), new QNameDeserializer());
    }
    
    public static class DurationDeserializer extends FromStringDeserializer<Duration>
    {
        public DurationDeserializer() {
            super(Duration.class);
        }
        
        @Override
        protected Duration _deserialize(final String s, final DeserializationContext deserializationContext) throws IllegalArgumentException {
            return CoreXMLDeserializers._dataTypeFactory.newDuration(s);
        }
    }
    
    public static class GregorianCalendarDeserializer extends StdScalarDeserializer<XMLGregorianCalendar>
    {
        public GregorianCalendarDeserializer() {
            super(XMLGregorianCalendar.class);
        }
        
        @Override
        public XMLGregorianCalendar deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            final Date parseDate = this._parseDate(jsonParser, deserializationContext);
            if (parseDate == null) {
                return null;
            }
            final GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.setTime(parseDate);
            return CoreXMLDeserializers._dataTypeFactory.newXMLGregorianCalendar(gregorianCalendar);
        }
    }
    
    public static class QNameDeserializer extends FromStringDeserializer<QName>
    {
        public QNameDeserializer() {
            super(QName.class);
        }
        
        @Override
        protected QName _deserialize(final String qNameAsString, final DeserializationContext deserializationContext) throws IllegalArgumentException {
            return QName.valueOf(qNameAsString);
        }
    }
}
