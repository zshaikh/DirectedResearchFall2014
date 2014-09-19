package com.flurry.org.codehaus.jackson.map.deser.std;

import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.*;
import java.nio.charset.*;
import java.util.regex.*;
import java.net.*;
import java.util.*;
import java.io.*;

public abstract class FromStringDeserializer<T> extends StdScalarDeserializer<T>
{
    protected FromStringDeserializer(final Class<?> clazz) {
        super(clazz);
    }
    
    public static Iterable<FromStringDeserializer<?>> all() {
        final ArrayList<UUIDDeserializer> list = (ArrayList<UUIDDeserializer>)new ArrayList<FromStringDeserializer<?>>();
        list.add(new UUIDDeserializer());
        list.add((UUIDDeserializer)new URLDeserializer());
        list.add((UUIDDeserializer)new URIDeserializer());
        list.add((UUIDDeserializer)new CurrencyDeserializer());
        list.add((UUIDDeserializer)new PatternDeserializer());
        list.add((UUIDDeserializer)new LocaleDeserializer());
        list.add((UUIDDeserializer)new InetAddressDeserializer());
        list.add((UUIDDeserializer)new TimeZoneDeserializer());
        list.add((UUIDDeserializer)new CharsetDeserializer());
        return (Iterable<FromStringDeserializer<?>>)list;
    }
    
    protected abstract T _deserialize(final String p0, final DeserializationContext p1) throws IOException, JsonProcessingException;
    
    protected T _deserializeEmbedded(final Object o, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        throw deserializationContext.mappingException("Don't know how to convert embedded Object of type " + o.getClass().getName() + " into " + this._valueClass.getName());
    }
    
    @Override
    public final T deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
            final String trim = jsonParser.getText().trim();
            if (trim.length() == 0) {
                return null;
            }
            try {
                final T deserialize = this._deserialize(trim, deserializationContext);
                if (deserialize != null) {
                    return deserialize;
                }
            }
            catch (IllegalArgumentException ex) {}
            throw deserializationContext.weirdStringException(this._valueClass, "not a valid textual representation");
        }
        else {
            if (jsonParser.getCurrentToken() != JsonToken.VALUE_EMBEDDED_OBJECT) {
                throw deserializationContext.mappingException(this._valueClass);
            }
            final Object embeddedObject = jsonParser.getEmbeddedObject();
            if (embeddedObject == null) {
                return null;
            }
            if (this._valueClass.isAssignableFrom(embeddedObject.getClass())) {
                return (T)embeddedObject;
            }
            return this._deserializeEmbedded(embeddedObject, deserializationContext);
        }
    }
    
    protected static class CharsetDeserializer extends FromStringDeserializer<Charset>
    {
        public CharsetDeserializer() {
            super(Charset.class);
        }
        
        @Override
        protected Charset _deserialize(final String charsetName, final DeserializationContext deserializationContext) throws IOException {
            return Charset.forName(charsetName);
        }
    }
    
    public static class CurrencyDeserializer extends FromStringDeserializer<Currency>
    {
        public CurrencyDeserializer() {
            super(Currency.class);
        }
        
        @Override
        protected Currency _deserialize(final String currencyCode, final DeserializationContext deserializationContext) throws IllegalArgumentException {
            return Currency.getInstance(currencyCode);
        }
    }
    
    protected static class InetAddressDeserializer extends FromStringDeserializer<InetAddress>
    {
        public InetAddressDeserializer() {
            super(InetAddress.class);
        }
        
        @Override
        protected InetAddress _deserialize(final String host, final DeserializationContext deserializationContext) throws IOException {
            return InetAddress.getByName(host);
        }
    }
    
    protected static class LocaleDeserializer extends FromStringDeserializer<Locale>
    {
        public LocaleDeserializer() {
            super(Locale.class);
        }
        
        @Override
        protected Locale _deserialize(final String language, final DeserializationContext deserializationContext) throws IOException {
            final int index = language.indexOf(95);
            if (index < 0) {
                return new Locale(language);
            }
            final String substring = language.substring(0, index);
            final String substring2 = language.substring(index + 1);
            final int index2 = substring2.indexOf(95);
            if (index2 < 0) {
                return new Locale(substring, substring2);
            }
            return new Locale(substring, substring2.substring(0, index2), substring2.substring(index2 + 1));
        }
    }
    
    public static class PatternDeserializer extends FromStringDeserializer<Pattern>
    {
        public PatternDeserializer() {
            super(Pattern.class);
        }
        
        @Override
        protected Pattern _deserialize(final String regex, final DeserializationContext deserializationContext) throws IllegalArgumentException {
            return Pattern.compile(regex);
        }
    }
    
    protected static class TimeZoneDeserializer extends FromStringDeserializer<TimeZone>
    {
        public TimeZoneDeserializer() {
            super(TimeZone.class);
        }
        
        @Override
        protected TimeZone _deserialize(final String id, final DeserializationContext deserializationContext) throws IOException {
            return TimeZone.getTimeZone(id);
        }
    }
    
    public static class URIDeserializer extends FromStringDeserializer<URI>
    {
        public URIDeserializer() {
            super(URI.class);
        }
        
        @Override
        protected URI _deserialize(final String str, final DeserializationContext deserializationContext) throws IllegalArgumentException {
            return URI.create(str);
        }
    }
    
    public static class URLDeserializer extends FromStringDeserializer<URL>
    {
        public URLDeserializer() {
            super(URL.class);
        }
        
        @Override
        protected URL _deserialize(final String spec, final DeserializationContext deserializationContext) throws IOException {
            return new URL(spec);
        }
    }
    
    public static class UUIDDeserializer extends FromStringDeserializer<UUID>
    {
        public UUIDDeserializer() {
            super(UUID.class);
        }
        
        @Override
        protected UUID _deserialize(final String name, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            return UUID.fromString(name);
        }
        
        @Override
        protected UUID _deserializeEmbedded(final Object o, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            if (o instanceof byte[]) {
                final byte[] buf = (byte[])o;
                if (buf.length != 16) {
                    deserializationContext.mappingException("Can only construct UUIDs from 16 byte arrays; got " + buf.length + " bytes");
                }
                final DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(buf));
                return new UUID(dataInputStream.readLong(), dataInputStream.readLong());
            }
            super._deserializeEmbedded(o, deserializationContext);
            return null;
        }
    }
}
