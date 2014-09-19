package com.flurry.org.codehaus.jackson.map.introspect;

import com.flurry.org.codehaus.jackson.map.jsontype.impl.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.ser.std.*;
import com.flurry.org.codehaus.jackson.map.jsontype.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import java.lang.annotation.*;
import com.flurry.org.codehaus.jackson.annotate.*;

public class JacksonAnnotationIntrospector extends AnnotationIntrospector
{
    protected StdTypeResolverBuilder _constructNoTypeResolverBuilder() {
        return StdTypeResolverBuilder.noTypeInfoBuilder();
    }
    
    protected StdTypeResolverBuilder _constructStdTypeResolverBuilder() {
        return new StdTypeResolverBuilder();
    }
    
    protected TypeResolverBuilder<?> _findTypeResolver(final MapperConfig<?> mapperConfig, final Annotated annotated, final JavaType javaType) {
        final JsonTypeInfo jsonTypeInfo = annotated.getAnnotation(JsonTypeInfo.class);
        final JsonTypeResolver jsonTypeResolver = annotated.getAnnotation(JsonTypeResolver.class);
        TypeResolverBuilder typeResolverBuilder;
        if (jsonTypeResolver != null) {
            if (jsonTypeInfo == null) {
                return null;
            }
            typeResolverBuilder = mapperConfig.typeResolverBuilderInstance(annotated, jsonTypeResolver.value());
        }
        else {
            if (jsonTypeInfo == null) {
                return null;
            }
            if (jsonTypeInfo.use() == JsonTypeInfo.Id.NONE) {
                return this._constructNoTypeResolverBuilder();
            }
            typeResolverBuilder = this._constructStdTypeResolverBuilder();
        }
        final JsonTypeIdResolver jsonTypeIdResolver = annotated.getAnnotation(JsonTypeIdResolver.class);
        TypeIdResolver typeIdResolverInstance;
        if (jsonTypeIdResolver == null) {
            typeIdResolverInstance = null;
        }
        else {
            typeIdResolverInstance = mapperConfig.typeIdResolverInstance(annotated, jsonTypeIdResolver.value());
        }
        if (typeIdResolverInstance != null) {
            typeIdResolverInstance.init(javaType);
        }
        final TypeResolverBuilder<TypeResolverBuilder> init = typeResolverBuilder.init(jsonTypeInfo.use(), typeIdResolverInstance);
        JsonTypeInfo.As as = jsonTypeInfo.include();
        if (as == JsonTypeInfo.As.EXTERNAL_PROPERTY && annotated instanceof AnnotatedClass) {
            as = JsonTypeInfo.As.PROPERTY;
        }
        Object o = init.inclusion(as).typeProperty(jsonTypeInfo.property());
        final Class<?> defaultImpl = jsonTypeInfo.defaultImpl();
        if (defaultImpl != JsonTypeInfo.None.class) {
            o = ((TypeResolverBuilder<?>)o).defaultImpl(defaultImpl);
        }
        return (TypeResolverBuilder<?>)o;
    }
    
    protected boolean _isIgnorable(final Annotated annotated) {
        final JsonIgnore jsonIgnore = annotated.getAnnotation(JsonIgnore.class);
        return jsonIgnore != null && jsonIgnore.value();
    }
    
    @Override
    public VisibilityChecker<?> findAutoDetectVisibility(final AnnotatedClass annotatedClass, final VisibilityChecker<?> visibilityChecker) {
        final JsonAutoDetect jsonAutoDetect = annotatedClass.getAnnotation(JsonAutoDetect.class);
        if (jsonAutoDetect == null) {
            return visibilityChecker;
        }
        return (VisibilityChecker<?>)visibilityChecker.with(jsonAutoDetect);
    }
    
    @Override
    public Boolean findCachability(final AnnotatedClass annotatedClass) {
        final JsonCachable jsonCachable = annotatedClass.getAnnotation(JsonCachable.class);
        if (jsonCachable == null) {
            return null;
        }
        if (jsonCachable.value()) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }
    
    @Override
    public Class<? extends JsonDeserializer<?>> findContentDeserializer(final Annotated annotated) {
        final JsonDeserialize jsonDeserialize = annotated.getAnnotation(JsonDeserialize.class);
        if (jsonDeserialize != null) {
            final Class<? extends JsonDeserializer<?>> contentUsing = jsonDeserialize.contentUsing();
            if (contentUsing != JsonDeserializer.None.class) {
                return contentUsing;
            }
        }
        return null;
    }
    
