package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.util.*;
import com.flurry.org.codehaus.jackson.map.deser.impl.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.map.deser.std.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.annotate.*;
import java.lang.reflect.*;

@JsonCachable
public class BeanDeserializer extends StdDeserializer<Object> implements ResolvableDeserializer
{
    protected SettableAnyProperty _anySetter;
    protected final Map<String, SettableBeanProperty> _backRefs;
    protected final BeanPropertyMap _beanProperties;
    protected final JavaType _beanType;
    protected JsonDeserializer<Object> _delegateDeserializer;
    protected ExternalTypeHandler _externalTypeIdHandler;
    protected final AnnotatedClass _forClass;
    protected final HashSet<String> _ignorableProps;
    protected final boolean _ignoreAllUnknown;
    protected final ValueInjector[] _injectables;
    protected boolean _nonStandardCreation;
    protected final BeanProperty _property;
    protected final PropertyBasedCreator _propertyBasedCreator;
    protected HashMap<ClassKey, JsonDeserializer<Object>> _subDeserializers;
    protected UnwrappedPropertyHandler _unwrappedPropertyHandler;
    protected final ValueInstantiator _valueInstantiator;
    
    public BeanDeserializer(final BeanDescription beanDescription, final BeanProperty beanProperty, final ValueInstantiator valueInstantiator, final BeanPropertyMap beanPropertyMap, final Map<String, SettableBeanProperty> map, final HashSet<String> set, final boolean b, final SettableAnyProperty settableAnyProperty, final List<ValueInjector> list) {
        this(beanDescription.getClassInfo(), beanDescription.getType(), beanProperty, valueInstantiator, beanPropertyMap, map, set, b, settableAnyProperty, list);
    }
    
    protected BeanDeserializer(final BeanDeserializer beanDeserializer) {
        this(beanDeserializer, beanDeserializer._ignoreAllUnknown);
    }
    
    protected BeanDeserializer(final BeanDeserializer beanDeserializer, final boolean ignoreAllUnknown) {
        super(beanDeserializer._beanType);
        this._forClass = beanDeserializer._forClass;
        this._beanType = beanDeserializer._beanType;
        this._property = beanDeserializer._property;
        this._valueInstantiator = beanDeserializer._valueInstantiator;
        this._delegateDeserializer = beanDeserializer._delegateDeserializer;
        this._propertyBasedCreator = beanDeserializer._propertyBasedCreator;
        this._beanProperties = beanDeserializer._beanProperties;
        this._backRefs = beanDeserializer._backRefs;
        this._ignorableProps = beanDeserializer._ignorableProps;
        this._ignoreAllUnknown = ignoreAllUnknown;
        this._anySetter = beanDeserializer._anySetter;
        this._injectables = beanDeserializer._injectables;
        this._nonStandardCreation = beanDeserializer._nonStandardCreation;
        this._unwrappedPropertyHandler = beanDeserializer._unwrappedPropertyHandler;
    }
    
    protected BeanDeserializer(final AnnotatedClass forClass, final JavaType beanType, final BeanProperty property, final ValueInstantiator valueInstantiator, final BeanPropertyMap beanProperties, final Map<String, SettableBeanProperty> backRefs, final HashSet<String> ignorableProps, final boolean ignoreAllUnknown, final SettableAnyProperty anySetter, final List<ValueInjector> list) {
        super(beanType);
        this._forClass = forClass;
        this._beanType = beanType;
        this._property = property;
        this._valueInstantiator = valueInstantiator;
        if (valueInstantiator.canCreateFromObjectWith()) {
            this._propertyBasedCreator = new PropertyBasedCreator(valueInstantiator);
        }
        else {
            this._propertyBasedCreator = null;
        }
        this._beanProperties = beanProperties;
        this._backRefs = backRefs;
        this._ignorableProps = ignorableProps;
        this._ignoreAllUnknown = ignoreAllUnknown;
        this._anySetter = anySetter;
        ValueInjector[] injectables;
        if (list == null || list.isEmpty()) {
            injectables = null;
        }
        else {
            injectables = list.toArray(new ValueInjector[list.size()]);
        }
        this._injectables = injectables;
        this._nonStandardCreation = (valueInstantiator.canCreateUsingDelegate() || this._propertyBasedCreator != null || !valueInstantiator.canCreateUsingDefault() || this._unwrappedPropertyHandler != null);
    }
    
    public BeanDeserializer(final AnnotatedClass annotatedClass, final JavaType javaType, final BeanProperty beanProperty, final CreatorCollector creatorCollector, final BeanPropertyMap beanPropertyMap, final Map<String, SettableBeanProperty> map, final HashSet<String> set, final boolean b, final SettableAnyProperty settableAnyProperty) {
        this(annotatedClass, javaType, beanProperty, creatorCollector.constructValueInstantiator(null), beanPropertyMap, map, set, b, settableAnyProperty, null);
    }
    
    private final void _handleUnknown(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Object o, final String o2) throws IOException, JsonProcessingException {
        if (this._ignorableProps != null && this._ignorableProps.contains(o2)) {
            jsonParser.skipChildren();
            return;
        }
        if (this._anySetter != null) {
            try {
                this._anySetter.deserializeAndSet(jsonParser, deserializationContext, o, o2);
                return;
            }
            catch (Exception ex) {
                this.wrapAndThrow(ex, o, o2, deserializationContext);
                return;
            }
        }
        this.handleUnknownProperty(jsonParser, deserializationContext, o, o2);
    }
    
