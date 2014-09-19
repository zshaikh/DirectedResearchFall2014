package com.flurry.org.codehaus.jackson.map.deser.std;

import com.flurry.org.codehaus.jackson.type.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.io.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import java.math.*;

public abstract class StdDeserializer<T> extends JsonDeserializer<T>
{
    protected final Class<?> _valueClass;
    
    protected StdDeserializer(final JavaType javaType) {
        super();
        Class<?> rawClass;
        if (javaType == null) {
            rawClass = null;
        }
        else {
            rawClass = javaType.getRawClass();
        }
        this._valueClass = rawClass;
    }
    
    protected StdDeserializer(final Class<?> valueClass) {
        super();
        this._valueClass = valueClass;
    }
    
    protected static final double parseDouble(final String s) throws NumberFormatException {
        if ("2.2250738585072012e-308".equals(s)) {
            return Double.MIN_NORMAL;
        }
        return Double.parseDouble(s);
    }
    
    protected final Boolean _parseBoolean(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_TRUE) {
            return Boolean.TRUE;
        }
        if (currentToken == JsonToken.VALUE_FALSE) {
            return Boolean.FALSE;
        }
        if (currentToken == JsonToken.VALUE_NUMBER_INT) {
            if (jsonParser.getNumberType() != JsonParser.NumberType.INT) {
                return this._parseBooleanFromNumber(jsonParser, deserializationContext);
            }
            if (jsonParser.getIntValue() == 0) {
                return Boolean.FALSE;
            }
            return Boolean.TRUE;
        }
        else {
            if (currentToken == JsonToken.VALUE_NULL) {
                return this.getNullValue();
            }
            if (currentToken != JsonToken.VALUE_STRING) {
                throw deserializationContext.mappingException(this._valueClass, currentToken);
            }
            final String trim = jsonParser.getText().trim();
            if ("true".equals(trim)) {
                return Boolean.TRUE;
            }
            if ("false".equals(trim)) {
                return Boolean.FALSE;
            }
            if (trim.length() == 0) {
                return this.getEmptyValue();
            }
            throw deserializationContext.weirdStringException(this._valueClass, "only \"true\" or \"false\" recognized");
        }
    }
    
    protected final boolean _parseBooleanFromNumber(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (jsonParser.getNumberType() == JsonParser.NumberType.LONG) {
            Boolean b;
            if (jsonParser.getLongValue() == 0L) {
                b = Boolean.FALSE;
            }
            else {
                b = Boolean.TRUE;
            }
            return b;
        }
        final String text = jsonParser.getText();
        if ("0.0".equals(text) || "0".equals(text)) {
            return Boolean.FALSE;
        }
        return Boolean.TRUE;
    }
    
    protected final boolean _parseBooleanPrimitive(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_TRUE) {
            return true;
        }
        if (currentToken == JsonToken.VALUE_FALSE) {
            return false;
        }
        if (currentToken == JsonToken.VALUE_NULL) {
            return false;
        }
        if (currentToken == JsonToken.VALUE_NUMBER_INT) {
            if (jsonParser.getNumberType() == JsonParser.NumberType.INT) {
                return jsonParser.getIntValue() != 0;
            }
            return this._parseBooleanFromNumber(jsonParser, deserializationContext);
        }
        else {
            if (currentToken != JsonToken.VALUE_STRING) {
                throw deserializationContext.mappingException(this._valueClass, currentToken);
            }
            final String trim = jsonParser.getText().trim();
            if ("true".equals(trim)) {
                return true;
            }
            if ("false".equals(trim) || trim.length() == 0) {
                return Boolean.FALSE;
            }
            throw deserializationContext.weirdStringException(this._valueClass, "only \"true\" or \"false\" recognized");
        }
    }
    
    protected Byte _parseByte(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return jsonParser.getByteValue();
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            final String trim = jsonParser.getText().trim();
            int int1;
            try {
                if (trim.length() == 0) {
                    return this.getEmptyValue();
                }
                int1 = NumberInput.parseInt(trim);
                if (int1 < -128 || int1 > 127) {
                    throw deserializationContext.weirdStringException(this._valueClass, "overflow, value can not be represented as 8-bit value");
                }
            }
            catch (IllegalArgumentException ex) {
                throw deserializationContext.weirdStringException(this._valueClass, "not a valid Byte value");
            }
            return (byte)int1;
        }
        if (currentToken == JsonToken.VALUE_NULL) {
            return this.getNullValue();
        }
        throw deserializationContext.mappingException(this._valueClass, currentToken);
    }
    
    protected Date _parseDate(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT) {
            return new Date(jsonParser.getLongValue());
        }
        if (currentToken == JsonToken.VALUE_NULL) {
            return this.getNullValue();
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            try {
                final String trim = jsonParser.getText().trim();
                if (trim.length() == 0) {
                    return this.getEmptyValue();
                }
                return deserializationContext.parseDate(trim);
            }
            catch (IllegalArgumentException ex) {
                throw deserializationContext.weirdStringException(this._valueClass, "not a valid representation (error: " + ex.getMessage() + ")");
            }
        }
        throw deserializationContext.mappingException(this._valueClass, currentToken);
    }
    
    protected final Double _parseDouble(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return jsonParser.getDoubleValue();
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            final String trim = jsonParser.getText().trim();
            if (trim.length() == 0) {
                return this.getEmptyValue();
            }
            Label_0140: {
                switch (trim.charAt(0)) {
                    default: {
                        break Label_0140;
                    }
                    case 'I': {
                        break Label_0140;
                    }
                    case 'N': {
                        break Label_0140;
                    }
                    case '-': {
                        Label_0157: {
                            break Label_0157;
                            try {
                                return parseDouble(trim);
                                // iftrue(Label_0100:, !"-Infinity".equals((Object)trim) && !"-INF".equals((Object)trim))
                                return Double.NEGATIVE_INFINITY;
                                // iftrue(Label_0100:, !"Infinity".equals((Object)trim) && !"INF".equals((Object)trim))
                                return Double.POSITIVE_INFINITY;
                                // iftrue(Label_0100:, !"NaN".equals((Object)trim))
                                return Double.NaN;
                            }
                            catch (IllegalArgumentException ex) {
                                throw deserializationContext.weirdStringException(this._valueClass, "not a valid Double value");
                            }
                        }
                        break;
                    }
                }
            }
        }
        if (currentToken == JsonToken.VALUE_NULL) {
            return this.getNullValue();
        }
        throw deserializationContext.mappingException(this._valueClass, currentToken);
    }
    
    protected final double _parseDoublePrimitive(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return jsonParser.getDoubleValue();
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            final String trim = jsonParser.getText().trim();
            if (trim.length() == 0) {
                return 0.0;
            }
            Label_0126: {
                switch (trim.charAt(0)) {
                    default: {
                        break Label_0126;
                    }
                    case 'I': {
                        break Label_0126;
                    }
                    case 'N': {
                        break Label_0126;
                    }
                    case '-': {
                        Label_0140: {
                            break Label_0140;
                            try {
                                return parseDouble(trim);
                                // iftrue(Label_0092:, !"NaN".equals((Object)trim))
                                return Double.NaN;
                                // iftrue(Label_0092:, !"Infinity".equals((Object)trim) && !"INF".equals((Object)trim))
                                return Double.POSITIVE_INFINITY;
                                // iftrue(Label_0092:, !"-Infinity".equals((Object)trim) && !"-INF".equals((Object)trim))
                                return Double.NEGATIVE_INFINITY;
                            }
                            catch (IllegalArgumentException ex) {
                                throw deserializationContext.weirdStringException(this._valueClass, "not a valid double value");
                            }
                        }
                        break;
                    }
                }
            }
        }
        if (currentToken == JsonToken.VALUE_NULL) {
            return 0.0;
        }
        throw deserializationContext.mappingException(this._valueClass, currentToken);
    }
    
    protected final Float _parseFloat(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return jsonParser.getFloatValue();
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            final String trim = jsonParser.getText().trim();
            if (trim.length() == 0) {
                return this.getEmptyValue();
            }
            Label_0140: {
                switch (trim.charAt(0)) {
                    default: {
                        break Label_0140;
                    }
                    case 'I': {
                        break Label_0140;
                    }
                    case 'N': {
                        break Label_0140;
                    }
                    case '-': {
                        Label_0157: {
                            break Label_0157;
                            try {
                                return Float.parseFloat(trim);
                                // iftrue(Label_0100:, !"-Infinity".equals((Object)trim) && !"-INF".equals((Object)trim))
                                return Float.NEGATIVE_INFINITY;
                                // iftrue(Label_0100:, !"NaN".equals((Object)trim))
                                return Float.NaN;
                                // iftrue(Label_0100:, !"Infinity".equals((Object)trim) && !"INF".equals((Object)trim))
                                return Float.POSITIVE_INFINITY;
                            }
                            catch (IllegalArgumentException ex) {
                                throw deserializationContext.weirdStringException(this._valueClass, "not a valid Float value");
                            }
                        }
                        break;
                    }
                }
            }
        }
        if (currentToken == JsonToken.VALUE_NULL) {
            return this.getNullValue();
        }
        throw deserializationContext.mappingException(this._valueClass, currentToken);
    }
    
    protected final float _parseFloatPrimitive(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return jsonParser.getFloatValue();
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            final String trim = jsonParser.getText().trim();
            if (trim.length() == 0) {
                return 0.0f;
            }
            Label_0126: {
                switch (trim.charAt(0)) {
                    default: {
                        break Label_0126;
                    }
                    case 'I': {
                        break Label_0126;
                    }
                    case 'N': {
                        break Label_0126;
                    }
                    case '-': {
                        Label_0140: {
                            break Label_0140;
                            try {
                                return Float.parseFloat(trim);
                                // iftrue(Label_0092:, !"NaN".equals((Object)trim))
                                return Float.NaN;
                                // iftrue(Label_0092:, !"-Infinity".equals((Object)trim) && !"-INF".equals((Object)trim))
                                return Float.NEGATIVE_INFINITY;
                                // iftrue(Label_0092:, !"Infinity".equals((Object)trim) && !"INF".equals((Object)trim))
                                return Float.POSITIVE_INFINITY;
                            }
                            catch (IllegalArgumentException ex) {
                                throw deserializationContext.weirdStringException(this._valueClass, "not a valid float value");
                            }
                        }
                        break;
                    }
                }
            }
        }
        if (currentToken == JsonToken.VALUE_NULL) {
            return 0.0f;
        }
        throw deserializationContext.mappingException(this._valueClass, currentToken);
    }
    
    protected final int _parseIntPrimitive(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return jsonParser.getIntValue();
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            final String trim = jsonParser.getText().trim();
            int length = 0;
            Label_0156: {
                long long1;
                try {
                    length = trim.length();
                    if (length <= 9) {
                        break Label_0156;
                    }
                    long1 = Long.parseLong(trim);
                    if (long1 < -2147483648L || long1 > 2147483647L) {
                        throw deserializationContext.weirdStringException(this._valueClass, "Overflow: numeric value (" + trim + ") out of range of int (" + Integer.MIN_VALUE + " - " + Integer.MAX_VALUE + ")");
                    }
                }
                catch (IllegalArgumentException ex) {
                    throw deserializationContext.weirdStringException(this._valueClass, "not a valid int value");
                }
                return (int)long1;
            }
            if (length == 0) {
                return 0;
            }
            return NumberInput.parseInt(trim);
        }
        else {
            if (currentToken == JsonToken.VALUE_NULL) {
                return 0;
            }
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }
    }
    
    protected final Integer _parseInteger(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return jsonParser.getIntValue();
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            final String trim = jsonParser.getText().trim();
            int length = 0;
            Label_0166: {
                long long1;
                try {
                    length = trim.length();
                    if (length <= 9) {
                        break Label_0166;
                    }
                    long1 = Long.parseLong(trim);
                    if (long1 < -2147483648L || long1 > 2147483647L) {
                        throw deserializationContext.weirdStringException(this._valueClass, "Overflow: numeric value (" + trim + ") out of range of Integer (" + Integer.MIN_VALUE + " - " + Integer.MAX_VALUE + ")");
                    }
                }
                catch (IllegalArgumentException ex) {
                    throw deserializationContext.weirdStringException(this._valueClass, "not a valid Integer value");
                }
                return (int)long1;
            }
            if (length == 0) {
                return this.getEmptyValue();
            }
            return NumberInput.parseInt(trim);
        }
        else {
            if (currentToken == JsonToken.VALUE_NULL) {
                return this.getNullValue();
            }
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }
    }
    
    protected final Long _parseLong(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return jsonParser.getLongValue();
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            final String trim = jsonParser.getText().trim();
            if (trim.length() == 0) {
                return this.getEmptyValue();
            }
            try {
                return NumberInput.parseLong(trim);
            }
            catch (IllegalArgumentException ex) {
                throw deserializationContext.weirdStringException(this._valueClass, "not a valid Long value");
            }
        }
        if (currentToken == JsonToken.VALUE_NULL) {
            return this.getNullValue();
        }
        throw deserializationContext.mappingException(this._valueClass, currentToken);
    }
    
    protected final long _parseLongPrimitive(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return jsonParser.getLongValue();
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            final String trim = jsonParser.getText().trim();
            if (trim.length() == 0) {
                return 0L;
            }
            try {
                return NumberInput.parseLong(trim);
            }
            catch (IllegalArgumentException ex) {
                throw deserializationContext.weirdStringException(this._valueClass, "not a valid long value");
            }
        }
        if (currentToken == JsonToken.VALUE_NULL) {
            return 0L;
        }
        throw deserializationContext.mappingException(this._valueClass, currentToken);
    }
    
    protected Short _parseShort(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return jsonParser.getShortValue();
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            final String trim = jsonParser.getText().trim();
            int int1;
            try {
                if (trim.length() == 0) {
                    return this.getEmptyValue();
                }
                int1 = NumberInput.parseInt(trim);
                if (int1 < -32768 || int1 > 32767) {
                    throw deserializationContext.weirdStringException(this._valueClass, "overflow, value can not be represented as 16-bit value");
                }
            }
            catch (IllegalArgumentException ex) {
                throw deserializationContext.weirdStringException(this._valueClass, "not a valid Short value");
            }
            return (short)int1;
        }
        if (currentToken == JsonToken.VALUE_NULL) {
            return this.getNullValue();
        }
        throw deserializationContext.mappingException(this._valueClass, currentToken);
    }
    
    protected final short _parseShortPrimitive(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final int parseIntPrimitive = this._parseIntPrimitive(jsonParser, deserializationContext);
        if (parseIntPrimitive < -32768 || parseIntPrimitive > 32767) {
            throw deserializationContext.weirdStringException(this._valueClass, "overflow, value can not be represented as 16-bit value");
        }
        return (short)parseIntPrimitive;
    }
    
    @Override
    public Object deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
    }
    
    protected JsonDeserializer<Object> findDeserializer(final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider, final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        return deserializerProvider.findValueDeserializer(deserializationConfig, javaType, beanProperty);
    }
    
    public Class<?> getValueClass() {
        return this._valueClass;
    }
    
    public JavaType getValueType() {
        return null;
    }
    
    protected void handleUnknownProperty(final JsonParser jsonParser, final DeserializationContext deserializationContext, Object valueClass, final String s) throws IOException, JsonProcessingException {
        if (valueClass == null) {
            valueClass = this.getValueClass();
        }
        if (deserializationContext.handleUnknownProperty(jsonParser, this, valueClass, s)) {
            return;
        }
        this.reportUnknownProperty(deserializationContext, valueClass, s);
        jsonParser.skipChildren();
    }
    
    protected boolean isDefaultSerializer(final JsonDeserializer<?> jsonDeserializer) {
        return jsonDeserializer != null && jsonDeserializer.getClass().getAnnotation(JacksonStdImpl.class) != null;
    }
    
    protected void reportUnknownProperty(final DeserializationContext deserializationContext, final Object o, final String s) throws IOException, JsonProcessingException {
        if (deserializationContext.isEnabled(DeserializationConfig.Feature.FAIL_ON_UNKNOWN_PROPERTIES)) {
            throw deserializationContext.unknownFieldException(o, s);
        }
    }
    
    @JacksonStdImpl
    public static class BigDecimalDeserializer extends StdScalarDeserializer<BigDecimal>
    {
        public BigDecimalDeserializer() {
            super(BigDecimal.class);
        }
        
        @Override
        public BigDecimal deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            final JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
                return jsonParser.getDecimalValue();
            }
            if (currentToken == JsonToken.VALUE_STRING) {
                final String trim = jsonParser.getText().trim();
                if (trim.length() == 0) {
                    return null;
                }
                try {
                    return new BigDecimal(trim);
                }
                catch (IllegalArgumentException ex) {
                    throw deserializationContext.weirdStringException(this._valueClass, "not a valid representation");
                }
            }
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }
    }
    
    @JacksonStdImpl
    public static class BigIntegerDeserializer extends StdScalarDeserializer<BigInteger>
    {
        public BigIntegerDeserializer() {
            super(BigInteger.class);
        }
        
        @Override
        public BigInteger deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            final JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.VALUE_NUMBER_INT) {
                switch (jsonParser.getNumberType()) {
                    case INT:
                    case LONG: {
                        return BigInteger.valueOf(jsonParser.getLongValue());
                    }
                }
            }
            else {
                if (currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
                    return jsonParser.getDecimalValue().toBigInteger();
                }
                if (currentToken != JsonToken.VALUE_STRING) {
                    throw deserializationContext.mappingException(this._valueClass, currentToken);
                }
            }
            final String trim = jsonParser.getText().trim();
            if (trim.length() == 0) {
                return null;
            }
            try {
                return new BigInteger(trim);
            }
            catch (IllegalArgumentException ex) {
                throw deserializationContext.weirdStringException(this._valueClass, "not a valid representation");
            }
        }
    }
    
    @JacksonStdImpl
    public static final class BooleanDeserializer extends PrimitiveOrWrapperDeserializer<Boolean>
    {
        public BooleanDeserializer(final Class<Boolean> clazz, final Boolean b) {
            super(clazz, b);
        }
        
        @Override
        public Boolean deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            return this._parseBoolean(jsonParser, deserializationContext);
        }
        
        @Override
        public Boolean deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
            return this._parseBoolean(jsonParser, deserializationContext);
        }
    }
    
    @JacksonStdImpl
    public static final class ByteDeserializer extends PrimitiveOrWrapperDeserializer<Byte>
    {
        public ByteDeserializer(final Class<Byte> clazz, final Byte b) {
            super(clazz, b);
        }
        
        @Override
        public Byte deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            return this._parseByte(jsonParser, deserializationContext);
        }
    }
    
    @JacksonStdImpl
    public static final class CharacterDeserializer extends PrimitiveOrWrapperDeserializer<Character>
    {
        public CharacterDeserializer(final Class<Character> clazz, final Character c) {
            super(clazz, c);
        }
        
        @Override
        public Character deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            final JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.VALUE_NUMBER_INT) {
                final int intValue = jsonParser.getIntValue();
                if (intValue >= 0 && intValue <= 65535) {
                    return (char)intValue;
                }
            }
            else if (currentToken == JsonToken.VALUE_STRING) {
                final String text = jsonParser.getText();
                if (text.length() == 1) {
                    return text.charAt(0);
                }
                if (text.length() == 0) {
                    return this.getEmptyValue();
                }
            }
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }
    }
    
    @JacksonStdImpl
    public static final class DoubleDeserializer extends PrimitiveOrWrapperDeserializer<Double>
    {
        public DoubleDeserializer(final Class<Double> clazz, final Double n) {
            super(clazz, n);
        }
        
        @Override
        public Double deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            return this._parseDouble(jsonParser, deserializationContext);
        }
        
        @Override
        public Double deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
            return this._parseDouble(jsonParser, deserializationContext);
        }
    }
    
    @JacksonStdImpl
    public static final class FloatDeserializer extends PrimitiveOrWrapperDeserializer<Float>
    {
        public FloatDeserializer(final Class<Float> clazz, final Float n) {
            super(clazz, n);
        }
        
        @Override
        public Float deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            return this._parseFloat(jsonParser, deserializationContext);
        }
    }
    
    @JacksonStdImpl
    public static final class IntegerDeserializer extends PrimitiveOrWrapperDeserializer<Integer>
    {
        public IntegerDeserializer(final Class<Integer> clazz, final Integer n) {
            super(clazz, n);
        }
        
        @Override
        public Integer deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            return this._parseInteger(jsonParser, deserializationContext);
        }
        
        @Override
        public Integer deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
            return this._parseInteger(jsonParser, deserializationContext);
        }
    }
    
    @JacksonStdImpl
    public static final class LongDeserializer extends PrimitiveOrWrapperDeserializer<Long>
    {
        public LongDeserializer(final Class<Long> clazz, final Long n) {
            super(clazz, n);
        }
        
        @Override
        public Long deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            return this._parseLong(jsonParser, deserializationContext);
        }
    }
    
    @JacksonStdImpl
    public static final class NumberDeserializer extends StdScalarDeserializer<Number>
    {
        public NumberDeserializer() {
            super(Number.class);
        }
        
        @Override
        public Number deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            final JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.VALUE_NUMBER_INT) {
                if (deserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_INTEGER_FOR_INTS)) {
                    return jsonParser.getBigIntegerValue();
                }
                return jsonParser.getNumberValue();
            }
            else if (currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
                if (deserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                    return jsonParser.getDecimalValue();
                }
                return jsonParser.getDoubleValue();
            }
            else {
                if (currentToken != JsonToken.VALUE_STRING) {
                    throw deserializationContext.mappingException(this._valueClass, currentToken);
                }
                final String trim = jsonParser.getText().trim();
                Label_0135: {
                    try {
                        if (trim.indexOf(46) < 0) {
                            break Label_0135;
                        }
                        if (deserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                            return new BigDecimal(trim);
                        }
                    }
                    catch (IllegalArgumentException ex) {
                        throw deserializationContext.weirdStringException(this._valueClass, "not a valid number");
                    }
                    return new Double(trim);
                }
                if (deserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_INTEGER_FOR_INTS)) {
                    return new BigInteger(trim);
                }
                final long long1 = Long.parseLong(trim);
                if (long1 <= 2147483647L && long1 >= -2147483648L) {
                    return (int)long1;
                }
                return long1;
            }
        }
        
        @Override
        public Object deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
            switch (jsonParser.getCurrentToken()) {
                default: {
                    return typeDeserializer.deserializeTypedFromScalar(jsonParser, deserializationContext);
                }
                case VALUE_NUMBER_INT:
                case VALUE_NUMBER_FLOAT:
                case VALUE_STRING: {
                    return this.deserialize(jsonParser, deserializationContext);
                }
            }
        }
    }
    
    protected abstract static class PrimitiveOrWrapperDeserializer<T> extends StdScalarDeserializer<T>
    {
        final T _nullValue;
        
        protected PrimitiveOrWrapperDeserializer(final Class<T> clazz, final T nullValue) {
            super(clazz);
            this._nullValue = nullValue;
        }
        
        @Override
        public final T getNullValue() {
            return this._nullValue;
        }
    }
    
    @JacksonStdImpl
    public static final class ShortDeserializer extends PrimitiveOrWrapperDeserializer<Short>
    {
        public ShortDeserializer(final Class<Short> clazz, final Short n) {
            super(clazz, n);
        }
        
        @Override
        public Short deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            return this._parseShort(jsonParser, deserializationContext);
        }
    }
    
    public static class SqlDateDeserializer extends StdScalarDeserializer<java.sql.Date>
    {
        public SqlDateDeserializer() {
            super(java.sql.Date.class);
        }
        
        @Override
        public java.sql.Date deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            final Date parseDate = this._parseDate(jsonParser, deserializationContext);
            if (parseDate == null) {
                return null;
            }
            return new java.sql.Date(parseDate.getTime());
        }
    }
    
    public static class StackTraceElementDeserializer extends StdScalarDeserializer<StackTraceElement>
    {
        public StackTraceElementDeserializer() {
            super(StackTraceElement.class);
        }
        
        @Override
        public StackTraceElement deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            final JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken != JsonToken.START_OBJECT) {
                throw deserializationContext.mappingException(this._valueClass, currentToken);
            }
            String text = "";
            String text2 = "";
            String text3 = "";
            int intValue = -1;
            while (true) {
                final JsonToken nextValue = jsonParser.nextValue();
                if (nextValue == JsonToken.END_OBJECT) {
                    return new StackTraceElement(text, text2, text3, intValue);
                }
                final String currentName = jsonParser.getCurrentName();
                if ("className".equals(currentName)) {
                    text = jsonParser.getText();
                }
                else if ("fileName".equals(currentName)) {
                    text3 = jsonParser.getText();
                }
                else if ("lineNumber".equals(currentName)) {
                    if (!nextValue.isNumeric()) {
                        throw JsonMappingException.from(jsonParser, "Non-numeric token (" + nextValue + ") for property 'lineNumber'");
                    }
                    intValue = jsonParser.getIntValue();
                }
                else if ("methodName".equals(currentName)) {
                    text2 = jsonParser.getText();
                }
                else {
                    if ("nativeMethod".equals(currentName)) {
                        continue;
                    }
                    this.handleUnknownProperty(jsonParser, deserializationContext, this._valueClass, currentName);
                }
            }
        }
    }
}
