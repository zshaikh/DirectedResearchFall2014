package com.flurry.org.codehaus.jackson.map.deser;

import java.util.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.*;
import java.text.*;
import com.flurry.org.codehaus.jackson.map.exc.*;
import com.flurry.org.codehaus.jackson.type.*;

public class StdDeserializationContext extends DeserializationContext
{
    static final int MAX_ERROR_STR_LEN = 500;
    protected ArrayBuilders _arrayBuilders;
    protected DateFormat _dateFormat;
    protected final DeserializerProvider _deserProvider;
    protected final InjectableValues _injectableValues;
    protected ObjectBuffer _objectBuffer;
    protected JsonParser _parser;
    
    public StdDeserializationContext(final DeserializationConfig deserializationConfig, final JsonParser parser, final DeserializerProvider deserProvider, final InjectableValues injectableValues) {
        super(deserializationConfig);
        this._parser = parser;
        this._deserProvider = deserProvider;
        this._injectableValues = injectableValues;
    }
    
    protected String _calcName(final Class<?> clazz) {
        if (clazz.isArray()) {
            return this._calcName(clazz.getComponentType()) + "[]";
        }
        return clazz.getName();
    }
    
    protected String _desc(String string) {
        if (string.length() > 500) {
            string = string.substring(0, 500) + "]...[" + string.substring(string.length() - 500);
        }
        return string;
    }
    
    protected String _valueDesc() {
        try {
            return this._desc(this._parser.getText());
        }
        catch (Exception ex) {
            return "[N/A]";
        }
    }
    
    @Override
    public Calendar constructCalendar(final Date time) {
        final Calendar instance = Calendar.getInstance();
        instance.setTime(time);
        return instance;
    }
    
    protected String determineClassName(final Object o) {
        return ClassUtil.getClassDescription(o);
    }
    
    @Override
    public Object findInjectableValue(final Object obj, final BeanProperty beanProperty, final Object o) {
        if (this._injectableValues == null) {
            throw new IllegalStateException("No 'injectableValues' configured, can not inject value with id [" + obj + "]");
        }
        return this._injectableValues.findInjectableValue(obj, this, beanProperty, o);
    }
    
    @Override
    public final ArrayBuilders getArrayBuilders() {
        if (this._arrayBuilders == null) {
            this._arrayBuilders = new ArrayBuilders();
        }
        return this._arrayBuilders;
    }
    
    protected DateFormat getDateFormat() {
        if (this._dateFormat == null) {
            this._dateFormat = (DateFormat)this._config.getDateFormat().clone();
        }
        return this._dateFormat;
    }
    
    @Override
    public DeserializerProvider getDeserializerProvider() {
        return this._deserProvider;
    }
    
    @Override
    public JsonParser getParser() {
        return this._parser;
    }
    
    @Override
    public boolean handleUnknownProperty(final JsonParser parser, final JsonDeserializer<?> jsonDeserializer, final Object o, final String s) throws IOException, JsonProcessingException {
        LinkedNode<DeserializationProblemHandler> linkedNode = this._config.getProblemHandlers();
        if (linkedNode == null) {
            return false;
        }
        final JsonParser parser2 = this._parser;
        this._parser = parser;
        while (true) {
            if (linkedNode == null) {
                return false;
            }
            try {
                if (linkedNode.value().handleUnknownProperty(this, jsonDeserializer, o, s)) {
                    return true;
                }
                linkedNode = linkedNode.next();
                continue;
            }
            finally {
                this._parser = parser2;
            }
            break;
        }
    }
    
    @Override
    public JsonMappingException instantiationException(final Class<?> clazz, final String str) {
        return JsonMappingException.from(this._parser, "Can not construct instance of " + clazz.getName() + ", problem: " + str);
    }
    
    @Override
    public JsonMappingException instantiationException(final Class<?> clazz, final Throwable t) {
        return JsonMappingException.from(this._parser, "Can not construct instance of " + clazz.getName() + ", problem: " + t.getMessage(), t);
    }
    
    @Override
    public final ObjectBuffer leaseObjectBuffer() {
        final ObjectBuffer objectBuffer = this._objectBuffer;
        if (objectBuffer == null) {
            return new ObjectBuffer();
        }
        this._objectBuffer = null;
        return objectBuffer;
    }
    
    @Override
    public JsonMappingException mappingException(final Class<?> clazz) {
        return this.mappingException(clazz, this._parser.getCurrentToken());
    }
    
    @Override
    public JsonMappingException mappingException(final Class<?> clazz, final JsonToken obj) {
        return JsonMappingException.from(this._parser, "Can not deserialize instance of " + this._calcName(clazz) + " out of " + obj + " token");
    }
    
    @Override
    public Date parseDate(final String source) throws IllegalArgumentException {
        try {
            return this.getDateFormat().parse(source);
        }
        catch (ParseException ex) {
            throw new IllegalArgumentException(ex.getMessage());
        }
    }
    
    @Override
    public final void returnObjectBuffer(final ObjectBuffer objectBuffer) {
        if (this._objectBuffer == null || objectBuffer.initialCapacity() >= this._objectBuffer.initialCapacity()) {
            this._objectBuffer = objectBuffer;
        }
    }
    
    @Override
    public JsonMappingException unknownFieldException(final Object o, final String s) {
        return UnrecognizedPropertyException.from(this._parser, o, s);
    }
    
    @Override
    public JsonMappingException unknownTypeException(final JavaType obj, final String str) {
        return JsonMappingException.from(this._parser, "Could not resolve type id '" + str + "' into a subtype of " + obj);
    }
    
    @Override
    public JsonMappingException weirdKeyException(final Class<?> clazz, final String s, final String str) {
        return JsonMappingException.from(this._parser, "Can not construct Map key of type " + clazz.getName() + " from String \"" + this._desc(s) + "\": " + str);
    }
    
    @Override
    public JsonMappingException weirdNumberException(final Class<?> clazz, final String str) {
        return JsonMappingException.from(this._parser, "Can not construct instance of " + clazz.getName() + " from number value (" + this._valueDesc() + "): " + str);
    }
    
    @Override
    public JsonMappingException weirdStringException(final Class<?> clazz, final String str) {
        return JsonMappingException.from(this._parser, "Can not construct instance of " + clazz.getName() + " from String value '" + this._valueDesc() + "': " + str);
    }
    
    @Override
    public JsonMappingException wrongTokenException(final JsonParser jsonParser, final JsonToken obj, final String str) {
        return JsonMappingException.from(jsonParser, "Unexpected token (" + jsonParser.getCurrentToken() + "), expected " + obj + ": " + str);
    }
}
