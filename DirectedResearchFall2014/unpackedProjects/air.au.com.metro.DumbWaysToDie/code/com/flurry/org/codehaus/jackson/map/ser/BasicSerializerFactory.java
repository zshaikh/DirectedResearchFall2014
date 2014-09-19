package com.flurry.org.codehaus.jackson.map.ser;

import com.flurry.org.codehaus.jackson.map.ext.*;
import java.math.*;
import java.sql.*;
import com.flurry.org.codehaus.jackson.util.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.map.jsontype.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.net.*;
import java.nio.charset.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.ser.std.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;

public abstract class BasicSerializerFactory extends SerializerFactory
{
    protected static final HashMap<String, JsonSerializer<?>> _arraySerializers;
    protected static final HashMap<String, JsonSerializer<?>> _concrete;
    protected static final HashMap<String, Class<? extends JsonSerializer<?>>> _concreteLazy;
    protected OptionalHandlerFactory optionalHandlers;
    
    static {
        _concrete = new HashMap<String, JsonSerializer<?>>();
        _concreteLazy = new HashMap<String, Class<? extends JsonSerializer<?>>>();
        BasicSerializerFactory._concrete.put(String.class.getName(), new StringSerializer());
        final ToStringSerializer instance = ToStringSerializer.instance;
        BasicSerializerFactory._concrete.put(StringBuffer.class.getName(), instance);
        BasicSerializerFactory._concrete.put(StringBuilder.class.getName(), instance);
        BasicSerializerFactory._concrete.put(Character.class.getName(), instance);
        BasicSerializerFactory._concrete.put(Character.TYPE.getName(), instance);
        BasicSerializerFactory._concrete.put(Boolean.TYPE.getName(), new StdSerializers.BooleanSerializer(true));
        BasicSerializerFactory._concrete.put(Boolean.class.getName(), new StdSerializers.BooleanSerializer(false));
        final StdSerializers.IntegerSerializer integerSerializer = new StdSerializers.IntegerSerializer();
        BasicSerializerFactory._concrete.put(Integer.class.getName(), integerSerializer);
        BasicSerializerFactory._concrete.put(Integer.TYPE.getName(), integerSerializer);
        BasicSerializerFactory._concrete.put(Long.class.getName(), StdSerializers.LongSerializer.instance);
        BasicSerializerFactory._concrete.put(Long.TYPE.getName(), StdSerializers.LongSerializer.instance);
        BasicSerializerFactory._concrete.put(Byte.class.getName(), StdSerializers.IntLikeSerializer.instance);
        BasicSerializerFactory._concrete.put(Byte.TYPE.getName(), StdSerializers.IntLikeSerializer.instance);
        BasicSerializerFactory._concrete.put(Short.class.getName(), StdSerializers.IntLikeSerializer.instance);
        BasicSerializerFactory._concrete.put(Short.TYPE.getName(), StdSerializers.IntLikeSerializer.instance);
        BasicSerializerFactory._concrete.put(Float.class.getName(), StdSerializers.FloatSerializer.instance);
        BasicSerializerFactory._concrete.put(Float.TYPE.getName(), StdSerializers.FloatSerializer.instance);
        BasicSerializerFactory._concrete.put(Double.class.getName(), StdSerializers.DoubleSerializer.instance);
        BasicSerializerFactory._concrete.put(Double.TYPE.getName(), StdSerializers.DoubleSerializer.instance);
        final StdSerializers.NumberSerializer numberSerializer = new StdSerializers.NumberSerializer();
        BasicSerializerFactory._concrete.put(BigInteger.class.getName(), numberSerializer);
        BasicSerializerFactory._concrete.put(BigDecimal.class.getName(), numberSerializer);
        BasicSerializerFactory._concrete.put(Calendar.class.getName(), CalendarSerializer.instance);
        final DateSerializer instance2 = DateSerializer.instance;
        BasicSerializerFactory._concrete.put(Date.class.getName(), instance2);
        BasicSerializerFactory._concrete.put(Timestamp.class.getName(), instance2);
        BasicSerializerFactory._concrete.put(java.sql.Date.class.getName(), new StdSerializers.SqlDateSerializer());
        BasicSerializerFactory._concrete.put(Time.class.getName(), new StdSerializers.SqlTimeSerializer());
        for (final Map.Entry<Class<?>, Object> entry : new StdJdkSerializers().provide()) {
            final Class<? extends JsonSerializer<?>> value = entry.getValue();
            if (value instanceof JsonSerializer) {
                BasicSerializerFactory._concrete.put(entry.getKey().getName(), (JsonSerializer<?>)value);
            }
            else {
                if (!(value instanceof Class)) {
                    throw new IllegalStateException("Internal error: unrecognized value of type " + entry.getClass().getName());
                }
                BasicSerializerFactory._concreteLazy.put(entry.getKey().getName(), value);
            }
        }
        BasicSerializerFactory._concreteLazy.put(TokenBuffer.class.getName(), TokenBufferSerializer.class);
        (_arraySerializers = new HashMap<String, JsonSerializer<?>>()).put(boolean[].class.getName(), new StdArraySerializers.BooleanArraySerializer());
        BasicSerializerFactory._arraySerializers.put(byte[].class.getName(), new StdArraySerializers.ByteArraySerializer());
        BasicSerializerFactory._arraySerializers.put(char[].class.getName(), new StdArraySerializers.CharArraySerializer());
        BasicSerializerFactory._arraySerializers.put(short[].class.getName(), new StdArraySerializers.ShortArraySerializer());
        BasicSerializerFactory._arraySerializers.put(int[].class.getName(), new StdArraySerializers.IntArraySerializer());
        BasicSerializerFactory._arraySerializers.put(long[].class.getName(), new StdArraySerializers.LongArraySerializer());
        BasicSerializerFactory._arraySerializers.put(float[].class.getName(), new StdArraySerializers.FloatArraySerializer());
        BasicSerializerFactory._arraySerializers.put(double[].class.getName(), new StdArraySerializers.DoubleArraySerializer());
    }
    
