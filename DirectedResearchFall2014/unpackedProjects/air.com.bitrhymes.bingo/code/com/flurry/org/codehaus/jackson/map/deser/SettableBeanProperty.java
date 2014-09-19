package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.util.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import java.lang.annotation.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.map.*;

public abstract class SettableBeanProperty implements BeanProperty
{
    protected final Annotations _contextAnnotations;
    protected String _managedReferenceName;
    protected NullProvider _nullProvider;
    protected final String _propName;
    protected int _propertyIndex;
    protected final JavaType _type;
    protected JsonDeserializer<Object> _valueDeserializer;
    protected TypeDeserializer _valueTypeDeserializer;
    
    protected SettableBeanProperty(final SettableBeanProperty settableBeanProperty) {
        super();
        this._propertyIndex = -1;
        this._propName = settableBeanProperty._propName;
        this._type = settableBeanProperty._type;
        this._contextAnnotations = settableBeanProperty._contextAnnotations;
        this._valueDeserializer = settableBeanProperty._valueDeserializer;
        this._valueTypeDeserializer = settableBeanProperty._valueTypeDeserializer;
        this._nullProvider = settableBeanProperty._nullProvider;
        this._managedReferenceName = settableBeanProperty._managedReferenceName;
        this._propertyIndex = settableBeanProperty._propertyIndex;
    }
    
    protected SettableBeanProperty(final SettableBeanProperty settableBeanProperty, final JsonDeserializer<Object> valueDeserializer) {
        super();
        this._propertyIndex = -1;
        this._propName = settableBeanProperty._propName;
        this._type = settableBeanProperty._type;
        this._contextAnnotations = settableBeanProperty._contextAnnotations;
        this._valueTypeDeserializer = settableBeanProperty._valueTypeDeserializer;
        this._managedReferenceName = settableBeanProperty._managedReferenceName;
        this._propertyIndex = settableBeanProperty._propertyIndex;
        this._valueDeserializer = valueDeserializer;
        if (valueDeserializer == null) {
            this._nullProvider = null;
            return;
        }
        final Object nullValue = valueDeserializer.getNullValue();
        NullProvider nullProvider;
        if (nullValue == null) {
            nullProvider = null;
        }
        else {
            nullProvider = new NullProvider(this._type, nullValue);
        }
        this._nullProvider = nullProvider;
    }
    
    protected SettableBeanProperty(final String s, final JavaType type, final TypeDeserializer valueTypeDeserializer, final Annotations contextAnnotations) {
        super();
        this._propertyIndex = -1;
        if (s == null || s.length() == 0) {
            this._propName = "";
        }
        else {
            this._propName = InternCache.instance.intern(s);
        }
        this._type = type;
        this._contextAnnotations = contextAnnotations;
        this._valueTypeDeserializer = valueTypeDeserializer;
    }
    
    protected IOException _throwAsIOE(final Exception ex) throws IOException {
        if (ex instanceof IOException) {
            throw (IOException)ex;
        }
        if (ex instanceof RuntimeException) {
            throw (RuntimeException)ex;
        }
        Throwable cause;
        for (cause = ex; cause.getCause() != null; cause = cause.getCause()) {}
        throw new JsonMappingException(cause.getMessage(), null, cause);
    }
    
    protected void _throwAsIOE(final Exception ex, final Object o) throws IOException {
        if (ex instanceof IllegalArgumentException) {
            String name;
            if (o == null) {
                name = "[NULL]";
            }
            else {
                name = o.getClass().getName();
            }
            final StringBuilder append = new StringBuilder("Problem deserializing property '").append(this.getPropertyName());
            append.append("' (expected type: ").append(this.getType());
            append.append("; actual type: ").append(name).append(")");
            final String message = ex.getMessage();
            if (message != null) {
                append.append(", problem: ").append(message);
            }
            else {
                append.append(" (no error message provided)");
            }
            throw new JsonMappingException(append.toString(), null, ex);
        }
        this._throwAsIOE(ex);
    }
    
    public void assignIndex(final int n) {
        if (this._propertyIndex != -1) {
            throw new IllegalStateException("Property '" + this.getName() + "' already had index (" + this._propertyIndex + "), trying to assign " + n);
        }
        this._propertyIndex = n;
    }
    
