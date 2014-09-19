package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.map.ser.impl.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.schema.*;
import com.flurry.org.codehaus.jackson.node.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

@JacksonStdImpl
public class ObjectArraySerializer extends ArraySerializerBase<Object[]> implements ResolvableSerializer
{
    protected PropertySerializerMap _dynamicSerializers;
    protected JsonSerializer<Object> _elementSerializer;
    protected final JavaType _elementType;
    protected final boolean _staticTyping;
    
    public ObjectArraySerializer(final JavaType javaType, final boolean b, final TypeSerializer typeSerializer, final BeanProperty beanProperty) {
        this(javaType, b, typeSerializer, beanProperty, null);
    }
    
    public ObjectArraySerializer(final JavaType elementType, final boolean staticTyping, final TypeSerializer typeSerializer, final BeanProperty beanProperty, final JsonSerializer<Object> elementSerializer) {
        super(Object[].class, typeSerializer, beanProperty);
        this._elementType = elementType;
        this._staticTyping = staticTyping;
        this._dynamicSerializers = PropertySerializerMap.emptyMap();
        this._elementSerializer = elementSerializer;
    }
    
    protected final JsonSerializer<Object> _findAndAddDynamic(final PropertySerializerMap propertySerializerMap, final JavaType javaType, final SerializerProvider serializerProvider) throws JsonMappingException {
        final PropertySerializerMap.SerializerAndMapResult andAddSerializer = propertySerializerMap.findAndAddSerializer(javaType, serializerProvider, this._property);
        if (propertySerializerMap != andAddSerializer.map) {
            this._dynamicSerializers = andAddSerializer.map;
        }
        return andAddSerializer.serializer;
    }
    
    protected final JsonSerializer<Object> _findAndAddDynamic(final PropertySerializerMap propertySerializerMap, final Class<?> clazz, final SerializerProvider serializerProvider) throws JsonMappingException {
        final PropertySerializerMap.SerializerAndMapResult andAddSerializer = propertySerializerMap.findAndAddSerializer(clazz, serializerProvider, this._property);
        if (propertySerializerMap != andAddSerializer.map) {
            this._dynamicSerializers = andAddSerializer.map;
        }
        return andAddSerializer.serializer;
    }
    
    @Override
    public ContainerSerializerBase<?> _withValueTypeSerializer(final TypeSerializer typeSerializer) {
        return new ObjectArraySerializer(this._elementType, this._staticTyping, typeSerializer, this._property, this._elementSerializer);
    }
    