    protected BasicSerializerFactory() {
        super();
        this.optionalHandlers = OptionalHandlerFactory.instance;
    }
    
    protected static JsonSerializer<Object> findContentSerializer(final SerializationConfig serializationConfig, final Annotated annotated, final BeanProperty beanProperty) {
        final AnnotationIntrospector annotationIntrospector = serializationConfig.getAnnotationIntrospector();
        Class<? extends JsonSerializer<?>> clazz = annotationIntrospector.findContentSerializer(annotated);
        if ((clazz == null || clazz == JsonSerializer.None.class) && beanProperty != null) {
            clazz = annotationIntrospector.findContentSerializer(beanProperty.getMember());
        }
        if (clazz != null && clazz != JsonSerializer.None.class) {
            return serializationConfig.serializerInstance(annotated, clazz);
        }
        return null;
    }
    
    protected static JsonSerializer<Object> findKeySerializer(final SerializationConfig serializationConfig, final Annotated annotated, final BeanProperty beanProperty) {
        final AnnotationIntrospector annotationIntrospector = serializationConfig.getAnnotationIntrospector();
        Class<? extends JsonSerializer<?>> clazz = annotationIntrospector.findKeySerializer(annotated);
        if ((clazz == null || clazz == JsonSerializer.None.class) && beanProperty != null) {
            clazz = annotationIntrospector.findKeySerializer(beanProperty.getMember());
        }
        if (clazz != null && clazz != JsonSerializer.None.class) {
            return serializationConfig.serializerInstance(annotated, clazz);
        }
        return null;
    }
    