    protected final Object _deserializeUsingPropertyBased(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final PropertyBasedCreator propertyBasedCreator = this._propertyBasedCreator;
        final PropertyValueBuffer startBuilding = propertyBasedCreator.startBuilding(jsonParser, deserializationContext);
        TokenBuffer tokenBuffer = null;
        for (JsonToken jsonToken = jsonParser.getCurrentToken(); jsonToken == JsonToken.FIELD_NAME; jsonToken = jsonParser.nextToken()) {
            final String currentName = jsonParser.getCurrentName();
            jsonParser.nextToken();
            final SettableBeanProperty creatorProperty = propertyBasedCreator.findCreatorProperty(currentName);
            if (creatorProperty != null) {
                if (startBuilding.assignParameter(creatorProperty.getPropertyIndex(), creatorProperty.deserialize(jsonParser, deserializationContext))) {
                    jsonParser.nextToken();
                    Object o = null;
                    Label_0148: {
                        try {
                            o = propertyBasedCreator.build(startBuilding);
                            if (o.getClass() != this._beanType.getRawClass()) {
                                return this.handlePolymorphic(jsonParser, deserializationContext, o, tokenBuffer);
                            }
                            break Label_0148;
                        }
                        catch (Exception ex) {
                            this.wrapAndThrow(ex, this._beanType.getRawClass(), currentName, deserializationContext);
                        }
                        continue;
                    }
                    if (tokenBuffer != null) {
                        o = this.handleUnknownProperties(deserializationContext, o, tokenBuffer);
                    }
                    return this.deserialize(jsonParser, deserializationContext, o);
                }
            }
            else {
                final SettableBeanProperty find = this._beanProperties.find(currentName);
                if (find != null) {
                    startBuilding.bufferProperty(find, find.deserialize(jsonParser, deserializationContext));
                }
                else if (this._ignorableProps != null && this._ignorableProps.contains(currentName)) {
                    jsonParser.skipChildren();
                }
                else if (this._anySetter != null) {
                    startBuilding.bufferAnyProperty(this._anySetter, currentName, this._anySetter.deserialize(jsonParser, deserializationContext));
                }
                else {
                    if (tokenBuffer == null) {
                        tokenBuffer = new TokenBuffer(jsonParser.getCodec());
                    }
                    tokenBuffer.writeFieldName(currentName);
                    tokenBuffer.copyCurrentStructure(jsonParser);
                }
            }
        }
        Object build;
        try {
            build = propertyBasedCreator.build(startBuilding);
            if (tokenBuffer == null) {
                return build;
            }
            if (build.getClass() != this._beanType.getRawClass()) {
                return this.handlePolymorphic(null, deserializationContext, build, tokenBuffer);
            }
        }
        catch (Exception ex2) {
            this.wrapInstantiationProblem(ex2, deserializationContext);
            return null;
        }
        return this.handleUnknownProperties(deserializationContext, build, tokenBuffer);
    }
    
    protected JsonDeserializer<Object> _findSubclassDeserializer(final DeserializationContext deserializationContext, final Object o, final TokenBuffer tokenBuffer) throws IOException, JsonProcessingException {
        JsonDeserializer<Object> valueDeserializer;
        synchronized (this) {
            if (this._subDeserializers == null) {
                valueDeserializer = null;
            }
            else {
                valueDeserializer = this._subDeserializers.get(new ClassKey(o.getClass()));
            }
            // monitorexit(this)
            if (valueDeserializer != null) {
                return valueDeserializer;
            }
        }
        final DeserializerProvider deserializerProvider = deserializationContext.getDeserializerProvider();
        if (deserializerProvider != null) {
            valueDeserializer = deserializerProvider.findValueDeserializer(deserializationContext.getConfig(), deserializationContext.constructType(o.getClass()), this._property);
            if (valueDeserializer != null) {
                synchronized (this) {
                    if (this._subDeserializers == null) {
                        this._subDeserializers = new HashMap<ClassKey, JsonDeserializer<Object>>();
                    }
                    this._subDeserializers.put(new ClassKey(o.getClass()), valueDeserializer);
                }
            }
        }
        return valueDeserializer;
    }
    
    protected SettableBeanProperty _resolveInnerClassValuedProperty(final DeserializationConfig deserializationConfig, final SettableBeanProperty settableBeanProperty) {
        final JsonDeserializer<Object> valueDeserializer = settableBeanProperty.getValueDeserializer();
        if (valueDeserializer instanceof BeanDeserializer && !((BeanDeserializer)valueDeserializer).getValueInstantiator().canCreateUsingDefault()) {
            final Class<?> rawClass = settableBeanProperty.getType().getRawClass();
            final Class<?> outerClass = ClassUtil.getOuterClass(rawClass);
            if (outerClass != null && outerClass == this._beanType.getRawClass()) {
                for (final Constructor constructor : rawClass.getConstructors()) {
                    final Class[] parameterTypes = constructor.getParameterTypes();
                    if (parameterTypes.length == 1 && parameterTypes[0] == outerClass) {
                        if (deserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
                            ClassUtil.checkAndFixAccess(constructor);
                        }
                        return new SettableBeanProperty.InnerClassProperty(settableBeanProperty, constructor);
                    }
                }
            }
        }
        return settableBeanProperty;
    }
    
