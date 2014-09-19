package com.flurry.org.codehaus.jackson.map.module;

import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.deser.*;
import java.util.*;

public class SimpleModule extends Module
{
    protected SimpleAbstractTypeResolver _abstractTypes;
    protected SimpleDeserializers _deserializers;
    protected SimpleKeyDeserializers _keyDeserializers;
    protected SimpleSerializers _keySerializers;
    protected HashMap<Class<?>, Class<?>> _mixins;
    protected final String _name;
    protected SimpleSerializers _serializers;
    protected SimpleValueInstantiators _valueInstantiators;
    protected final Version _version;
    
    public SimpleModule(final String name, final Version version) {
        super();
        this._serializers = null;
        this._deserializers = null;
        this._keySerializers = null;
        this._keyDeserializers = null;
        this._abstractTypes = null;
        this._valueInstantiators = null;
        this._mixins = null;
        this._name = name;
        this._version = version;
    }
    
    public <T> SimpleModule addAbstractTypeMapping(final Class<T> clazz, final Class<? extends T> clazz2) {
        if (this._abstractTypes == null) {
            this._abstractTypes = new SimpleAbstractTypeResolver();
        }
        this._abstractTypes = this._abstractTypes.addMapping(clazz, clazz2);
        return this;
    }
    
    public <T> SimpleModule addDeserializer(final Class<T> clazz, final JsonDeserializer<? extends T> jsonDeserializer) {
        if (this._deserializers == null) {
            this._deserializers = new SimpleDeserializers();
        }
        this._deserializers.addDeserializer(clazz, jsonDeserializer);
        return this;
    }
    
    public SimpleModule addKeyDeserializer(final Class<?> clazz, final KeyDeserializer keyDeserializer) {
        if (this._keyDeserializers == null) {
            this._keyDeserializers = new SimpleKeyDeserializers();
        }
        this._keyDeserializers.addDeserializer(clazz, keyDeserializer);
        return this;
    }
    
    public <T> SimpleModule addKeySerializer(final Class<? extends T> clazz, final JsonSerializer<T> jsonSerializer) {
        if (this._keySerializers == null) {
            this._keySerializers = new SimpleSerializers();
        }
        this._keySerializers.addSerializer(clazz, jsonSerializer);
        return this;
    }
    
    public SimpleModule addSerializer(final JsonSerializer<?> jsonSerializer) {
        if (this._serializers == null) {
            this._serializers = new SimpleSerializers();
        }
        this._serializers.addSerializer(jsonSerializer);
        return this;
    }
    
    public <T> SimpleModule addSerializer(final Class<? extends T> clazz, final JsonSerializer<T> jsonSerializer) {
        if (this._serializers == null) {
            this._serializers = new SimpleSerializers();
        }
        this._serializers.addSerializer(clazz, jsonSerializer);
        return this;
    }
    
    public SimpleModule addValueInstantiator(final Class<?> clazz, final ValueInstantiator valueInstantiator) {
        if (this._valueInstantiators == null) {
            this._valueInstantiators = new SimpleValueInstantiators();
        }
        this._valueInstantiators = this._valueInstantiators.addValueInstantiator(clazz, valueInstantiator);
        return this;
    }
    
    @Override
    public String getModuleName() {
        return this._name;
    }
    
    public void setAbstractTypes(final SimpleAbstractTypeResolver abstractTypes) {
        this._abstractTypes = abstractTypes;
    }
    
    public void setDeserializers(final SimpleDeserializers deserializers) {
        this._deserializers = deserializers;
    }
    
    public void setKeyDeserializers(final SimpleKeyDeserializers keyDeserializers) {
        this._keyDeserializers = keyDeserializers;
    }
    
    public void setKeySerializers(final SimpleSerializers keySerializers) {
        this._keySerializers = keySerializers;
    }
    
    public SimpleModule setMixInAnnotation(final Class<?> key, final Class<?> value) {
        if (this._mixins == null) {
            this._mixins = new HashMap<Class<?>, Class<?>>();
        }
        this._mixins.put(key, value);
        return this;
    }
    
    public void setSerializers(final SimpleSerializers serializers) {
        this._serializers = serializers;
    }
    
    public void setValueInstantiators(final SimpleValueInstantiators valueInstantiators) {
        this._valueInstantiators = valueInstantiators;
    }
    
    @Override
    public void setupModule(final SetupContext setupContext) {
        if (this._serializers != null) {
            setupContext.addSerializers(this._serializers);
        }
        if (this._deserializers != null) {
            setupContext.addDeserializers(this._deserializers);
        }
        if (this._keySerializers != null) {
            setupContext.addKeySerializers(this._keySerializers);
        }
        if (this._keyDeserializers != null) {
            setupContext.addKeyDeserializers(this._keyDeserializers);
        }
        if (this._abstractTypes != null) {
            setupContext.addAbstractTypeResolver(this._abstractTypes);
        }
        if (this._valueInstantiators != null) {
            setupContext.addValueInstantiators(this._valueInstantiators);
        }
        if (this._mixins != null) {
            for (final Map.Entry<Class<?>, Class<?>> entry : this._mixins.entrySet()) {
                setupContext.setMixInAnnotations(entry.getKey(), entry.getValue());
            }
        }
    }
    
    @Override
    public Version version() {
        return this._version;
    }
}