    @Override
    public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) throws JsonMappingException {
        final ObjectNode schemaNode = this.createSchemaNode("array", true);
        if (type != null) {
            final JavaType constructType = serializerProvider.constructType(type);
            if (constructType.isArrayType()) {
                final Class<?> rawClass = ((ArrayType)constructType).getContentType().getRawClass();
                if (rawClass != Object.class) {
                    final JsonSerializer<Object> valueSerializer = serializerProvider.findValueSerializer(rawClass, this._property);
                    JsonNode jsonNode;
                    if (valueSerializer instanceof SchemaAware) {
                        jsonNode = ((SchemaAware)valueSerializer).getSchema(serializerProvider, null);
                    }
                    else {
                        jsonNode = JsonSchema.getDefaultSchemaNode();
                    }
                    schemaNode.put("items", jsonNode);
                    return schemaNode;
                }
                schemaNode.put("items", JsonSchema.getDefaultSchemaNode());
            }
        }
        return schemaNode;
    }
    
    @Override
    public void resolve(final SerializerProvider serializerProvider) throws JsonMappingException {
        if (this._staticTyping && this._elementSerializer == null) {
            this._elementSerializer = serializerProvider.findValueSerializer(this._elementType, this._property);
        }
    }
    
    public void serializeContents(final Object[] p0, final JsonGenerator p1, final SerializerProvider p2) throws IOException, JsonGenerationException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: arraylength    
        //     2: istore          4
        //     4: iload           4
        //     6: ifne            10
        //     9: return         
        //    10: aload_0        
        //    11: getfield        com/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer._elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
        //    14: ifnull          29
        //    17: aload_0        
        //    18: aload_1        
        //    19: aload_2        
        //    20: aload_3        
        //    21: aload_0        
        //    22: getfield        com/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer._elementSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
        //    25: invokevirtual   com/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer.serializeContentsUsing:([Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
        //    28: return         
        //    29: aload_0        
        //    30: getfield        com/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer._valueTypeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
        //    33: ifnull          44
        //    36: aload_0        
        //    37: aload_1        
        //    38: aload_2        
        //    39: aload_3        
        //    40: invokevirtual   com/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer.serializeTypedContents:([Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
        //    43: return         
        //    44: iconst_0       
        //    45: istore          5
        //    47: aconst_null    
        //    48: astore          6
        //    50: aload_0        
        //    51: getfield        com/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer._dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
        //    54: astore          12
        //    56: iload           5
        //    58: iload           4
        //    60: if_icmpge       9
        //    63: aload_1        
        //    64: iload           5
        //    66: aaload         
        //    67: astore          6
        //    69: aload           6
        //    71: ifnonnull       82
        //    74: aload_3        
        //    75: aload_2        
        //    76: invokevirtual   com/flurry/org/codehaus/jackson/map/SerializerProvider.defaultSerializeNull:(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
        //    79: goto            256
        //    82: aload           6
        //    84: invokevirtual   java/lang/Object.getClass:()Ljava/lang/Class;
        //    87: astore          15
        //    89: aload           12
        //    91: aload           15
        //    93: invokevirtual   com/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap.serializerFor:(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
        //    96: astore          16
        //    98: aload           16
        //   100: ifnonnull       132
        //   103: aload_0        
        //   104: getfield        com/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer._elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //   107: invokevirtual   com/flurry/org/codehaus/jackson/type/JavaType.hasGenericTypes:()Z
        //   110: ifeq            149
        //   113: aload_0        
        //   114: aload           12
        //   116: aload_3        
        //   117: aload_0        
        //   118: getfield        com/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer._elementType:Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //   121: aload           15
        //   123: invokevirtual   com/flurry/org/codehaus/jackson/map/SerializerProvider.constructSpecializedType:(Lcom/flurry/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //   126: aload_3        
        //   127: invokevirtual   com/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer._findAndAddDynamic:(Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
        //   130: astore          16
        //   132: aload           16
        //   134: aload           6
        //   136: aload_2        
        //   137: aload_3        
        //   138: invokevirtual   com/flurry/org/codehaus/jackson/map/JsonSerializer.serialize:(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
        //   141: goto            256
        //   144: astore          11
        //   146: aload           11
        //   148: athrow         
        //   149: aload_0        
        //   150: aload           12
        //   152: aload           15
        //   154: aload_3        
        //   155: invokevirtual   com/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer._findAndAddDynamic:(Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
        //   158: astore          17
        //   160: aload           17
        //   162: astore          16
        //   164: goto            132
        //   167: astore          7
        //   169: aload           7
        //   171: astore          8
        //   173: aconst_null    
        //   174: astore          9
        //   176: aload           8
        //   178: astore          10
        //   180: aload           10
        //   182: instanceof      Ljava/lang/reflect/InvocationTargetException;
        //   185: ifeq            206
        //   188: aload           10
        //   190: invokevirtual   java/lang/Throwable.getCause:()Ljava/lang/Throwable;
        //   193: ifnull          206
        //   196: aload           10
        //   198: invokevirtual   java/lang/Throwable.getCause:()Ljava/lang/Throwable;
        //   201: astore          10
        //   203: goto            180
        //   206: aload           10
        //   208: instanceof      Ljava/lang/Error;
        //   211: ifeq            220
        //   214: aload           10
        //   216: checkcast       Ljava/lang/Error;
        //   219: athrow         
        //   220: aload           10
        //   222: aload           9
        //   224: iload           5
        //   226: invokestatic    com/flurry/org/codehaus/jackson/map/JsonMappingException.wrapWithPath:(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        //   229: athrow         
        //   230: astore          14
        //   232: aload           14
        //   234: astore          8
        //   236: aload           6
        //   238: astore          9
        //   240: goto            176
        //   243: astore          13
        //   245: aload           13
        //   247: astore          8
        //   249: aload           6
        //   251: astore          9
        //   253: goto            176
        //   256: iinc            5, 1
        //   259: goto            56
        //    Exceptions:
        //  throws java.io.IOException
        //  throws com.flurry.org.codehaus.jackson.JsonGenerationException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  50     56     144    149    Ljava/io/IOException;
        //  50     56     167    176    Ljava/lang/Exception;
        //  63     69     144    149    Ljava/io/IOException;
        //  63     69     243    256    Ljava/lang/Exception;
        //  74     79     144    149    Ljava/io/IOException;
        //  74     79     230    243    Ljava/lang/Exception;
        //  82     98     144    149    Ljava/io/IOException;
        //  82     98     230    243    Ljava/lang/Exception;
        //  103    132    144    149    Ljava/io/IOException;
        //  103    132    230    243    Ljava/lang/Exception;
        //  132    141    144    149    Ljava/io/IOException;
        //  132    141    230    243    Ljava/lang/Exception;
        //  149    160    144    149    Ljava/io/IOException;
        //  149    160    230    243    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0082:
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
    
    public void serializeContentsUsing(final Object[] p0, final JsonGenerator p1, final SerializerProvider p2, final JsonSerializer<Object> p3) throws IOException, JsonGenerationException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: arraylength    
        //     2: istore          5
        //     4: aload_0        
        //     5: getfield        com/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer._valueTypeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
        //     8: astore          6
        //    10: iconst_0       
        //    11: istore          7
        //    13: aconst_null    
        //    14: astore          8
        //    16: iload           7
        //    18: iload           5
        //    20: if_icmpge       142
        //    23: aload_1        
        //    24: iload           7
        //    26: aaload         
        //    27: astore          8
        //    29: aload           8
        //    31: ifnonnull       42
        //    34: aload_3        
        //    35: aload_2        
        //    36: invokevirtual   com/flurry/org/codehaus/jackson/map/SerializerProvider.defaultSerializeNull:(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
        //    39: goto            156
        //    42: aload           6
        //    44: ifnonnull       64
        //    47: aload           4
        //    49: aload           8
        //    51: aload_2        
        //    52: aload_3        
        //    53: invokevirtual   com/flurry/org/codehaus/jackson/map/JsonSerializer.serialize:(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
        //    56: goto            156
        //    59: astore          13
        //    61: aload           13
        //    63: athrow         
        //    64: aload           4
        //    66: aload           8
        //    68: aload_2        
        //    69: aload_3        
        //    70: aload           6
        //    72: invokevirtual   com/flurry/org/codehaus/jackson/map/JsonSerializer.serializeWithType:(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
        //    75: goto            156
        //    78: astore          14
        //    80: aload           14
        //    82: astore          10
        //    84: aload           8
        //    86: astore          11
        //    88: aload           10
        //    90: astore          12
        //    92: aload           12
        //    94: instanceof      Ljava/lang/reflect/InvocationTargetException;
        //    97: ifeq            118
        //   100: aload           12
        //   102: invokevirtual   java/lang/Throwable.getCause:()Ljava/lang/Throwable;
        //   105: ifnull          118
        //   108: aload           12
        //   110: invokevirtual   java/lang/Throwable.getCause:()Ljava/lang/Throwable;
        //   113: astore          12
        //   115: goto            92
        //   118: aload           12
        //   120: instanceof      Ljava/lang/Error;
        //   123: ifeq            132
        //   126: aload           12
        //   128: checkcast       Ljava/lang/Error;
        //   131: athrow         
        //   132: aload           12
        //   134: aload           11
        //   136: iload           7
        //   138: invokestatic    com/flurry/org/codehaus/jackson/map/JsonMappingException.wrapWithPath:(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        //   141: athrow         
        //   142: return         
        //   143: astore          9
        //   145: aload           9
        //   147: astore          10
        //   149: aload           8
        //   151: astore          11
        //   153: goto            88
        //   156: iinc            7, 1
        //   159: goto            16
        //    Exceptions:
        //  throws java.io.IOException
        //  throws com.flurry.org.codehaus.jackson.JsonGenerationException
        //    Signature:
        //  ([Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;)V
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  23     29     59     64     Ljava/io/IOException;
        //  23     29     143    156    Ljava/lang/Exception;
        //  34     39     59     64     Ljava/io/IOException;
        //  34     39     78     88     Ljava/lang/Exception;
        //  47     56     59     64     Ljava/io/IOException;
        //  47     56     78     88     Ljava/lang/Exception;
        //  64     75     59     64     Ljava/io/IOException;
        //  64     75     78     88     Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0042:
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
    
    public void serializeTypedContents(final Object[] p0, final JsonGenerator p1, final SerializerProvider p2) throws IOException, JsonGenerationException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: arraylength    
        //     2: istore          4
        //     4: aload_0        
        //     5: getfield        com/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer._valueTypeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;
        //     8: astore          5
        //    10: iconst_0       
        //    11: istore          6
        //    13: aconst_null    
        //    14: astore          7
        //    16: aload_0        
        //    17: getfield        com/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer._dynamicSerializers:Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
        //    20: astore          13
        //    22: iload           6
        //    24: iload           4
        //    26: if_icmpge       162
        //    29: aload_1        
        //    30: iload           6
        //    32: aaload         
        //    33: astore          7
        //    35: aload           7
        //    37: ifnonnull       48
        //    40: aload_3        
        //    41: aload_2        
        //    42: invokevirtual   com/flurry/org/codehaus/jackson/map/SerializerProvider.defaultSerializeNull:(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
        //    45: goto            189
        //    48: aload           7
        //    50: invokevirtual   java/lang/Object.getClass:()Ljava/lang/Class;
        //    53: astore          16
        //    55: aload           13
        //    57: aload           16
        //    59: invokevirtual   com/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap.serializerFor:(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
        //    62: astore          17
        //    64: aload           17
        //    66: ifnonnull       80
        //    69: aload_0        
        //    70: aload           13
        //    72: aload           16
        //    74: aload_3        
        //    75: invokevirtual   com/flurry/org/codehaus/jackson/map/ser/std/ObjectArraySerializer._findAndAddDynamic:(Lcom/flurry/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
        //    78: astore          17
        //    80: aload           17
        //    82: aload           7
        //    84: aload_2        
        //    85: aload_3        
        //    86: aload           5
        //    88: invokevirtual   com/flurry/org/codehaus/jackson/map/JsonSerializer.serializeWithType:(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
        //    91: goto            189
        //    94: astore          12
        //    96: aload           12
        //    98: athrow         
        //    99: astore          8
        //   101: aload           8
        //   103: astore          9
        //   105: aconst_null    
        //   106: astore          10
        //   108: aload           9
        //   110: astore          11
        //   112: aload           11
        //   114: instanceof      Ljava/lang/reflect/InvocationTargetException;
        //   117: ifeq            138
        //   120: aload           11
        //   122: invokevirtual   java/lang/Throwable.getCause:()Ljava/lang/Throwable;
        //   125: ifnull          138
        //   128: aload           11
        //   130: invokevirtual   java/lang/Throwable.getCause:()Ljava/lang/Throwable;
        //   133: astore          11
        //   135: goto            112
        //   138: aload           11
        //   140: instanceof      Ljava/lang/Error;
        //   143: ifeq            152
        //   146: aload           11
        //   148: checkcast       Ljava/lang/Error;
        //   151: athrow         
        //   152: aload           11
        //   154: aload           10
        //   156: iload           6
        //   158: invokestatic    com/flurry/org/codehaus/jackson/map/JsonMappingException.wrapWithPath:(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        //   161: athrow         
        //   162: return         
        //   163: astore          15
        //   165: aload           15
        //   167: astore          9
        //   169: aload           7
        //   171: astore          10
        //   173: goto            108
        //   176: astore          14
        //   178: aload           14
        //   180: astore          9
        //   182: aload           7
        //   184: astore          10
        //   186: goto            108
        //   189: iinc            6, 1
        //   192: goto            22
        //    Exceptions:
        //  throws java.io.IOException
        //  throws com.flurry.org.codehaus.jackson.JsonGenerationException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  16     22     94     99     Ljava/io/IOException;
        //  16     22     99     108    Ljava/lang/Exception;
        //  29     35     94     99     Ljava/io/IOException;
        //  29     35     176    189    Ljava/lang/Exception;
        //  40     45     94     99     Ljava/io/IOException;
        //  40     45     163    176    Ljava/lang/Exception;
        //  48     64     94     99     Ljava/io/IOException;
        //  48     64     163    176    Ljava/lang/Exception;
        //  69     80     94     99     Ljava/io/IOException;
        //  69     80     163    176    Ljava/lang/Exception;
        //  80     91     94     99     Ljava/io/IOException;
        //  80     91     163    176    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0048:
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
}