    @Override
    public Class<? extends JsonSerializer<?>> findContentSerializer(final Annotated annotated) {
        final JsonSerialize jsonSerialize = annotated.getAnnotation(JsonSerialize.class);
        if (jsonSerialize != null) {
            final Class<? extends JsonSerializer<?>> contentUsing = jsonSerialize.contentUsing();
            if (contentUsing != JsonSerializer.None.class) {
                return contentUsing;
            }
        }
        return null;
    }
    
    @Override
    public String findDeserializablePropertyName(final AnnotatedField annotatedField) {
        final JsonProperty jsonProperty = annotatedField.getAnnotation(JsonProperty.class);
        if (jsonProperty != null) {
            return jsonProperty.value();
        }
        if (annotatedField.hasAnnotation(JsonDeserialize.class) || annotatedField.hasAnnotation(JsonView.class) || annotatedField.hasAnnotation(JsonBackReference.class) || annotatedField.hasAnnotation(JsonManagedReference.class)) {
            return "";
        }
        return null;
    }
    
    @Override
    public Class<?> findDeserializationContentType(final Annotated annotated, final JavaType javaType, final String s) {
        final JsonDeserialize jsonDeserialize = annotated.getAnnotation(JsonDeserialize.class);
        if (jsonDeserialize != null) {
            final Class<?> contentAs = jsonDeserialize.contentAs();
            if (contentAs != NoClass.class) {
                return contentAs;
            }
        }
        return null;
    }
    
    @Override
    public Class<?> findDeserializationKeyType(final Annotated annotated, final JavaType javaType, final String s) {
        final JsonDeserialize jsonDeserialize = annotated.getAnnotation(JsonDeserialize.class);
        if (jsonDeserialize != null) {
            final Class<?> keyAs = jsonDeserialize.keyAs();
            if (keyAs != NoClass.class) {
                return keyAs;
            }
        }
        return null;
    }
    
    @Override
    public Class<?> findDeserializationType(final Annotated annotated, final JavaType javaType, final String s) {
        final JsonDeserialize jsonDeserialize = annotated.getAnnotation(JsonDeserialize.class);
        if (jsonDeserialize != null) {
            final Class<?> as = jsonDeserialize.as();
            if (as != NoClass.class) {
                return as;
            }
        }
        return null;
    }
    
    @Override
    public Class<? extends JsonDeserializer<?>> findDeserializer(final Annotated annotated) {
        final JsonDeserialize jsonDeserialize = annotated.getAnnotation(JsonDeserialize.class);
        if (jsonDeserialize != null) {
            final Class<? extends JsonDeserializer<?>> using = jsonDeserialize.using();
            if (using != JsonDeserializer.None.class) {
                return using;
            }
        }
        return null;
    }
    
    @Override
    public String findEnumValue(final Enum<?> enum1) {
        return enum1.name();
    }
    
    @Override
    public Object findFilterId(final AnnotatedClass annotatedClass) {
        final JsonFilter jsonFilter = annotatedClass.getAnnotation(JsonFilter.class);
        if (jsonFilter != null) {
            final String value = jsonFilter.value();
            if (value.length() > 0) {
                return value;
            }
        }
        return null;
    }
    
    @Override
    public String findGettablePropertyName(final AnnotatedMethod annotatedMethod) {
        final JsonProperty jsonProperty = annotatedMethod.getAnnotation(JsonProperty.class);
        if (jsonProperty != null) {
            return jsonProperty.value();
        }
        final JsonGetter jsonGetter = annotatedMethod.getAnnotation(JsonGetter.class);
        if (jsonGetter != null) {
            return jsonGetter.value();
        }
        if (annotatedMethod.hasAnnotation(JsonSerialize.class) || annotatedMethod.hasAnnotation(JsonView.class)) {
            return "";
        }
        return null;
    }
    
    @Override
    public Boolean findIgnoreUnknownProperties(final AnnotatedClass annotatedClass) {
        final JsonIgnoreProperties jsonIgnoreProperties = annotatedClass.getAnnotation(JsonIgnoreProperties.class);
        if (jsonIgnoreProperties == null) {
            return null;
        }
        return jsonIgnoreProperties.ignoreUnknown();
    }
    
