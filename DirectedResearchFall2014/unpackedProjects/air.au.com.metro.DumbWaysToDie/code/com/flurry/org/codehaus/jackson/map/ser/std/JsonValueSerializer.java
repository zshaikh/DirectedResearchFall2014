package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.schema.*;
import com.flurry.org.codehaus.jackson.type.*;
import java.io.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.*;

@JacksonStdImpl
public class JsonValueSerializer extends SerializerBase<Object> implements ResolvableSerializer, SchemaAware
{
    protected final Method _accessorMethod;
    protected boolean _forceTypeInformation;
    protected final BeanProperty _property;
    protected JsonSerializer<Object> _valueSerializer;
    
    public JsonValueSerializer(final Method accessorMethod, final JsonSerializer<Object> valueSerializer, final BeanProperty property) {
        super(Object.class);
        this._accessorMethod = accessorMethod;
        this._valueSerializer = valueSerializer;
        this._property = property;
    }
    
    @Override
    public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) throws JsonMappingException {
        if (this._valueSerializer instanceof SchemaAware) {
            return ((SchemaAware)this._valueSerializer).getSchema(serializerProvider, null);
        }
        return JsonSchema.getDefaultSchemaNode();
    }
    
    protected boolean isNaturalTypeWithStdHandling(final JavaType javaType, final JsonSerializer<?> jsonSerializer) {
        final Class<?> rawClass = javaType.getRawClass();
        if (javaType.isPrimitive()) {
            if (rawClass != Integer.TYPE && rawClass != Boolean.TYPE && rawClass != Double.TYPE) {
                return false;
            }
        }
        else if (rawClass != String.class && rawClass != Integer.class && rawClass != Boolean.class && rawClass != Double.class) {
            return false;
        }
        return jsonSerializer.getClass().getAnnotation(JacksonStdImpl.class) != null;
    }
    
    @Override
    public void resolve(final SerializerProvider serializerProvider) throws JsonMappingException {
        if (this._valueSerializer == null && (serializerProvider.isEnabled(SerializationConfig.Feature.USE_STATIC_TYPING) || Modifier.isFinal(this._accessorMethod.getReturnType().getModifiers()))) {
            final JavaType constructType = serializerProvider.constructType(this._accessorMethod.getGenericReturnType());
            this._valueSerializer = serializerProvider.findTypedValueSerializer(constructType, false, this._property);
            this._forceTypeInformation = this.isNaturalTypeWithStdHandling(constructType, this._valueSerializer);
        }
    }
    
    @Override
    public void serialize(final Object obj, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        try {
            final Object invoke = this._accessorMethod.invoke(obj, new Object[0]);
            if (invoke == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
                return;
            }
            JsonSerializer<Object> jsonSerializer = this._valueSerializer;
            if (jsonSerializer == null) {
                jsonSerializer = serializerProvider.findTypedValueSerializer(invoke.getClass(), true, this._property);
            }
            jsonSerializer.serialize(invoke, jsonGenerator, serializerProvider);
        }
        catch (IOException ex) {
            throw ex;
        }
        catch (Exception ex2) {
            Throwable cause;
            for (cause = ex2; cause instanceof InvocationTargetException && cause.getCause() != null; cause = cause.getCause()) {}
            if (cause instanceof Error) {
                throw (Error)cause;
            }
            throw JsonMappingException.wrapWithPath(cause, obj, this._accessorMethod.getName() + "()");
        }
    }
    
    @Override
    public void serializeWithType(final Object obj, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonProcessingException {
        try {
            final Object invoke = this._accessorMethod.invoke(obj, new Object[0]);
            if (invoke == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
                return;
            }
            final JsonSerializer<Object> valueSerializer = this._valueSerializer;
            if (valueSerializer == null) {
                goto Label_0081;
            }
            if (this._forceTypeInformation) {
                typeSerializer.writeTypePrefixForScalar(obj, jsonGenerator);
            }
            valueSerializer.serializeWithType(invoke, jsonGenerator, serializerProvider, typeSerializer);
            if (this._forceTypeInformation) {
                typeSerializer.writeTypeSuffixForScalar(obj, jsonGenerator);
            }
        }
        catch (IOException ex) {
            throw ex;
        }
        catch (Exception ex2) {
            Throwable cause;
            for (cause = ex2; cause instanceof InvocationTargetException && cause.getCause() != null; cause = cause.getCause()) {}
            if (cause instanceof Error) {
                throw (Error)cause;
            }
            throw JsonMappingException.wrapWithPath(cause, obj, this._accessorMethod.getName() + "()");
        }
    }
    
    @Override
    public String toString() {
        return "(@JsonValue serializer for method " + this._accessorMethod.getDeclaringClass() + "#" + this._accessorMethod.getName() + ")";
    }
}