    protected static <T extends JavaType> T modifySecondaryTypesByAnnotation(final SerializationConfig p0, final Annotated p1, final T p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokevirtual   com/flurry/org/codehaus/jackson/map/SerializationConfig.getAnnotationIntrospector:()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;
        //     4: astore_3       
        //     5: aload_2        
        //     6: invokevirtual   com/flurry/org/codehaus/jackson/type/JavaType.isContainerType:()Z
        //     9: ifeq            110
        //    12: aload_3        
        //    13: aload_1        
        //    14: aload_2        
        //    15: invokevirtual   com/flurry/org/codehaus/jackson/type/JavaType.getKeyType:()Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //    18: invokevirtual   com/flurry/org/codehaus/jackson/map/AnnotationIntrospector.findSerializationKeyType:(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
        //    21: astore          4
        //    23: aload           4
        //    25: ifnull          83
        //    28: aload_2        
        //    29: instanceof      Lcom/flurry/org/codehaus/jackson/map/type/MapType;
        //    32: ifne            69
        //    35: new             Ljava/lang/IllegalArgumentException;
        //    38: dup            
        //    39: new             Ljava/lang/StringBuilder;
        //    42: dup            
        //    43: invokespecial   java/lang/StringBuilder.<init>:()V
        //    46: ldc_w           "Illegal key-type annotation: type "
        //    49: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    52: aload_2        
        //    53: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //    56: ldc_w           " is not a Map type"
        //    59: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    62: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    65: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;)V
        //    68: athrow         
        //    69: aload_2        
        //    70: checkcast       Lcom/flurry/org/codehaus/jackson/map/type/MapType;
        //    73: aload           4
        //    75: invokevirtual   com/flurry/org/codehaus/jackson/map/type/MapType.widenKey:(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //    78: astore          9
        //    80: aload           9
        //    82: astore_2       
        //    83: aload_3        
        //    84: aload_1        
        //    85: aload_2        
        //    86: invokevirtual   com/flurry/org/codehaus/jackson/type/JavaType.getContentType:()Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //    89: invokevirtual   com/flurry/org/codehaus/jackson/map/AnnotationIntrospector.findSerializationContentType:(Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
        //    92: astore          5
        //    94: aload           5
        //    96: ifnull          110
        //    99: aload_2        
        //   100: aload           5
        //   102: invokevirtual   com/flurry/org/codehaus/jackson/type/JavaType.widenContentsBy:(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //   105: astore          7
        //   107: aload           7
        //   109: astore_2       
        //   110: aload_2        
        //   111: areturn        
        //   112: astore          8
        //   114: new             Ljava/lang/IllegalArgumentException;
        //   117: dup            
        //   118: new             Ljava/lang/StringBuilder;
        //   121: dup            
        //   122: invokespecial   java/lang/StringBuilder.<init>:()V
        //   125: ldc_w           "Failed to narrow key type "
        //   128: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   131: aload_2        
        //   132: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   135: ldc_w           " with key-type annotation ("
        //   138: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   141: aload           4
        //   143: invokevirtual   java/lang/Class.getName:()Ljava/lang/String;
        //   146: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   149: ldc_w           "): "
        //   152: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   155: aload           8
        //   157: invokevirtual   java/lang/IllegalArgumentException.getMessage:()Ljava/lang/String;
        //   160: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   163: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   166: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;)V
        //   169: athrow         
        //   170: astore          6
        //   172: new             Ljava/lang/IllegalArgumentException;
        //   175: dup            
        //   176: new             Ljava/lang/StringBuilder;
        //   179: dup            
        //   180: invokespecial   java/lang/StringBuilder.<init>:()V
        //   183: ldc_w           "Failed to narrow content type "
        //   186: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   189: aload_2        
        //   190: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   193: ldc_w           " with content-type annotation ("
        //   196: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   199: aload           5
        //   201: invokevirtual   java/lang/Class.getName:()Ljava/lang/String;
        //   204: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   207: ldc_w           "): "
        //   210: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   213: aload           6
        //   215: invokevirtual   java/lang/IllegalArgumentException.getMessage:()Ljava/lang/String;
        //   218: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   221: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   224: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;)V
        //   227: athrow         
        //    Signature:
        //  <T:Lcom/flurry/org/codehaus/jackson/type/JavaType;>(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/map/introspect/Annotated;TT;)TT;
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                
        //  -----  -----  -----  -----  ------------------------------------
        //  69     80     112    170    Ljava/lang/IllegalArgumentException;
        //  99     107    170    228    Ljava/lang/IllegalArgumentException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0110:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    protected JsonSerializer<?> buildArraySerializer(final SerializationConfig serializationConfig, final ArrayType arrayType, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty, final boolean b, final TypeSerializer typeSerializer, final JsonSerializer<Object> jsonSerializer) {
        final Class<?> rawClass = arrayType.getRawClass();
        if (String[].class == rawClass) {
            return new StdArraySerializers.StringArraySerializer(beanProperty);
        }
        final JsonSerializer<?> jsonSerializer2 = BasicSerializerFactory._arraySerializers.get(rawClass.getName());
        if (jsonSerializer2 != null) {
            return jsonSerializer2;
        }
        return new ObjectArraySerializer(arrayType.getContentType(), b, typeSerializer, beanProperty, jsonSerializer);
    }
    