    @Override
    public Object findInjectableValueId(final AnnotatedMember annotatedMember) {
        final JacksonInject jacksonInject = annotatedMember.getAnnotation(JacksonInject.class);
        if (jacksonInject == null) {
            return null;
        }
        final String value = jacksonInject.value();
        if (value.length() != 0) {
            return value;
        }
        if (!(annotatedMember instanceof AnnotatedMethod)) {
            return annotatedMember.getRawType().getName();
        }
        final AnnotatedMethod annotatedMethod = (AnnotatedMethod)annotatedMember;
        if (annotatedMethod.getParameterCount() == 0) {
            return annotatedMember.getRawType().getName();
        }
        return annotatedMethod.getParameterClass(0).getName();
    }
    
    @Override
    public Class<? extends KeyDeserializer> findKeyDeserializer(final Annotated annotated) {
        final JsonDeserialize jsonDeserialize = annotated.getAnnotation(JsonDeserialize.class);
        if (jsonDeserialize != null) {
            final Class<? extends KeyDeserializer> keyUsing = jsonDeserialize.keyUsing();
            if (keyUsing != KeyDeserializer.None.class) {
                return keyUsing;
            }
        }
        return null;
    }
    
    @Override
    public Class<? extends JsonSerializer<?>> findKeySerializer(final Annotated annotated) {
        final JsonSerialize jsonSerialize = annotated.getAnnotation(JsonSerialize.class);
        if (jsonSerialize != null) {
            final Class<? extends JsonSerializer<?>> keyUsing = jsonSerialize.keyUsing();
            if (keyUsing != JsonSerializer.None.class) {
                return keyUsing;
            }
        }
        return null;
    }
    
    @Override
    public String[] findPropertiesToIgnore(final AnnotatedClass annotatedClass) {
        final JsonIgnoreProperties jsonIgnoreProperties = annotatedClass.getAnnotation(JsonIgnoreProperties.class);
        if (jsonIgnoreProperties == null) {
            return null;
        }
        return jsonIgnoreProperties.value();
    }
    
    @Override
    public TypeResolverBuilder<?> findPropertyContentTypeResolver(final MapperConfig<?> mapperConfig, final AnnotatedMember annotatedMember, final JavaType obj) {
        if (!obj.isContainerType()) {
            throw new IllegalArgumentException("Must call method with a container type (got " + obj + ")");
        }
        return this._findTypeResolver(mapperConfig, annotatedMember, obj);
    }
    
    @Override
    public String findPropertyNameForParam(final AnnotatedParameter annotatedParameter) {
        if (annotatedParameter != null) {
            final JsonProperty jsonProperty = annotatedParameter.getAnnotation(JsonProperty.class);
            if (jsonProperty != null) {
                return jsonProperty.value();
            }
        }
        return null;
    }
    
    @Override
    public TypeResolverBuilder<?> findPropertyTypeResolver(final MapperConfig<?> mapperConfig, final AnnotatedMember annotatedMember, final JavaType javaType) {
        if (javaType.isContainerType()) {
            return null;
        }
        return this._findTypeResolver(mapperConfig, annotatedMember, javaType);
    }
    
    @Override
    public ReferenceProperty findReferenceType(final AnnotatedMember annotatedMember) {
        final JsonManagedReference jsonManagedReference = annotatedMember.getAnnotation(JsonManagedReference.class);
        if (jsonManagedReference != null) {
            return ReferenceProperty.managed(jsonManagedReference.value());
        }
        final JsonBackReference jsonBackReference = annotatedMember.getAnnotation(JsonBackReference.class);
        if (jsonBackReference != null) {
            return ReferenceProperty.back(jsonBackReference.value());
        }
        return null;
    }
    
    @Override
    public String findRootName(final AnnotatedClass annotatedClass) {
        final JsonRootName jsonRootName = annotatedClass.getAnnotation(JsonRootName.class);
        if (jsonRootName == null) {
            return null;
        }
        return jsonRootName.value();
    }
    