    public final Object deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
            if (this._nullProvider == null) {
                return null;
            }
            return this._nullProvider.nullValue(deserializationContext);
        }
        else {
            if (this._valueTypeDeserializer != null) {
                return this._valueDeserializer.deserializeWithType(jsonParser, deserializationContext, this._valueTypeDeserializer);
            }
            return this._valueDeserializer.deserialize(jsonParser, deserializationContext);
        }
    }
    
    public abstract void deserializeAndSet(final JsonParser p0, final DeserializationContext p1, final Object p2) throws IOException, JsonProcessingException;
    
    @Override
    public abstract <A extends Annotation> A getAnnotation(final Class<A> p0);
    
    @Override
    public <A extends Annotation> A getContextAnnotation(final Class<A> clazz) {
        return this._contextAnnotations.get(clazz);
    }
    
    protected final Class<?> getDeclaringClass() {
        return this.getMember().getDeclaringClass();
    }
    
    public Object getInjectableValueId() {
        return null;
    }
    
    public String getManagedReferenceName() {
        return this._managedReferenceName;
    }
    
    @Override
    public abstract AnnotatedMember getMember();
    
    @Override
    public final String getName() {
        return this._propName;
    }
    
    public int getPropertyIndex() {
        return this._propertyIndex;
    }
    
    @Deprecated
    public String getPropertyName() {
        return this._propName;
    }
    
    @Deprecated
    public int getProperytIndex() {
        return this.getPropertyIndex();
    }
    
    @Override
    public JavaType getType() {
        return this._type;
    }
    
    public JsonDeserializer<Object> getValueDeserializer() {
        return this._valueDeserializer;
    }
    
    public TypeDeserializer getValueTypeDeserializer() {
        return this._valueTypeDeserializer;
    }
    
    public boolean hasValueDeserializer() {
        return this._valueDeserializer != null;
    }
    
    public boolean hasValueTypeDeserializer() {
        return this._valueTypeDeserializer != null;
    }
    
    public abstract void set(final Object p0, final Object p1) throws IOException;
    
    public void setManagedReferenceName(final String managedReferenceName) {
        this._managedReferenceName = managedReferenceName;
    }
    
    @Deprecated
    public void setValueDeserializer(final JsonDeserializer<Object> valueDeserializer) {
        if (this._valueDeserializer != null) {
            throw new IllegalStateException("Already had assigned deserializer for property '" + this.getName() + "' (class " + this.getDeclaringClass().getName() + ")");
        }
        this._valueDeserializer = valueDeserializer;
        final Object nullValue = this._valueDeserializer.getNullValue();
        NullProvider nullProvider;
        if (nullValue == null) {
            nullProvider = null;
        }
        else {
            nullProvider = new NullProvider(this._type, nullValue);
        }
        this._nullProvider = nullProvider;
    }
    
    @Override
    public String toString() {
        return "[property '" + this.getName() + "']";
    }
    
    public abstract SettableBeanProperty withValueDeserializer(final JsonDeserializer<Object> p0);
    
    public static final class FieldProperty extends SettableBeanProperty
    {
        protected final AnnotatedField _annotated;
        protected final Field _field;
        
        protected FieldProperty(final FieldProperty fieldProperty, final JsonDeserializer<Object> jsonDeserializer) {
            super(fieldProperty, jsonDeserializer);
            this._annotated = fieldProperty._annotated;
            this._field = fieldProperty._field;
        }
        
        public FieldProperty(final String s, final JavaType javaType, final TypeDeserializer typeDeserializer, final Annotations annotations, final AnnotatedField annotated) {
            super(s, javaType, typeDeserializer, annotations);
            this._annotated = annotated;
            this._field = annotated.getAnnotated();
        }
        
        @Override
        public void deserializeAndSet(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Object o) throws IOException, JsonProcessingException {
            this.set(o, this.deserialize(jsonParser, deserializationContext));
        }
        
        @Override
        public <A extends Annotation> A getAnnotation(final Class<A> clazz) {
            return this._annotated.getAnnotation(clazz);
        }
        
        @Override
        public AnnotatedMember getMember() {
            return this._annotated;
        }
        
        @Override
        public final void set(final Object obj, final Object value) throws IOException {
            try {
                this._field.set(obj, value);
            }
            catch (Exception ex) {
                this._throwAsIOE(ex, value);
            }
        }
        
        @Override
        public FieldProperty withValueDeserializer(final JsonDeserializer<Object> jsonDeserializer) {
            return new FieldProperty(this, jsonDeserializer);
        }
    }
    
    public static final class InnerClassProperty extends SettableBeanProperty
    {
        protected final Constructor<?> _creator;
        protected final SettableBeanProperty _delegate;
        
        protected InnerClassProperty(final InnerClassProperty innerClassProperty, final JsonDeserializer<Object> jsonDeserializer) {
            super(innerClassProperty, jsonDeserializer);
            this._delegate = innerClassProperty._delegate.withValueDeserializer(jsonDeserializer);
            this._creator = innerClassProperty._creator;
        }
        
        public InnerClassProperty(final SettableBeanProperty delegate, final Constructor<?> creator) {
            super(delegate);
            this._delegate = delegate;
            this._creator = creator;
        }
        
        @Override
        public void deserializeAndSet(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Object o) throws IOException, JsonProcessingException {
            Object deserializeWithType;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
                Object nullValue;
                if (this._nullProvider == null) {
                    nullValue = null;
                }
                else {
                    nullValue = this._nullProvider.nullValue(deserializationContext);
                }
                deserializeWithType = nullValue;
            }
            else if (this._valueTypeDeserializer != null) {
                deserializeWithType = this._valueDeserializer.deserializeWithType(jsonParser, deserializationContext, this._valueTypeDeserializer);
            }
            else {
                while (true) {
                    try {
                        final Object instance = this._creator.newInstance(o);
                        this._valueDeserializer.deserialize(jsonParser, deserializationContext, instance);
                        deserializeWithType = instance;
                    }
                    catch (Exception ex) {
                        ClassUtil.unwrapAndThrowAsIAE(ex, "Failed to instantiate class " + this._creator.getDeclaringClass().getName() + ", problem: " + ex.getMessage());
                        final Object instance = null;
                        continue;
                    }
                    break;
                }
            }
            this.set(o, deserializeWithType);
        }
        
        @Override
        public <A extends Annotation> A getAnnotation(final Class<A> clazz) {
            return this._delegate.getAnnotation(clazz);
        }
        
        @Override
        public AnnotatedMember getMember() {
            return this._delegate.getMember();
        }
        
        @Override
        public final void set(final Object o, final Object o2) throws IOException {
            this._delegate.set(o, o2);
        }
        
        @Override
        public InnerClassProperty withValueDeserializer(final JsonDeserializer<Object> jsonDeserializer) {
            return new InnerClassProperty(this, jsonDeserializer);
        }
    }
    
    public static final class ManagedReferenceProperty extends SettableBeanProperty
    {
        protected final SettableBeanProperty _backProperty;
        protected final boolean _isContainer;
        protected final SettableBeanProperty _managedProperty;
        protected final String _referenceName;
        
        protected ManagedReferenceProperty(final ManagedReferenceProperty managedReferenceProperty, final JsonDeserializer<Object> jsonDeserializer) {
            super(managedReferenceProperty, jsonDeserializer);
            this._referenceName = managedReferenceProperty._referenceName;
            this._isContainer = managedReferenceProperty._isContainer;
            this._managedProperty = managedReferenceProperty._managedProperty;
            this._backProperty = managedReferenceProperty._backProperty;
        }
        
        public ManagedReferenceProperty(final String referenceName, final SettableBeanProperty managedProperty, final SettableBeanProperty backProperty, final Annotations annotations, final boolean isContainer) {
            super(managedProperty.getName(), managedProperty.getType(), managedProperty._valueTypeDeserializer, annotations);
            this._referenceName = referenceName;
            this._managedProperty = managedProperty;
            this._backProperty = backProperty;
            this._isContainer = isContainer;
        }
        
        @Override
        public void deserializeAndSet(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Object o) throws IOException, JsonProcessingException {
            this.set(o, this._managedProperty.deserialize(jsonParser, deserializationContext));
        }
        
        @Override
        public <A extends Annotation> A getAnnotation(final Class<A> clazz) {
            return this._managedProperty.getAnnotation(clazz);
        }
        
        @Override
        public AnnotatedMember getMember() {
            return this._managedProperty.getMember();
        }
        
        @Override
        public final void set(final Object o, final Object o2) throws IOException {
            this._managedProperty.set(o, o2);
            if (o2 != null) {
                if (this._isContainer) {
                    if (o2 instanceof Object[]) {
                        for (final Object o3 : (Object[])o2) {
                            if (o3 != null) {
                                this._backProperty.set(o3, o);
                            }
                        }
                    }
                    else if (o2 instanceof Collection) {
                        for (final Object next : (Collection)o2) {
                            if (next != null) {
                                this._backProperty.set(next, o);
                            }
                        }
                    }
                    else {
                        if (!(o2 instanceof Map)) {
                            throw new IllegalStateException("Unsupported container type (" + o2.getClass().getName() + ") when resolving reference '" + this._referenceName + "'");
                        }
                        for (final Object next2 : ((Map)o2).values()) {
                            if (next2 != null) {
                                this._backProperty.set(next2, o);
                            }
                        }
                    }
                }
                else {
                    this._backProperty.set(o2, o);
                }
            }
        }
        
        @Override
        public ManagedReferenceProperty withValueDeserializer(final JsonDeserializer<Object> jsonDeserializer) {
            return new ManagedReferenceProperty(this, jsonDeserializer);
        }
    }
    
    public static final class MethodProperty extends SettableBeanProperty
    {
        protected final AnnotatedMethod _annotated;
        protected final Method _setter;
        
        protected MethodProperty(final MethodProperty methodProperty, final JsonDeserializer<Object> jsonDeserializer) {
            super(methodProperty, jsonDeserializer);
            this._annotated = methodProperty._annotated;
            this._setter = methodProperty._setter;
        }
        
        public MethodProperty(final String s, final JavaType javaType, final TypeDeserializer typeDeserializer, final Annotations annotations, final AnnotatedMethod annotated) {
            super(s, javaType, typeDeserializer, annotations);
            this._annotated = annotated;
            this._setter = annotated.getAnnotated();
        }
        
        @Override
        public void deserializeAndSet(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Object o) throws IOException, JsonProcessingException {
            this.set(o, this.deserialize(jsonParser, deserializationContext));
        }
        
        @Override
        public <A extends Annotation> A getAnnotation(final Class<A> clazz) {
            return this._annotated.getAnnotation(clazz);
        }
        
        @Override
        public AnnotatedMember getMember() {
            return this._annotated;
        }
        
        @Override
        public final void set(final Object obj, final Object o) throws IOException {
            try {
                this._setter.invoke(obj, o);
            }
            catch (Exception ex) {
                this._throwAsIOE(ex, o);
            }
        }
        
        @Override
        public MethodProperty withValueDeserializer(final JsonDeserializer<Object> jsonDeserializer) {
            return new MethodProperty(this, jsonDeserializer);
        }
    }
    
    protected static final class NullProvider
    {
        private final boolean _isPrimitive;
        private final Object _nullValue;
        private final Class<?> _rawType;
        
        protected NullProvider(final JavaType javaType, final Object nullValue) {
            super();
            this._nullValue = nullValue;
            this._isPrimitive = javaType.isPrimitive();
            this._rawType = javaType.getRawClass();
        }
        
        public Object nullValue(final DeserializationContext deserializationContext) throws JsonProcessingException {
            if (this._isPrimitive && deserializationContext.isEnabled(DeserializationConfig.Feature.FAIL_ON_NULL_FOR_PRIMITIVES)) {
                throw deserializationContext.mappingException("Can not map JSON null into type " + this._rawType.getName() + " (set DeserializationConfig.Feature.FAIL_ON_NULL_FOR_PRIMITIVES to 'false' to allow)");
            }
            return this._nullValue;
        }
    }
    
    public static final class SetterlessProperty extends SettableBeanProperty
    {
        protected final AnnotatedMethod _annotated;
        protected final Method _getter;
        
        protected SetterlessProperty(final SetterlessProperty setterlessProperty, final JsonDeserializer<Object> jsonDeserializer) {
            super(setterlessProperty, jsonDeserializer);
            this._annotated = setterlessProperty._annotated;
            this._getter = setterlessProperty._getter;
        }
        
        public SetterlessProperty(final String s, final JavaType javaType, final TypeDeserializer typeDeserializer, final Annotations annotations, final AnnotatedMethod annotated) {
            super(s, javaType, typeDeserializer, annotations);
            this._annotated = annotated;
            this._getter = annotated.getAnnotated();
        }
        
        @Override
        public final void deserializeAndSet(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Object obj) throws IOException, JsonProcessingException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
                return;
            }
            Object invoke;
            try {
                invoke = this._getter.invoke(obj, new Object[0]);
                if (invoke == null) {
                    throw new JsonMappingException("Problem deserializing 'setterless' property '" + this.getName() + "': get method returned null");
                }
            }
            catch (Exception ex) {
                this._throwAsIOE(ex);
                return;
            }
            this._valueDeserializer.deserialize(jsonParser, deserializationContext, invoke);
        }
        
        @Override
        public <A extends Annotation> A getAnnotation(final Class<A> clazz) {
            return this._annotated.getAnnotation(clazz);
        }
        
        @Override
        public AnnotatedMember getMember() {
            return this._annotated;
        }
        
        @Override
        public final void set(final Object o, final Object o2) throws IOException {
            throw new UnsupportedOperationException("Should never call 'set' on setterless property");
        }
        
        @Override
        public SetterlessProperty withValueDeserializer(final JsonDeserializer<Object> jsonDeserializer) {
            return new SetterlessProperty(this, jsonDeserializer);
        }
    }
}