    protected JsonSerializer<?> buildCollectionLikeSerializer(final SerializationConfig serializationConfig, final CollectionLikeType collectionLikeType, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty, final boolean b, final TypeSerializer typeSerializer, final JsonSerializer<Object> jsonSerializer) {
        final Iterator<Serializers> iterator = this.customSerializers().iterator();
        while (iterator.hasNext()) {
            final JsonSerializer<?> collectionLikeSerializer = iterator.next().findCollectionLikeSerializer(serializationConfig, collectionLikeType, basicBeanDescription, beanProperty, typeSerializer, jsonSerializer);
            if (collectionLikeSerializer != null) {
                return collectionLikeSerializer;
            }
        }
        return null;
    }
    
    protected JsonSerializer<?> buildCollectionSerializer(final SerializationConfig serializationConfig, final CollectionType collectionType, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty, final boolean b, final TypeSerializer typeSerializer, final JsonSerializer<Object> jsonSerializer) {
        final Iterator<Serializers> iterator = this.customSerializers().iterator();
        while (iterator.hasNext()) {
            final JsonSerializer<?> collectionSerializer = iterator.next().findCollectionSerializer(serializationConfig, collectionType, basicBeanDescription, beanProperty, typeSerializer, jsonSerializer);
            if (collectionSerializer != null) {
                return collectionSerializer;
            }
        }
        final Class<?> rawClass = collectionType.getRawClass();
        if (EnumSet.class.isAssignableFrom(rawClass)) {
            return this.buildEnumSetSerializer(serializationConfig, collectionType, basicBeanDescription, beanProperty, b, typeSerializer, jsonSerializer);
        }
        final Class<?> rawClass2 = collectionType.getContentType().getRawClass();
        if (this.isIndexedList(rawClass)) {
            if (rawClass2 == String.class) {
                return new IndexedStringListSerializer(beanProperty);
            }
            return StdContainerSerializers.indexedListSerializer(collectionType.getContentType(), b, typeSerializer, beanProperty, jsonSerializer);
        }
        else {
            if (rawClass2 == String.class) {
                return new StringCollectionSerializer(beanProperty);
            }
            return StdContainerSerializers.collectionSerializer(collectionType.getContentType(), b, typeSerializer, beanProperty, jsonSerializer);
        }
    }
    
    public JsonSerializer<?> buildContainerSerializer(final SerializationConfig serializationConfig, final JavaType javaType, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty, boolean usesStaticTyping) {
        final TypeSerializer typeSerializer = this.createTypeSerializer(serializationConfig, javaType.getContentType(), beanProperty);
        if (typeSerializer != null) {
            usesStaticTyping = false;
        }
        else if (!usesStaticTyping) {
            usesStaticTyping = this.usesStaticTyping(serializationConfig, basicBeanDescription, typeSerializer, beanProperty);
        }
        final JsonSerializer<Object> contentSerializer = findContentSerializer(serializationConfig, basicBeanDescription.getClassInfo(), beanProperty);
        if (javaType.isMapLikeType()) {
            final MapLikeType mapLikeType = (MapLikeType)javaType;
            final JsonSerializer<Object> keySerializer = findKeySerializer(serializationConfig, basicBeanDescription.getClassInfo(), beanProperty);
            if (mapLikeType.isTrueMapType()) {
                return this.buildMapSerializer(serializationConfig, (MapType)mapLikeType, basicBeanDescription, beanProperty, usesStaticTyping, keySerializer, typeSerializer, contentSerializer);
            }
            return this.buildMapLikeSerializer(serializationConfig, mapLikeType, basicBeanDescription, beanProperty, usesStaticTyping, keySerializer, typeSerializer, contentSerializer);
        }
        else if (javaType.isCollectionLikeType()) {
            final CollectionLikeType collectionLikeType = (CollectionLikeType)javaType;
            if (collectionLikeType.isTrueCollectionType()) {
                return this.buildCollectionSerializer(serializationConfig, (CollectionType)collectionLikeType, basicBeanDescription, beanProperty, usesStaticTyping, typeSerializer, contentSerializer);
            }
            return this.buildCollectionLikeSerializer(serializationConfig, collectionLikeType, basicBeanDescription, beanProperty, usesStaticTyping, typeSerializer, contentSerializer);
        }
        else {
            if (javaType.isArrayType()) {
                return this.buildArraySerializer(serializationConfig, (ArrayType)javaType, basicBeanDescription, beanProperty, usesStaticTyping, typeSerializer, contentSerializer);
            }
            return null;
        }
    }
    