    @Override
    public String findSerializablePropertyName(final AnnotatedField annotatedField) {
        final JsonProperty jsonProperty = annotatedField.getAnnotation(JsonProperty.class);
        if (jsonProperty != null) {
            return jsonProperty.value();
        }
        if (annotatedField.hasAnnotation(JsonSerialize.class) || annotatedField.hasAnnotation(JsonView.class)) {
            return "";
        }
        return null;
    }
    
    @Override
    public Class<?> findSerializationContentType(final Annotated annotated, final JavaType javaType) {
        final JsonSerialize jsonSerialize = annotated.getAnnotation(JsonSerialize.class);
        if (jsonSerialize != null) {
            final Class<?> contentAs = jsonSerialize.contentAs();
            if (contentAs != NoClass.class) {
                return contentAs;
            }
        }
        return null;
    }
    
    @Override
    public JsonSerialize.Inclusion findSerializationInclusion(final Annotated annotated, final JsonSerialize.Inclusion inclusion) {
        final JsonSerialize jsonSerialize = annotated.getAnnotation(JsonSerialize.class);
        if (jsonSerialize != null) {
            return jsonSerialize.include();
        }
        final JsonWriteNullProperties jsonWriteNullProperties = annotated.getAnnotation(JsonWriteNullProperties.class);
        if (jsonWriteNullProperties == null) {
            return inclusion;
        }
        if (jsonWriteNullProperties.value()) {
            return JsonSerialize.Inclusion.ALWAYS;
        }
        return JsonSerialize.Inclusion.NON_NULL;
    }
    
    @Override
    public Class<?> findSerializationKeyType(final Annotated annotated, final JavaType javaType) {
        final JsonSerialize jsonSerialize = annotated.getAnnotation(JsonSerialize.class);
        if (jsonSerialize != null) {
            final Class<?> keyAs = jsonSerialize.keyAs();
            if (keyAs != NoClass.class) {
                return keyAs;
            }
        }
        return null;
    }
    
    @Override
    public String[] findSerializationPropertyOrder(final AnnotatedClass annotatedClass) {
        final JsonPropertyOrder jsonPropertyOrder = annotatedClass.getAnnotation(JsonPropertyOrder.class);
        if (jsonPropertyOrder == null) {
            return null;
        }
        return jsonPropertyOrder.value();
    }
    
    @Override
    public Boolean findSerializationSortAlphabetically(final AnnotatedClass annotatedClass) {
        final JsonPropertyOrder jsonPropertyOrder = annotatedClass.getAnnotation(JsonPropertyOrder.class);
        if (jsonPropertyOrder == null) {
            return null;
        }
        return jsonPropertyOrder.alphabetic();
    }
    
    @Override
    public Class<?> findSerializationType(final Annotated annotated) {
        final JsonSerialize jsonSerialize = annotated.getAnnotation(JsonSerialize.class);
        if (jsonSerialize != null) {
            final Class<?> as = jsonSerialize.as();
            if (as != NoClass.class) {
                return as;
            }
        }
        return null;
    }
    
    @Override
    public JsonSerialize.Typing findSerializationTyping(final Annotated annotated) {
        final JsonSerialize jsonSerialize = annotated.getAnnotation(JsonSerialize.class);
        if (jsonSerialize == null) {
            return null;
        }
        return jsonSerialize.typing();
    }
    
    @Override
    public Class<?>[] findSerializationViews(final Annotated annotated) {
        final JsonView jsonView = annotated.getAnnotation(JsonView.class);
        if (jsonView == null) {
            return null;
        }
        return jsonView.value();
    }
    
    @Override
    public Object findSerializer(final Annotated annotated) {
        final JsonSerialize jsonSerialize = annotated.getAnnotation(JsonSerialize.class);
        if (jsonSerialize != null) {
            final Class<? extends JsonSerializer<?>> using = jsonSerialize.using();
            if (using != JsonSerializer.None.class) {
                return using;
            }
        }
        final JsonRawValue jsonRawValue = annotated.getAnnotation(JsonRawValue.class);
        if (jsonRawValue != null && jsonRawValue.value()) {
            return new RawSerializer(annotated.getRawType());
        }
        return null;
    }
    
