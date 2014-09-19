package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.ser.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.schema.*;
import com.flurry.org.codehaus.jackson.node.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public abstract class BeanSerializerBase extends SerializerBase<Object> implements ResolvableSerializer, SchemaAware
{
    protected static final BeanPropertyWriter[] NO_PROPS;
    protected final AnyGetterWriter _anyGetterWriter;
    protected final BeanPropertyWriter[] _filteredProps;
    protected final Object _propertyFilterId;
    protected final BeanPropertyWriter[] _props;
    
    static {
        NO_PROPS = new BeanPropertyWriter[0];
    }
    
    protected BeanSerializerBase(final BeanSerializerBase beanSerializerBase) {
        this(beanSerializerBase._handledType, beanSerializerBase._props, beanSerializerBase._filteredProps, beanSerializerBase._anyGetterWriter, beanSerializerBase._propertyFilterId);
    }
    
    protected BeanSerializerBase(final JavaType javaType, final BeanPropertyWriter[] props, final BeanPropertyWriter[] filteredProps, final AnyGetterWriter anyGetterWriter, final Object propertyFilterId) {
        super(javaType);
        this._props = props;
        this._filteredProps = filteredProps;
        this._anyGetterWriter = anyGetterWriter;
        this._propertyFilterId = propertyFilterId;
    }
    
    public BeanSerializerBase(final Class<?> clazz, final BeanPropertyWriter[] props, final BeanPropertyWriter[] filteredProps, final AnyGetterWriter anyGetterWriter, final Object propertyFilterId) {
        super(clazz);
        this._props = props;
        this._filteredProps = filteredProps;
        this._anyGetterWriter = anyGetterWriter;
        this._propertyFilterId = propertyFilterId;
    }
    
    protected BeanPropertyFilter findFilter(final SerializerProvider serializerProvider) throws JsonMappingException {
        final Object propertyFilterId = this._propertyFilterId;
        final FilterProvider filterProvider = serializerProvider.getFilterProvider();
        if (filterProvider == null) {
            throw new JsonMappingException("Can not resolve BeanPropertyFilter with id '" + propertyFilterId + "'; no FilterProvider configured");
        }
        return filterProvider.findFilter(propertyFilterId);
    }
    
    @Override
    public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) throws JsonMappingException {
        final ObjectNode schemaNode = this.createSchemaNode("object", true);
        final ObjectNode objectNode = schemaNode.objectNode();
        for (int i = 0; i < this._props.length; ++i) {
            final BeanPropertyWriter beanPropertyWriter = this._props[i];
            final JavaType serializationType = beanPropertyWriter.getSerializationType();
            Type type2;
            if (serializationType == null) {
                type2 = beanPropertyWriter.getGenericPropertyType();
            }
            else {
                type2 = serializationType.getRawClass();
            }
            JsonSerializer<Object> jsonSerializer = beanPropertyWriter.getSerializer();
            if (jsonSerializer == null) {
                Class<?> clazz = beanPropertyWriter.getRawSerializationType();
                if (clazz == null) {
                    clazz = beanPropertyWriter.getPropertyType();
                }
                jsonSerializer = serializerProvider.findValueSerializer(clazz, beanPropertyWriter);
            }
            JsonNode jsonNode;
            if (jsonSerializer instanceof SchemaAware) {
                jsonNode = ((SchemaAware)jsonSerializer).getSchema(serializerProvider, type2);
            }
            else {
                jsonNode = JsonSchema.getDefaultSchemaNode();
            }
            objectNode.put(beanPropertyWriter.getName(), jsonNode);
        }
        schemaNode.put("properties", objectNode);
        return schemaNode;
    }
    
    @Override
    public void resolve(final SerializerProvider serializerProvider) throws JsonMappingException {
        int length;
        if (this._filteredProps == null) {
            length = 0;
        }
        else {
            length = this._filteredProps.length;
        }
        for (int i = 0; i < this._props.length; ++i) {
            final BeanPropertyWriter beanPropertyWriter = this._props[i];
            if (!beanPropertyWriter.hasSerializer()) {
                JavaType nonTrivialBaseType = beanPropertyWriter.getSerializationType();
                if (nonTrivialBaseType == null) {
                    nonTrivialBaseType = serializerProvider.constructType(beanPropertyWriter.getGenericPropertyType());
                    if (!nonTrivialBaseType.isFinal()) {
                        if (nonTrivialBaseType.isContainerType() || nonTrivialBaseType.containedTypeCount() > 0) {
                            beanPropertyWriter.setNonTrivialBaseType(nonTrivialBaseType);
                        }
                        continue;
                    }
                }
                Object o = serializerProvider.findValueSerializer(nonTrivialBaseType, beanPropertyWriter);
                if (nonTrivialBaseType.isContainerType()) {
                    final TypeSerializer typeSerializer = nonTrivialBaseType.getContentType().getTypeHandler();
                    if (typeSerializer != null && o instanceof ContainerSerializerBase) {
                        o = ((ContainerSerializerBase<Object>)o).withValueTypeSerializer(typeSerializer);
                    }
                }
                this._props[i] = beanPropertyWriter.withSerializer((JsonSerializer<Object>)o);
                if (i < length) {
                    final BeanPropertyWriter beanPropertyWriter2 = this._filteredProps[i];
                    if (beanPropertyWriter2 != null) {
                        this._filteredProps[i] = beanPropertyWriter2.withSerializer((JsonSerializer<Object>)o);
                    }
                }
            }
        }
        if (this._anyGetterWriter != null) {
            this._anyGetterWriter.resolve(serializerProvider);
        }
    }
    
    @Override
    public abstract void serialize(final Object p0, final JsonGenerator p1, final SerializerProvider p2) throws IOException, JsonGenerationException;
    
    protected void serializeFields(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        Label_0061: {
            if (this._filteredProps == null || serializerProvider.getSerializationView() == null) {
                break Label_0061;
            }
            BeanPropertyWriter[] array = this._filteredProps;
            while (true) {
                int i = 0;
                try {
                    while (i < array.length) {
                        final BeanPropertyWriter beanPropertyWriter = array[i];
                        if (beanPropertyWriter != null) {
                            beanPropertyWriter.serializeAsField(o, jsonGenerator, serializerProvider);
                        }
                        ++i;
                    }
                    if (this._anyGetterWriter != null) {
                        this._anyGetterWriter.getAndSerialize(o, jsonGenerator, serializerProvider);
                    }
                    return;
                    array = this._props;
                }
                catch (Exception ex) {
                    String name;
                    if (i == array.length) {
                        name = "[anySetter]";
                    }
                    else {
                        name = array[i].getName();
                    }
                    this.wrapAndThrow(serializerProvider, ex, o, name);
                }
                catch (StackOverflowError stackOverflowError) {
                    final JsonMappingException ex2 = new JsonMappingException("Infinite recursion (StackOverflowError)");
                    String name2;
                    if (i == array.length) {
                        name2 = "[anySetter]";
                    }
                    else {
                        name2 = array[i].getName();
                    }
                    ex2.prependPath(new JsonMappingException.Reference(o, name2));
                    throw ex2;
                }
            }
        }
    }
    
    protected void serializeFieldsFiltered(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        BeanPropertyWriter[] array;
        if (this._filteredProps != null && serializerProvider.getSerializationView() != null) {
            array = this._filteredProps;
        }
        else {
            array = this._props;
        }
        final BeanPropertyFilter filter = this.findFilter(serializerProvider);
        if (filter == null) {
            this.serializeFields(o, jsonGenerator, serializerProvider);
        }
        else {
            while (true) {
                int n = 0;
                while (true) {
                    try {
                        final int length = array.length;
                        if (n < length) {
                            final BeanPropertyWriter beanPropertyWriter = array[n];
                            if (beanPropertyWriter != null) {
                                filter.serializeAsField(o, jsonGenerator, serializerProvider, beanPropertyWriter);
                            }
                        }
                        else {
                            if (this._anyGetterWriter != null) {
                                this._anyGetterWriter.getAndSerialize(o, jsonGenerator, serializerProvider);
                                return;
                            }
                            break;
                        }
                    }
                    catch (Exception ex) {
                        String name;
                        if (n == array.length) {
                            name = "[anySetter]";
                        }
                        else {
                            name = array[n].getName();
                        }
                        this.wrapAndThrow(serializerProvider, ex, o, name);
                        return;
                    }
                    catch (StackOverflowError stackOverflowError) {
                        final JsonMappingException ex2 = new JsonMappingException("Infinite recursion (StackOverflowError)");
                        String name2;
                        if (n == array.length) {
                            name2 = "[anySetter]";
                        }
                        else {
                            name2 = array[n].getName();
                        }
                        ex2.prependPath(new JsonMappingException.Reference(o, name2));
                        throw ex2;
                    }
                    ++n;
                    continue;
                }
            }
        }
    }
    
    @Override
    public void serializeWithType(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonGenerationException {
        typeSerializer.writeTypePrefixForObject(o, jsonGenerator);
        if (this._propertyFilterId != null) {
            this.serializeFieldsFiltered(o, jsonGenerator, serializerProvider);
        }
        else {
            this.serializeFields(o, jsonGenerator, serializerProvider);
        }
        typeSerializer.writeTypeSuffixForObject(o, jsonGenerator);
    }
}