    protected JsonSerializer<?> buildEnumMapSerializer(final SerializationConfig serializationConfig, final JavaType javaType, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty, final boolean b, final TypeSerializer typeSerializer, final JsonSerializer<Object> jsonSerializer) {
        final JavaType keyType = javaType.getKeyType();
        final boolean enumType = keyType.isEnumType();
        EnumValues construct = null;
        if (enumType) {
            construct = EnumValues.construct((Class<Enum<?>>)keyType.getRawClass(), serializationConfig.getAnnotationIntrospector());
        }
        return new EnumMapSerializer(javaType.getContentType(), b, construct, typeSerializer, beanProperty, jsonSerializer);
    }
    
    protected JsonSerializer<?> buildEnumSetSerializer(final SerializationConfig serializationConfig, final JavaType javaType, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty, final boolean b, final TypeSerializer typeSerializer, final JsonSerializer<Object> jsonSerializer) {
        JavaType contentType = javaType.getContentType();
        if (!contentType.isEnumType()) {
            contentType = null;
        }
        return StdContainerSerializers.enumSetSerializer(contentType, beanProperty);
    }
    
    protected JsonSerializer<?> buildIterableSerializer(final SerializationConfig serializationConfig, final JavaType javaType, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty, final boolean b) {
        JavaType javaType2 = javaType.containedType(0);
        if (javaType2 == null) {
            javaType2 = TypeFactory.unknownType();
        }
        final TypeSerializer typeSerializer = this.createTypeSerializer(serializationConfig, javaType2, beanProperty);
        return StdContainerSerializers.iterableSerializer(javaType2, this.usesStaticTyping(serializationConfig, basicBeanDescription, typeSerializer, beanProperty), typeSerializer, beanProperty);
    }
    
    protected JsonSerializer<?> buildIteratorSerializer(final SerializationConfig serializationConfig, final JavaType javaType, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty, final boolean b) {
        JavaType javaType2 = javaType.containedType(0);
        if (javaType2 == null) {
            javaType2 = TypeFactory.unknownType();
        }
        final TypeSerializer typeSerializer = this.createTypeSerializer(serializationConfig, javaType2, beanProperty);
        return StdContainerSerializers.iteratorSerializer(javaType2, this.usesStaticTyping(serializationConfig, basicBeanDescription, typeSerializer, beanProperty), typeSerializer, beanProperty);
    }
    
    protected JsonSerializer<?> buildMapLikeSerializer(final SerializationConfig serializationConfig, final MapLikeType mapLikeType, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty, final boolean b, final JsonSerializer<Object> jsonSerializer, final TypeSerializer typeSerializer, final JsonSerializer<Object> jsonSerializer2) {
        final Iterator<Serializers> iterator = this.customSerializers().iterator();
        while (iterator.hasNext()) {
            final JsonSerializer<?> mapLikeSerializer = iterator.next().findMapLikeSerializer(serializationConfig, mapLikeType, basicBeanDescription, beanProperty, jsonSerializer, typeSerializer, jsonSerializer2);
            if (mapLikeSerializer != null) {
                return mapLikeSerializer;
            }
        }
        return null;
    }
    
    protected JsonSerializer<?> buildMapSerializer(final SerializationConfig serializationConfig, final MapType mapType, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty, final boolean b, final JsonSerializer<Object> jsonSerializer, final TypeSerializer typeSerializer, final JsonSerializer<Object> jsonSerializer2) {
        final Iterator<Serializers> iterator = this.customSerializers().iterator();
        while (iterator.hasNext()) {
            final JsonSerializer<?> mapSerializer = iterator.next().findMapSerializer(serializationConfig, mapType, basicBeanDescription, beanProperty, jsonSerializer, typeSerializer, jsonSerializer2);
            if (mapSerializer != null) {
                return mapSerializer;
            }
        }
        if (EnumMap.class.isAssignableFrom(mapType.getRawClass())) {
            return this.buildEnumMapSerializer(serializationConfig, mapType, basicBeanDescription, beanProperty, b, typeSerializer, jsonSerializer2);
        }
        return MapSerializer.construct(serializationConfig.getAnnotationIntrospector().findPropertiesToIgnore(basicBeanDescription.getClassInfo()), mapType, b, typeSerializer, beanProperty, jsonSerializer, jsonSerializer2);
    }
    
    @Override
    public abstract JsonSerializer<Object> createSerializer(final SerializationConfig p0, final JavaType p1, final BeanProperty p2) throws JsonMappingException;
    