    protected SettableBeanProperty _resolveManagedReferenceProperty(final DeserializationConfig deserializationConfig, final SettableBeanProperty settableBeanProperty) {
        final String managedReferenceName = settableBeanProperty.getManagedReferenceName();
        if (managedReferenceName == null) {
            return settableBeanProperty;
        }
        final JsonDeserializer<Object> valueDeserializer = settableBeanProperty.getValueDeserializer();
        boolean b = false;
        SettableBeanProperty settableBeanProperty2;
        if (valueDeserializer instanceof BeanDeserializer) {
            settableBeanProperty2 = ((BeanDeserializer)valueDeserializer).findBackReference(managedReferenceName);
        }
        else if (valueDeserializer instanceof ContainerDeserializerBase) {
            final JsonDeserializer<Object> contentDeserializer = ((ContainerDeserializerBase<Object>)valueDeserializer).getContentDeserializer();
            if (!(contentDeserializer instanceof BeanDeserializer)) {
                throw new IllegalArgumentException("Can not handle managed/back reference '" + managedReferenceName + "': value deserializer is of type ContainerDeserializerBase, but content type is not handled by a BeanDeserializer " + " (instead it's of type " + contentDeserializer.getClass().getName() + ")");
            }
            settableBeanProperty2 = ((BeanDeserializer)contentDeserializer).findBackReference(managedReferenceName);
            b = true;
        }
        else {
            if (valueDeserializer instanceof AbstractDeserializer) {
                throw new IllegalArgumentException("Can not handle managed/back reference for abstract types (property " + this._beanType.getRawClass().getName() + "." + settableBeanProperty.getName() + ")");
            }
            throw new IllegalArgumentException("Can not handle managed/back reference '" + managedReferenceName + "': type for value deserializer is not BeanDeserializer or ContainerDeserializerBase, but " + ((ContainerDeserializerBase<Object>)valueDeserializer).getClass().getName());
        }
        if (settableBeanProperty2 == null) {
            throw new IllegalArgumentException("Can not handle managed/back reference '" + managedReferenceName + "': no back reference property found from type " + settableBeanProperty.getType());
        }
        final JavaType beanType = this._beanType;
        final JavaType type = settableBeanProperty2.getType();
        if (!type.getRawClass().isAssignableFrom(beanType.getRawClass())) {
            throw new IllegalArgumentException("Can not handle managed/back reference '" + managedReferenceName + "': back reference type (" + type.getRawClass().getName() + ") not compatible with managed type (" + beanType.getRawClass().getName() + ")");
        }
        return new SettableBeanProperty.ManagedReferenceProperty(managedReferenceName, settableBeanProperty, settableBeanProperty2, this._forClass.getAnnotations(), b);
    }
    
    protected SettableBeanProperty _resolveUnwrappedProperty(final DeserializationConfig deserializationConfig, final SettableBeanProperty settableBeanProperty) {
        final AnnotatedMember member = settableBeanProperty.getMember();
        if (member != null && deserializationConfig.getAnnotationIntrospector().shouldUnwrapProperty(member) == Boolean.TRUE) {
            final JsonDeserializer<Object> valueDeserializer = settableBeanProperty.getValueDeserializer();
            final JsonDeserializer<Object> unwrappingDeserializer = valueDeserializer.unwrappingDeserializer();
            if (unwrappingDeserializer != valueDeserializer && unwrappingDeserializer != null) {
                return settableBeanProperty.withValueDeserializer(unwrappingDeserializer);
            }
        }
        return null;
    }
    