    @Override
    public String findSettablePropertyName(final AnnotatedMethod annotatedMethod) {
        final JsonProperty jsonProperty = annotatedMethod.getAnnotation(JsonProperty.class);
        if (jsonProperty != null) {
            return jsonProperty.value();
        }
        final JsonSetter jsonSetter = annotatedMethod.getAnnotation(JsonSetter.class);
        if (jsonSetter != null) {
            return jsonSetter.value();
        }
        if (annotatedMethod.hasAnnotation(JsonDeserialize.class) || annotatedMethod.hasAnnotation(JsonView.class) || annotatedMethod.hasAnnotation(JsonBackReference.class) || annotatedMethod.hasAnnotation(JsonManagedReference.class)) {
            return "";
        }
        return null;
    }
    
    @Override
    public List<NamedType> findSubtypes(final Annotated annotated) {
        final JsonSubTypes jsonSubTypes = annotated.getAnnotation(JsonSubTypes.class);
        if (jsonSubTypes == null) {
            return null;
        }
        final JsonSubTypes.Type[] value = jsonSubTypes.value();
        final ArrayList list = new ArrayList<NamedType>(value.length);
        for (final JsonSubTypes.Type type : value) {
            list.add(new NamedType(type.value(), type.name()));
        }
        return (List<NamedType>)list;
    }
    
    @Override
    public String findTypeName(final AnnotatedClass annotatedClass) {
        final JsonTypeName jsonTypeName = annotatedClass.getAnnotation(JsonTypeName.class);
        if (jsonTypeName == null) {
            return null;
        }
        return jsonTypeName.value();
    }
    
    @Override
    public TypeResolverBuilder<?> findTypeResolver(final MapperConfig<?> mapperConfig, final AnnotatedClass annotatedClass, final JavaType javaType) {
        return this._findTypeResolver(mapperConfig, annotatedClass, javaType);
    }
    
    @Override
    public Object findValueInstantiator(final AnnotatedClass annotatedClass) {
        final JsonValueInstantiator jsonValueInstantiator = annotatedClass.getAnnotation(JsonValueInstantiator.class);
        if (jsonValueInstantiator == null) {
            return null;
        }
        return jsonValueInstantiator.value();
    }
    
    @Override
    public boolean hasAnyGetterAnnotation(final AnnotatedMethod annotatedMethod) {
        return annotatedMethod.hasAnnotation(JsonAnyGetter.class);
    }
    
    @Override
    public boolean hasAnySetterAnnotation(final AnnotatedMethod annotatedMethod) {
        return annotatedMethod.hasAnnotation(JsonAnySetter.class);
    }
    
    @Override
    public boolean hasAsValueAnnotation(final AnnotatedMethod annotatedMethod) {
        final JsonValue jsonValue = annotatedMethod.getAnnotation(JsonValue.class);
        return jsonValue != null && jsonValue.value();
    }
    
    @Override
    public boolean hasCreatorAnnotation(final Annotated annotated) {
        return annotated.hasAnnotation(JsonCreator.class);
    }
    
    @Override
    public boolean hasIgnoreMarker(final AnnotatedMember annotatedMember) {
        return this._isIgnorable(annotatedMember);
    }
    
    @Override
    public boolean isHandled(final Annotation annotation) {
        return annotation.annotationType().getAnnotation(JacksonAnnotation.class) != null;
    }
    
    @Override
    public boolean isIgnorableConstructor(final AnnotatedConstructor annotatedConstructor) {
        return this._isIgnorable(annotatedConstructor);
    }
    
    @Override
    public boolean isIgnorableField(final AnnotatedField annotatedField) {
        return this._isIgnorable(annotatedField);
    }
    
    @Override
    public boolean isIgnorableMethod(final AnnotatedMethod annotatedMethod) {
        return this._isIgnorable(annotatedMethod);
    }
    
    @Override
    public Boolean isIgnorableType(final AnnotatedClass annotatedClass) {
        final JsonIgnoreType jsonIgnoreType = annotatedClass.getAnnotation(JsonIgnoreType.class);
        if (jsonIgnoreType == null) {
            return null;
        }
        return jsonIgnoreType.value();
    }
    
    @Override
    public Boolean shouldUnwrapProperty(final AnnotatedMember annotatedMember) {
        final JsonUnwrapped jsonUnwrapped = annotatedMember.getAnnotation(JsonUnwrapped.class);
        if (jsonUnwrapped != null && jsonUnwrapped.enabled()) {
            return Boolean.TRUE;
        }
        return null;
    }
}