    @Override
    public TypeSerializer createTypeSerializer(final SerializationConfig serializationConfig, final JavaType javaType, final BeanProperty beanProperty) {
        final AnnotatedClass classInfo = serializationConfig.introspectClassAnnotations(javaType.getRawClass()).getClassInfo();
        final AnnotationIntrospector annotationIntrospector = serializationConfig.getAnnotationIntrospector();
        TypeResolverBuilder<?> typeResolverBuilder = annotationIntrospector.findTypeResolver(serializationConfig, classInfo, javaType);
        Collection<NamedType> collectAndResolveSubtypes = null;
        if (typeResolverBuilder == null) {
            typeResolverBuilder = serializationConfig.getDefaultTyper(javaType);
        }
        else {
            collectAndResolveSubtypes = serializationConfig.getSubtypeResolver().collectAndResolveSubtypes(classInfo, serializationConfig, annotationIntrospector);
        }
        if (typeResolverBuilder == null) {
            return null;
        }
        return typeResolverBuilder.buildTypeSerializer(serializationConfig, javaType, collectAndResolveSubtypes, beanProperty);
    }
    
    protected abstract Iterable<Serializers> customSerializers();
    
    public final JsonSerializer<?> findSerializerByAddonType(final SerializationConfig serializationConfig, final JavaType javaType, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty, final boolean b) throws JsonMappingException {
        final Class<?> rawClass = javaType.getRawClass();
        if (Iterator.class.isAssignableFrom(rawClass)) {
            return this.buildIteratorSerializer(serializationConfig, javaType, basicBeanDescription, beanProperty, b);
        }
        if (Iterable.class.isAssignableFrom(rawClass)) {
            return this.buildIterableSerializer(serializationConfig, javaType, basicBeanDescription, beanProperty, b);
        }
        if (CharSequence.class.isAssignableFrom(rawClass)) {
            return ToStringSerializer.instance;
        }
        return null;
    }
    
    public final JsonSerializer<?> findSerializerByLookup(final JavaType javaType, final SerializationConfig serializationConfig, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty, final boolean b) {
        final String name = javaType.getRawClass().getName();
        final JsonSerializer<?> jsonSerializer = BasicSerializerFactory._concrete.get(name);
        if (jsonSerializer != null) {
            return jsonSerializer;
        }
        final Class<? extends JsonSerializer<?>> clazz = BasicSerializerFactory._concreteLazy.get(name);
        if (clazz != null) {
            try {
                return (JsonSerializer<?>)clazz.newInstance();
            }
            catch (Exception cause) {
                throw new IllegalStateException("Failed to instantiate standard serializer (of type " + clazz.getName() + "): " + cause.getMessage(), cause);
            }
        }
        return null;
    }
    