    @Override
    public final Object deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.START_OBJECT) {
            jsonParser.nextToken();
            return this.deserializeFromObject(jsonParser, deserializationContext);
        }
        switch (currentToken) {
            default: {
                throw deserializationContext.mappingException(this.getBeanClass());
            }
            case VALUE_STRING: {
                return this.deserializeFromString(jsonParser, deserializationContext);
            }
            case VALUE_NUMBER_INT: {
                return this.deserializeFromNumber(jsonParser, deserializationContext);
            }
            case VALUE_NUMBER_FLOAT: {
                return this.deserializeFromDouble(jsonParser, deserializationContext);
            }
            case VALUE_EMBEDDED_OBJECT: {
                return jsonParser.getEmbeddedObject();
            }
            case VALUE_TRUE:
            case VALUE_FALSE: {
                return this.deserializeFromBoolean(jsonParser, deserializationContext);
            }
            case START_ARRAY: {
                return this.deserializeFromArray(jsonParser, deserializationContext);
            }
            case FIELD_NAME:
            case END_OBJECT: {
                return this.deserializeFromObject(jsonParser, deserializationContext);
            }
        }
    }
    
    @Override
    public Object deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Object o) throws IOException, JsonProcessingException {
        if (this._injectables != null) {
            this.injectValues(deserializationContext, o);
        }
        if (this._unwrappedPropertyHandler != null) {
            return this.deserializeWithUnwrapped(jsonParser, deserializationContext, o);
        }
        if (this._externalTypeIdHandler != null) {
            return this.deserializeWithExternalTypeId(jsonParser, deserializationContext, o);
        }
        JsonToken jsonToken = jsonParser.getCurrentToken();
        if (jsonToken == JsonToken.START_OBJECT) {
            jsonToken = jsonParser.nextToken();
        }
    Label_0106_Outer:
        while (jsonToken == JsonToken.FIELD_NAME) {
            final String currentName = jsonParser.getCurrentName();
            jsonParser.nextToken();
            final SettableBeanProperty find = this._beanProperties.find(currentName);
            while (true) {
                Label_0130: {
                    if (find == null) {
                        break Label_0130;
                    }
                    try {
                        find.deserializeAndSet(jsonParser, deserializationContext, o);
                        jsonToken = jsonParser.nextToken();
                        continue Label_0106_Outer;
                    }
                    catch (Exception ex) {
                        this.wrapAndThrow(ex, o, currentName, deserializationContext);
                        continue;
                    }
                }
                if (this._ignorableProps != null && this._ignorableProps.contains(currentName)) {
                    jsonParser.skipChildren();
                    continue;
                }
                if (this._anySetter != null) {
                    this._anySetter.deserializeAndSet(jsonParser, deserializationContext, o, currentName);
                    continue;
                }
                this.handleUnknownProperty(jsonParser, deserializationContext, o, currentName);
                continue;
            }
        }
        return o;
    }
    
    public Object deserializeFromArray(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (this._delegateDeserializer != null) {
            try {
                final Object usingDelegate = this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
                if (this._injectables != null) {
                    this.injectValues(deserializationContext, usingDelegate);
                }
                return usingDelegate;
            }
            catch (Exception ex) {
                this.wrapInstantiationProblem(ex, deserializationContext);
            }
        }
        throw deserializationContext.mappingException(this.getBeanClass());
    }
    
    public Object deserializeFromBoolean(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (this._delegateDeserializer != null && !this._valueInstantiator.canCreateFromBoolean()) {
            final Object usingDelegate = this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
            if (this._injectables != null) {
                this.injectValues(deserializationContext, usingDelegate);
            }
            return usingDelegate;
        }
        return this._valueInstantiator.createFromBoolean(jsonParser.getCurrentToken() == JsonToken.VALUE_TRUE);
    }
    
    public Object deserializeFromDouble(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        switch (jsonParser.getNumberType()) {
            default: {
                if (this._delegateDeserializer != null) {
                    return this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
                }
                throw deserializationContext.instantiationException(this.getBeanClass(), "no suitable creator method found to deserialize from JSON floating-point number");
            }
            case FLOAT:
            case DOUBLE: {
                if (this._delegateDeserializer != null && !this._valueInstantiator.canCreateFromDouble()) {
                    final Object usingDelegate = this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
                    if (this._injectables != null) {
                        this.injectValues(deserializationContext, usingDelegate);
                    }
                    return usingDelegate;
                }
                return this._valueInstantiator.createFromDouble(jsonParser.getDoubleValue());
            }
        }
    }
    
    public Object deserializeFromNumber(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        switch (jsonParser.getNumberType()) {
            default: {
                if (this._delegateDeserializer != null) {
                    final Object usingDelegate = this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
                    if (this._injectables != null) {
                        this.injectValues(deserializationContext, usingDelegate);
                    }
                    return usingDelegate;
                }
                throw deserializationContext.instantiationException(this.getBeanClass(), "no suitable creator method found to deserialize from JSON integer number");
            }
            case INT: {
                if (this._delegateDeserializer != null && !this._valueInstantiator.canCreateFromInt()) {
                    final Object usingDelegate2 = this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
                    if (this._injectables != null) {
                        this.injectValues(deserializationContext, usingDelegate2);
                    }
                    return usingDelegate2;
                }
                return this._valueInstantiator.createFromInt(jsonParser.getIntValue());
            }
            case LONG: {
                if (this._delegateDeserializer != null && !this._valueInstantiator.canCreateFromInt()) {
                    final Object usingDelegate3 = this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
                    if (this._injectables != null) {
                        this.injectValues(deserializationContext, usingDelegate3);
                    }
                    return usingDelegate3;
                }
                return this._valueInstantiator.createFromLong(jsonParser.getLongValue());
            }
        }
    }
    
    public Object deserializeFromObject(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (!this._nonStandardCreation) {
            final Object usingDefault = this._valueInstantiator.createUsingDefault();
            if (this._injectables != null) {
                this.injectValues(deserializationContext, usingDefault);
            }
        Label_0108_Outer:
            while (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                final String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                final SettableBeanProperty find = this._beanProperties.find(currentName);
                while (true) {
                    Label_0131: {
                        if (find == null) {
                            break Label_0131;
                        }
                        try {
                            find.deserializeAndSet(jsonParser, deserializationContext, usingDefault);
                            jsonParser.nextToken();
                            continue Label_0108_Outer;
                        }
                        catch (Exception ex) {
                            this.wrapAndThrow(ex, usingDefault, currentName, deserializationContext);
                            continue;
                        }
                    }
                    this._handleUnknown(jsonParser, deserializationContext, usingDefault, currentName);
                    continue;
                }
            }
            return usingDefault;
        }
        if (this._unwrappedPropertyHandler != null) {
            return this.deserializeWithUnwrapped(jsonParser, deserializationContext);
        }
        if (this._externalTypeIdHandler != null) {
            return this.deserializeWithExternalTypeId(jsonParser, deserializationContext);
        }
        return this.deserializeFromObjectUsingNonDefault(jsonParser, deserializationContext);
    }
    
    protected Object deserializeFromObjectUsingNonDefault(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (this._delegateDeserializer != null) {
            return this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
        }
        if (this._propertyBasedCreator != null) {
            return this._deserializeUsingPropertyBased(jsonParser, deserializationContext);
        }
        if (this._beanType.isAbstract()) {
            throw JsonMappingException.from(jsonParser, "Can not instantiate abstract type " + this._beanType + " (need to add/enable type information?)");
        }
        throw JsonMappingException.from(jsonParser, "No suitable constructor found for type " + this._beanType + ": can not instantiate from JSON object (need to add/enable type information?)");
    }
    
    public Object deserializeFromString(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (this._delegateDeserializer != null && !this._valueInstantiator.canCreateFromString()) {
            final Object usingDelegate = this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
            if (this._injectables != null) {
                this.injectValues(deserializationContext, usingDelegate);
            }
            return usingDelegate;
        }
        return this._valueInstantiator.createFromString(jsonParser.getText());
    }
    
    protected Object deserializeUsingPropertyBasedWithExternalTypeId(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final ExternalTypeHandler start = this._externalTypeIdHandler.start();
        final PropertyBasedCreator propertyBasedCreator = this._propertyBasedCreator;
        final PropertyValueBuffer startBuilding = propertyBasedCreator.startBuilding(jsonParser, deserializationContext);
        final TokenBuffer tokenBuffer = new TokenBuffer(jsonParser.getCodec());
        tokenBuffer.writeStartObject();
        for (JsonToken jsonToken = jsonParser.getCurrentToken(); jsonToken == JsonToken.FIELD_NAME; jsonToken = jsonParser.nextToken()) {
            final String currentName = jsonParser.getCurrentName();
            jsonParser.nextToken();
            final SettableBeanProperty creatorProperty = propertyBasedCreator.findCreatorProperty(currentName);
            if (creatorProperty != null) {
                if (startBuilding.assignParameter(creatorProperty.getPropertyIndex(), creatorProperty.deserialize(jsonParser, deserializationContext))) {
                    JsonToken jsonToken2 = jsonParser.nextToken();
                    Object build = null;
                    Label_0174: {
                        try {
                            build = propertyBasedCreator.build(startBuilding);
                            while (jsonToken2 == JsonToken.FIELD_NAME) {
                                jsonParser.nextToken();
                                tokenBuffer.copyCurrentStructure(jsonParser);
                                jsonToken2 = jsonParser.nextToken();
                            }
                            break Label_0174;
                        }
                        catch (Exception ex) {
                            this.wrapAndThrow(ex, this._beanType.getRawClass(), currentName, deserializationContext);
                        }
                        continue;
                    }
                    if (build.getClass() != this._beanType.getRawClass()) {
                        throw deserializationContext.mappingException("Can not create polymorphic instances with unwrapped values");
                    }
                    return start.complete(jsonParser, deserializationContext, build);
                }
            }
            else {
                final SettableBeanProperty find = this._beanProperties.find(currentName);
                if (find != null) {
                    startBuilding.bufferProperty(find, find.deserialize(jsonParser, deserializationContext));
                }
                else if (!start.handleToken(jsonParser, deserializationContext, currentName, null)) {
                    if (this._ignorableProps != null && this._ignorableProps.contains(currentName)) {
                        jsonParser.skipChildren();
                    }
                    else if (this._anySetter != null) {
                        startBuilding.bufferAnyProperty(this._anySetter, currentName, this._anySetter.deserialize(jsonParser, deserializationContext));
                    }
                }
            }
        }
        try {
            return start.complete(jsonParser, deserializationContext, propertyBasedCreator.build(startBuilding));
        }
        catch (Exception ex2) {
            this.wrapInstantiationProblem(ex2, deserializationContext);
            return null;
        }
    }
    
    protected Object deserializeUsingPropertyBasedWithUnwrapped(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final PropertyBasedCreator propertyBasedCreator = this._propertyBasedCreator;
        final PropertyValueBuffer startBuilding = propertyBasedCreator.startBuilding(jsonParser, deserializationContext);
        final TokenBuffer tokenBuffer = new TokenBuffer(jsonParser.getCodec());
        tokenBuffer.writeStartObject();
        for (JsonToken jsonToken = jsonParser.getCurrentToken(); jsonToken == JsonToken.FIELD_NAME; jsonToken = jsonParser.nextToken()) {
            final String currentName = jsonParser.getCurrentName();
            jsonParser.nextToken();
            final SettableBeanProperty creatorProperty = propertyBasedCreator.findCreatorProperty(currentName);
            if (creatorProperty != null) {
                if (startBuilding.assignParameter(creatorProperty.getPropertyIndex(), creatorProperty.deserialize(jsonParser, deserializationContext))) {
                    JsonToken jsonToken2 = jsonParser.nextToken();
                    Object build = null;
                    Label_0162: {
                        try {
                            build = propertyBasedCreator.build(startBuilding);
                            while (jsonToken2 == JsonToken.FIELD_NAME) {
                                jsonParser.nextToken();
                                tokenBuffer.copyCurrentStructure(jsonParser);
                                jsonToken2 = jsonParser.nextToken();
                            }
                            break Label_0162;
                        }
                        catch (Exception ex) {
                            this.wrapAndThrow(ex, this._beanType.getRawClass(), currentName, deserializationContext);
                        }
                        continue;
                    }
                    tokenBuffer.writeEndObject();
                    if (build.getClass() != this._beanType.getRawClass()) {
                        throw deserializationContext.mappingException("Can not create polymorphic instances with unwrapped values");
                    }
                    return this._unwrappedPropertyHandler.processUnwrapped(jsonParser, deserializationContext, build, tokenBuffer);
                }
            }
            else {
                final SettableBeanProperty find = this._beanProperties.find(currentName);
                if (find != null) {
                    startBuilding.bufferProperty(find, find.deserialize(jsonParser, deserializationContext));
                }
                else if (this._ignorableProps != null && this._ignorableProps.contains(currentName)) {
                    jsonParser.skipChildren();
                }
                else {
                    tokenBuffer.writeFieldName(currentName);
                    tokenBuffer.copyCurrentStructure(jsonParser);
                    if (this._anySetter != null) {
                        startBuilding.bufferAnyProperty(this._anySetter, currentName, this._anySetter.deserialize(jsonParser, deserializationContext));
                    }
                }
            }
        }
        try {
            return this._unwrappedPropertyHandler.processUnwrapped(jsonParser, deserializationContext, propertyBasedCreator.build(startBuilding), tokenBuffer);
        }
        catch (Exception ex2) {
            this.wrapInstantiationProblem(ex2, deserializationContext);
            return null;
        }
    }
    
    protected Object deserializeWithExternalTypeId(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (this._propertyBasedCreator != null) {
            return this.deserializeUsingPropertyBasedWithExternalTypeId(jsonParser, deserializationContext);
        }
        return this.deserializeWithExternalTypeId(jsonParser, deserializationContext, this._valueInstantiator.createUsingDefault());
    }
    
    protected Object deserializeWithExternalTypeId(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Object o) throws IOException, JsonProcessingException {
        final ExternalTypeHandler start = this._externalTypeIdHandler.start();
    Label_0054_Outer:
        while (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
            final String currentName = jsonParser.getCurrentName();
            jsonParser.nextToken();
            final SettableBeanProperty find = this._beanProperties.find(currentName);
            while (true) {
                Label_0077: {
                    if (find == null) {
                        break Label_0077;
                    }
                    try {
                        find.deserializeAndSet(jsonParser, deserializationContext, o);
                        jsonParser.nextToken();
                        continue Label_0054_Outer;
                    }
                    catch (Exception ex) {
                        this.wrapAndThrow(ex, o, currentName, deserializationContext);
                        continue;
                    }
                }
                if (this._ignorableProps != null && this._ignorableProps.contains(currentName)) {
                    jsonParser.skipChildren();
                    continue;
                }
                if (start.handleToken(jsonParser, deserializationContext, currentName, o)) {
                    continue;
                }
                if (this._anySetter != null) {
                    try {
                        this._anySetter.deserializeAndSet(jsonParser, deserializationContext, o, currentName);
                        continue;
                    }
                    catch (Exception ex2) {
                        this.wrapAndThrow(ex2, o, currentName, deserializationContext);
                        continue;
                    }
                    continue;
                }
                this.handleUnknownProperty(jsonParser, deserializationContext, o, currentName);
                continue;
            }
        }
        return start.complete(jsonParser, deserializationContext, o);
    }
    
    @Override
    public Object deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return typeDeserializer.deserializeTypedFromObject(jsonParser, deserializationContext);
    }
    
    protected Object deserializeWithUnwrapped(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (this._delegateDeserializer != null) {
            return this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
        }
        if (this._propertyBasedCreator != null) {
            return this.deserializeUsingPropertyBasedWithUnwrapped(jsonParser, deserializationContext);
        }
        final TokenBuffer tokenBuffer = new TokenBuffer(jsonParser.getCodec());
        tokenBuffer.writeStartObject();
        final Object usingDefault = this._valueInstantiator.createUsingDefault();
        if (this._injectables != null) {
            this.injectValues(deserializationContext, usingDefault);
        }
    Label_0123_Outer:
        while (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
            final String currentName = jsonParser.getCurrentName();
            jsonParser.nextToken();
            final SettableBeanProperty find = this._beanProperties.find(currentName);
            while (true) {
                Label_0147: {
                    if (find == null) {
                        break Label_0147;
                    }
                    try {
                        find.deserializeAndSet(jsonParser, deserializationContext, usingDefault);
                        jsonParser.nextToken();
                        continue Label_0123_Outer;
                    }
                    catch (Exception ex) {
                        this.wrapAndThrow(ex, usingDefault, currentName, deserializationContext);
                        continue;
                    }
                }
                if (this._ignorableProps != null && this._ignorableProps.contains(currentName)) {
                    jsonParser.skipChildren();
                    continue;
                }
                tokenBuffer.writeFieldName(currentName);
                tokenBuffer.copyCurrentStructure(jsonParser);
                if (this._anySetter != null) {
                    try {
                        this._anySetter.deserializeAndSet(jsonParser, deserializationContext, usingDefault, currentName);
                        continue;
                    }
                    catch (Exception ex2) {
                        this.wrapAndThrow(ex2, usingDefault, currentName, deserializationContext);
                        continue;
                    }
                    continue;
                }
                continue;
            }
        }
        tokenBuffer.writeEndObject();
        this._unwrappedPropertyHandler.processUnwrapped(jsonParser, deserializationContext, usingDefault, tokenBuffer);
        return usingDefault;
    }
    
    protected Object deserializeWithUnwrapped(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Object o) throws IOException, JsonProcessingException {
        JsonToken jsonToken = jsonParser.getCurrentToken();
        if (jsonToken == JsonToken.START_OBJECT) {
            jsonToken = jsonParser.nextToken();
        }
        final TokenBuffer tokenBuffer = new TokenBuffer(jsonParser.getCodec());
        tokenBuffer.writeStartObject();
    Label_0081_Outer:
        while (jsonToken == JsonToken.FIELD_NAME) {
            final String currentName = jsonParser.getCurrentName();
            final SettableBeanProperty find = this._beanProperties.find(currentName);
            jsonParser.nextToken();
            while (true) {
                Label_0105: {
                    if (find == null) {
                        break Label_0105;
                    }
                    try {
                        find.deserializeAndSet(jsonParser, deserializationContext, o);
                        jsonToken = jsonParser.nextToken();
                        continue Label_0081_Outer;
                    }
                    catch (Exception ex) {
                        this.wrapAndThrow(ex, o, currentName, deserializationContext);
                        continue;
                    }
                }
                if (this._ignorableProps != null && this._ignorableProps.contains(currentName)) {
                    jsonParser.skipChildren();
                    continue;
                }
                tokenBuffer.writeFieldName(currentName);
                tokenBuffer.copyCurrentStructure(jsonParser);
                if (this._anySetter != null) {
                    this._anySetter.deserializeAndSet(jsonParser, deserializationContext, o, currentName);
                    continue;
                }
                continue;
            }
        }
        tokenBuffer.writeEndObject();
        this._unwrappedPropertyHandler.processUnwrapped(jsonParser, deserializationContext, o, tokenBuffer);
        return o;
    }
    
    public SettableBeanProperty findBackReference(final String s) {
        if (this._backRefs == null) {
            return null;
        }
        return this._backRefs.get(s);
    }
    
    public final Class<?> getBeanClass() {
        return this._beanType.getRawClass();
    }
    
    public int getPropertyCount() {
        return this._beanProperties.size();
    }
    
    public ValueInstantiator getValueInstantiator() {
        return this._valueInstantiator;
    }
    
    @Override
    public JavaType getValueType() {
        return this._beanType;
    }
    
    protected Object handlePolymorphic(final JsonParser jsonParser, final DeserializationContext deserializationContext, Object o, final TokenBuffer tokenBuffer) throws IOException, JsonProcessingException {
        final JsonDeserializer<Object> findSubclassDeserializer = this._findSubclassDeserializer(deserializationContext, o, tokenBuffer);
        if (findSubclassDeserializer != null) {
            if (tokenBuffer != null) {
                tokenBuffer.writeEndObject();
                final JsonParser parser = tokenBuffer.asParser();
                parser.nextToken();
                o = findSubclassDeserializer.deserialize(parser, deserializationContext, o);
            }
            if (jsonParser != null) {
                o = findSubclassDeserializer.deserialize(jsonParser, deserializationContext, o);
            }
            return o;
        }
        if (tokenBuffer != null) {
            o = this.handleUnknownProperties(deserializationContext, o, tokenBuffer);
        }
        if (jsonParser != null) {
            o = this.deserialize(jsonParser, deserializationContext, o);
        }
        return o;
    }
    
    protected Object handleUnknownProperties(final DeserializationContext deserializationContext, final Object o, final TokenBuffer tokenBuffer) throws IOException, JsonProcessingException {
        tokenBuffer.writeEndObject();
        final JsonParser parser = tokenBuffer.asParser();
        while (parser.nextToken() != JsonToken.END_OBJECT) {
            final String currentName = parser.getCurrentName();
            parser.nextToken();
            this.handleUnknownProperty(parser, deserializationContext, o, currentName);
        }
        return o;
    }
    
    @Override
    protected void handleUnknownProperty(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Object o, final String o2) throws IOException, JsonProcessingException {
        if (this._ignoreAllUnknown || (this._ignorableProps != null && this._ignorableProps.contains(o2))) {
            jsonParser.skipChildren();
            return;
        }
        super.handleUnknownProperty(jsonParser, deserializationContext, o, o2);
    }
    
    public boolean hasProperty(final String s) {
        return this._beanProperties.find(s) != null;
    }
    
    protected void injectValues(final DeserializationContext deserializationContext, final Object o) throws IOException, JsonProcessingException {
        final ValueInjector[] injectables = this._injectables;
        for (int length = injectables.length, i = 0; i < length; ++i) {
            injectables[i].inject(deserializationContext, o);
        }
    }
    
    public Iterator<SettableBeanProperty> properties() {
        if (this._beanProperties == null) {
            throw new IllegalStateException("Can only call before BeanDeserializer has been resolved");
        }
        return this._beanProperties.allProperties();
    }
    
    @Override
    public void resolve(final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider) throws JsonMappingException {
        final Iterator<SettableBeanProperty> allProperties = this._beanProperties.allProperties();
        UnwrappedPropertyHandler unwrappedPropertyHandler = null;
        ExternalTypeHandler.Builder builder = null;
        while (allProperties.hasNext()) {
            SettableBeanProperty withValueDeserializer;
            final SettableBeanProperty settableBeanProperty = withValueDeserializer = allProperties.next();
            if (!withValueDeserializer.hasValueDeserializer()) {
                withValueDeserializer = withValueDeserializer.withValueDeserializer(this.findDeserializer(deserializationConfig, deserializerProvider, withValueDeserializer.getType(), withValueDeserializer));
            }
            SettableBeanProperty resolveManagedReferenceProperty = this._resolveManagedReferenceProperty(deserializationConfig, withValueDeserializer);
            final SettableBeanProperty resolveUnwrappedProperty = this._resolveUnwrappedProperty(deserializationConfig, resolveManagedReferenceProperty);
            if (resolveUnwrappedProperty != null) {
                resolveManagedReferenceProperty = resolveUnwrappedProperty;
                if (unwrappedPropertyHandler == null) {
                    unwrappedPropertyHandler = new UnwrappedPropertyHandler();
                }
                unwrappedPropertyHandler.addProperty(resolveManagedReferenceProperty);
            }
            final SettableBeanProperty resolveInnerClassValuedProperty = this._resolveInnerClassValuedProperty(deserializationConfig, resolveManagedReferenceProperty);
            if (resolveInnerClassValuedProperty != settableBeanProperty) {
                this._beanProperties.replace(resolveInnerClassValuedProperty);
            }
            if (resolveInnerClassValuedProperty.hasValueTypeDeserializer()) {
                final TypeDeserializer valueTypeDeserializer = resolveInnerClassValuedProperty.getValueTypeDeserializer();
                if (valueTypeDeserializer.getTypeInclusion() != JsonTypeInfo.As.EXTERNAL_PROPERTY) {
                    continue;
                }
                if (builder == null) {
                    builder = new ExternalTypeHandler.Builder();
                }
                builder.addExternal(resolveInnerClassValuedProperty, valueTypeDeserializer.getPropertyName());
                this._beanProperties.remove(resolveInnerClassValuedProperty);
            }
        }
        if (this._anySetter != null && !this._anySetter.hasValueDeserializer()) {
            this._anySetter = this._anySetter.withValueDeserializer(this.findDeserializer(deserializationConfig, deserializerProvider, this._anySetter.getType(), this._anySetter.getProperty()));
        }
        if (this._valueInstantiator.canCreateUsingDelegate()) {
            final JavaType delegateType = this._valueInstantiator.getDelegateType();
            if (delegateType == null) {
                throw new IllegalArgumentException("Invalid delegate-creator definition for " + this._beanType + ": value instantiator (" + this._valueInstantiator.getClass().getName() + ") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'");
            }
            this._delegateDeserializer = this.findDeserializer(deserializationConfig, deserializerProvider, delegateType, new BeanProperty.Std(null, delegateType, this._forClass.getAnnotations(), this._valueInstantiator.getDelegateCreator()));
        }
        if (this._propertyBasedCreator != null) {
            for (final SettableBeanProperty settableBeanProperty2 : this._propertyBasedCreator.getCreatorProperties()) {
                if (!settableBeanProperty2.hasValueDeserializer()) {
                    this._propertyBasedCreator.assignDeserializer(settableBeanProperty2, this.findDeserializer(deserializationConfig, deserializerProvider, settableBeanProperty2.getType(), settableBeanProperty2));
                }
            }
        }
        if (builder != null) {
            this._externalTypeIdHandler = builder.build();
            this._nonStandardCreation = true;
        }
        if ((this._unwrappedPropertyHandler = unwrappedPropertyHandler) != null) {
            this._nonStandardCreation = true;
        }
    }
    
    @Override
    public JsonDeserializer<Object> unwrappingDeserializer() {
        if (this.getClass() != BeanDeserializer.class) {
            return this;
        }
        return new BeanDeserializer(this, true);
    }
    
    @Deprecated
    public void wrapAndThrow(final Throwable t, final Object o, final int n) throws IOException {
        this.wrapAndThrow(t, o, n, null);
    }
    
    public void wrapAndThrow(Throwable cause, final Object o, final int n, final DeserializationContext deserializationContext) throws IOException {
        while (cause instanceof InvocationTargetException && cause.getCause() != null) {
            cause = cause.getCause();
        }
        if (cause instanceof Error) {
            throw (Error)cause;
        }
        boolean b;
        if (deserializationContext == null || deserializationContext.isEnabled(DeserializationConfig.Feature.WRAP_EXCEPTIONS)) {
            b = true;
        }
        else {
            b = false;
        }
        if (cause instanceof IOException) {
            if (!b || !(cause instanceof JsonMappingException)) {
                throw (IOException)cause;
            }
        }
        else if (!b && cause instanceof RuntimeException) {
            throw (RuntimeException)cause;
        }
        throw JsonMappingException.wrapWithPath(cause, o, n);
    }
    
    @Deprecated
    public void wrapAndThrow(final Throwable t, final Object o, final String s) throws IOException {
        this.wrapAndThrow(t, o, s, null);
    }
    
    public void wrapAndThrow(Throwable cause, final Object o, final String s, final DeserializationContext deserializationContext) throws IOException {
        while (cause instanceof InvocationTargetException && cause.getCause() != null) {
            cause = cause.getCause();
        }
        if (cause instanceof Error) {
            throw (Error)cause;
        }
        boolean b;
        if (deserializationContext == null || deserializationContext.isEnabled(DeserializationConfig.Feature.WRAP_EXCEPTIONS)) {
            b = true;
        }
        else {
            b = false;
        }
        if (cause instanceof IOException) {
            if (!b || !(cause instanceof JsonMappingException)) {
                throw (IOException)cause;
            }
        }
        else if (!b && cause instanceof RuntimeException) {
            throw (RuntimeException)cause;
        }
        throw JsonMappingException.wrapWithPath(cause, o, s);
    }
    
    protected void wrapInstantiationProblem(Throwable cause, final DeserializationContext deserializationContext) throws IOException {
        while (cause instanceof InvocationTargetException && cause.getCause() != null) {
            cause = cause.getCause();
        }
        if (cause instanceof Error) {
            throw (Error)cause;
        }
        final boolean b = deserializationContext == null || deserializationContext.isEnabled(DeserializationConfig.Feature.WRAP_EXCEPTIONS);
        if (cause instanceof IOException) {
            throw (IOException)cause;
        }
        if (!b && cause instanceof RuntimeException) {
            throw (RuntimeException)cause;
        }
        throw deserializationContext.instantiationException(this._beanType.getRawClass(), cause);
    }
}