    public final JsonSerializer<?> findSerializerByPrimaryType(final JavaType javaType, final SerializationConfig serializationConfig, final BasicBeanDescription basicBeanDescription, final BeanProperty beanProperty, final boolean b) throws JsonMappingException {
        final Class<?> rawClass = javaType.getRawClass();
        if (JsonSerializable.class.isAssignableFrom(rawClass)) {
            if (JsonSerializableWithType.class.isAssignableFrom(rawClass)) {
                return SerializableWithTypeSerializer.instance;
            }
            return SerializableSerializer.instance;
        }
        else {
            final AnnotatedMethod jsonValueMethod = basicBeanDescription.findJsonValueMethod();
            if (jsonValueMethod != null) {
                final Method annotated = jsonValueMethod.getAnnotated();
                if (serializationConfig.isEnabled(SerializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
                    ClassUtil.checkAndFixAccess(annotated);
                }
                return new JsonValueSerializer(annotated, this.findSerializerFromAnnotation(serializationConfig, jsonValueMethod, beanProperty), beanProperty);
            }
            if (InetAddress.class.isAssignableFrom(rawClass)) {
                return InetAddressSerializer.instance;
            }
            if (TimeZone.class.isAssignableFrom(rawClass)) {
                return TimeZoneSerializer.instance;
            }
            if (Charset.class.isAssignableFrom(rawClass)) {
                return ToStringSerializer.instance;
            }
            final JsonSerializer<?> serializer = this.optionalHandlers.findSerializer(serializationConfig, javaType);
            if (serializer != null) {
                return serializer;
            }
            if (Number.class.isAssignableFrom(rawClass)) {
                return StdSerializers.NumberSerializer.instance;
            }
            if (Enum.class.isAssignableFrom(rawClass)) {
                return EnumSerializer.construct((Class<Enum<?>>)rawClass, serializationConfig, basicBeanDescription);
            }
            if (Calendar.class.isAssignableFrom(rawClass)) {
                return CalendarSerializer.instance;
            }
            if (Date.class.isAssignableFrom(rawClass)) {
                return DateSerializer.instance;
            }
            return null;
        }
    }
    
    protected JsonSerializer<Object> findSerializerFromAnnotation(final SerializationConfig serializationConfig, final Annotated annotated, final BeanProperty beanProperty) throws JsonMappingException {
        final Object serializer = serializationConfig.getAnnotationIntrospector().findSerializer(annotated);
        if (serializer == null) {
            return null;
        }
        if (serializer instanceof JsonSerializer) {
            final JsonSerializer<Object> jsonSerializer = (JsonSerializer<Object>)serializer;
            if (jsonSerializer instanceof ContextualSerializer) {
                return ((ContextualSerializer<Object>)jsonSerializer).createContextual(serializationConfig, beanProperty);
            }
            return jsonSerializer;
        }
        else {
            if (!(serializer instanceof Class)) {
                throw new IllegalStateException("AnnotationIntrospector returned value of type " + ((Class<?>)serializer).getClass().getName() + "; expected type JsonSerializer or Class<JsonSerializer> instead");
            }
            final Class<?> clazz = (Class<?>)serializer;
            if (!JsonSerializer.class.isAssignableFrom(clazz)) {
                throw new IllegalStateException("AnnotationIntrospector returned Class " + clazz.getName() + "; expected Class<JsonSerializer>");
            }
            final JsonSerializer<Object> serializerInstance = serializationConfig.serializerInstance(annotated, (Class<? extends JsonSerializer<?>>)clazz);
            if (serializerInstance instanceof ContextualSerializer) {
                return ((ContextualSerializer<Object>)serializerInstance).createContextual(serializationConfig, beanProperty);
            }
            return serializerInstance;
        }
    }
    
    public final JsonSerializer<?> getNullSerializer() {
        return NullSerializer.instance;
    }
    
    protected boolean isIndexedList(final Class<?> clazz) {
        return RandomAccess.class.isAssignableFrom(clazz);
    }
    
    protected <T extends JavaType> T modifyTypeByAnnotation(final SerializationConfig serializationConfig, final Annotated annotated, T widenBy) {
        final Class<?> serializationType = serializationConfig.getAnnotationIntrospector().findSerializationType(annotated);
        Label_0026: {
            if (serializationType == null) {
                break Label_0026;
            }
            try {
                widenBy = (T)widenBy.widenBy(serializationType);
                return (T)modifySecondaryTypesByAnnotation(serializationConfig, annotated, (JavaType)widenBy);
            }
            catch (IllegalArgumentException ex) {
                throw new IllegalArgumentException("Failed to widen type " + widenBy + " with concrete-type annotation (value " + serializationType.getName() + "), method '" + annotated.getName() + "': " + ex.getMessage());
            }
        }
    }
    
    protected boolean usesStaticTyping(final SerializationConfig serializationConfig, final BasicBeanDescription basicBeanDescription, final TypeSerializer typeSerializer, final BeanProperty beanProperty) {
        if (typeSerializer != null) {
            return false;
        }
        final AnnotationIntrospector annotationIntrospector = serializationConfig.getAnnotationIntrospector();
        final JsonSerialize.Typing serializationTyping = annotationIntrospector.findSerializationTyping(basicBeanDescription.getClassInfo());
        if (serializationTyping != null) {
            if (serializationTyping == JsonSerialize.Typing.STATIC) {
                return true;
            }
        }
        else if (serializationConfig.isEnabled(SerializationConfig.Feature.USE_STATIC_TYPING)) {
            return true;
        }
        if (beanProperty != null) {
            final JavaType type = beanProperty.getType();
            if (type.isContainerType()) {
                if (annotationIntrospector.findSerializationContentType(beanProperty.getMember(), beanProperty.getType()) != null) {
                    return true;
                }
                if (type instanceof MapType && annotationIntrospector.findSerializationKeyType(beanProperty.getMember(), beanProperty.getType()) != null) {
                    return true;
                }
            }
        }
        return false;
    }
}
