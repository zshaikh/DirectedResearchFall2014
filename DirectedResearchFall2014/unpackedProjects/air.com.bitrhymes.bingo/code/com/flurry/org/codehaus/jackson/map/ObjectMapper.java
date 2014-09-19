package com.flurry.org.codehaus.jackson.map;

import java.util.concurrent.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.schema.*;
import java.net.*;
import com.flurry.org.codehaus.jackson.map.ser.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.map.deser.*;
import com.flurry.org.codehaus.jackson.map.jsontype.*;
import java.text.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.annotate.*;
import com.flurry.org.codehaus.jackson.node.*;
import com.flurry.org.codehaus.jackson.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.util.*;
import com.flurry.org.codehaus.jackson.io.*;
import com.flurry.org.codehaus.jackson.map.jsontype.impl.*;
import java.util.*;

public class ObjectMapper extends ObjectCodec implements Versioned
{
    protected static final AnnotationIntrospector DEFAULT_ANNOTATION_INTROSPECTOR;
    protected static final ClassIntrospector<? extends BeanDescription> DEFAULT_INTROSPECTOR;
    private static final JavaType JSON_NODE_TYPE;
    protected static final VisibilityChecker<?> STD_VISIBILITY_CHECKER;
    protected DeserializationConfig _deserializationConfig;
    protected DeserializerProvider _deserializerProvider;
    protected InjectableValues _injectableValues;
    protected final JsonFactory _jsonFactory;
    protected final ConcurrentHashMap<JavaType, JsonDeserializer<Object>> _rootDeserializers;
    protected SerializationConfig _serializationConfig;
    protected SerializerFactory _serializerFactory;
    protected SerializerProvider _serializerProvider;
    protected SubtypeResolver _subtypeResolver;
    protected TypeFactory _typeFactory;
    
    static {
        JSON_NODE_TYPE = SimpleType.constructUnsafe(JsonNode.class);
        DEFAULT_INTROSPECTOR = BasicClassIntrospector.instance;
        DEFAULT_ANNOTATION_INTROSPECTOR = new JacksonAnnotationIntrospector();
        STD_VISIBILITY_CHECKER = VisibilityChecker.Std.defaultInstance();
    }
    
    public ObjectMapper() {
        this(null, null, null);
    }
    
    public ObjectMapper(final JsonFactory jsonFactory) {
        this(jsonFactory, null, null);
    }
    
    public ObjectMapper(final JsonFactory jsonFactory, final SerializerProvider serializerProvider, final DeserializerProvider deserializerProvider) {
        this(jsonFactory, serializerProvider, deserializerProvider, null, null);
    }
    
    public ObjectMapper(final JsonFactory jsonFactory, final SerializerProvider serializerProvider, final DeserializerProvider deserializerProvider, final SerializationConfig serializationConfig, final DeserializationConfig deserializationConfig) {
        super();
        this._rootDeserializers = new ConcurrentHashMap<JavaType, JsonDeserializer<Object>>(64, 0.6f, 2);
        if (jsonFactory == null) {
            this._jsonFactory = new MappingJsonFactory(this);
        }
        else {
            this._jsonFactory = jsonFactory;
            if (jsonFactory.getCodec() == null) {
                this._jsonFactory.setCodec(this);
            }
        }
        this._typeFactory = TypeFactory.defaultInstance();
        SerializationConfig serializationConfig2;
        if (serializationConfig != null) {
            serializationConfig2 = serializationConfig;
        }
        else {
            serializationConfig2 = new SerializationConfig(ObjectMapper.DEFAULT_INTROSPECTOR, ObjectMapper.DEFAULT_ANNOTATION_INTROSPECTOR, ObjectMapper.STD_VISIBILITY_CHECKER, null, null, this._typeFactory, null);
        }
        this._serializationConfig = serializationConfig2;
        DeserializationConfig deserializationConfig2;
        if (deserializationConfig != null) {
            deserializationConfig2 = deserializationConfig;
        }
        else {
            deserializationConfig2 = new DeserializationConfig(ObjectMapper.DEFAULT_INTROSPECTOR, ObjectMapper.DEFAULT_ANNOTATION_INTROSPECTOR, ObjectMapper.STD_VISIBILITY_CHECKER, null, null, this._typeFactory, null);
        }
        this._deserializationConfig = deserializationConfig2;
        SerializerProvider serializerProvider2;
        if (serializerProvider == null) {
            serializerProvider2 = new StdSerializerProvider();
        }
        else {
            serializerProvider2 = serializerProvider;
        }
        this._serializerProvider = serializerProvider2;
        DeserializerProvider deserializerProvider2;
        if (deserializerProvider == null) {
            deserializerProvider2 = new StdDeserializerProvider();
        }
        else {
            deserializerProvider2 = deserializerProvider;
        }
        this._deserializerProvider = deserializerProvider2;
        this._serializerFactory = BeanSerializerFactory.instance;
    }
    
    public ObjectMapper(final SerializerFactory serializerFactory) {
        this(null, null, null);
        this.setSerializerFactory(serializerFactory);
    }
    
    private final void _configAndWriteCloseable(final JsonGenerator p0, final Object p1, final SerializationConfig p2) throws IOException, JsonGenerationException, JsonMappingException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_2        
        //     1: checkcast       Ljava/io/Closeable;
        //     4: astore          4
        //     6: aload_0        
        //     7: getfield        com/flurry/org/codehaus/jackson/map/ObjectMapper._serializerProvider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
        //    10: aload_3        
        //    11: aload_1        
        //    12: aload_2        
        //    13: aload_0        
        //    14: getfield        com/flurry/org/codehaus/jackson/map/ObjectMapper._serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;
        //    17: invokevirtual   com/flurry/org/codehaus/jackson/map/SerializerProvider.serializeValue:(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;)V
        //    20: aload_1        
        //    21: astore          8
        //    23: aconst_null    
        //    24: astore_1       
        //    25: aload           8
        //    27: invokevirtual   com/flurry/org/codehaus/jackson/JsonGenerator.close:()V
        //    30: aload           4
        //    32: astore          9
        //    34: aconst_null    
        //    35: astore          4
        //    37: aload           9
        //    39: invokeinterface java/io/Closeable.close:()V
        //    44: iconst_0       
        //    45: ifeq            52
        //    48: aconst_null    
        //    49: invokevirtual   com/flurry/org/codehaus/jackson/JsonGenerator.close:()V
        //    52: iconst_0       
        //    53: ifeq            62
        //    56: aconst_null    
        //    57: invokeinterface java/io/Closeable.close:()V
        //    62: return         
        //    63: astore          5
        //    65: aload_1        
        //    66: ifnull          73
        //    69: aload_1        
        //    70: invokevirtual   com/flurry/org/codehaus/jackson/JsonGenerator.close:()V
        //    73: aload           4
        //    75: ifnull          85
        //    78: aload           4
        //    80: invokeinterface java/io/Closeable.close:()V
        //    85: aload           5
        //    87: athrow         
        //    88: astore          11
        //    90: goto            52
        //    93: astore          10
        //    95: return         
        //    96: astore          7
        //    98: goto            73
        //   101: astore          6
        //   103: goto            85
        //    Exceptions:
        //  throws java.io.IOException
        //  throws com.flurry.org.codehaus.jackson.JsonGenerationException
        //  throws com.flurry.org.codehaus.jackson.map.JsonMappingException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  6      20     63     106    Any
        //  25     30     63     106    Any
        //  37     44     63     106    Any
        //  48     52     88     93     Ljava/io/IOException;
        //  56     62     93     96     Ljava/io/IOException;
        //  69     73     96     101    Ljava/io/IOException;
        //  78     85     101    106    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 51, Size: 51
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
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
    
    private final void _writeCloseableValue(final JsonGenerator p0, final Object p1, final SerializationConfig p2) throws IOException, JsonGenerationException, JsonMappingException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_2        
        //     1: checkcast       Ljava/io/Closeable;
        //     4: astore          4
        //     6: aload_0        
        //     7: getfield        com/flurry/org/codehaus/jackson/map/ObjectMapper._serializerProvider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
        //    10: aload_3        
        //    11: aload_1        
        //    12: aload_2        
        //    13: aload_0        
        //    14: getfield        com/flurry/org/codehaus/jackson/map/ObjectMapper._serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;
        //    17: invokevirtual   com/flurry/org/codehaus/jackson/map/SerializerProvider.serializeValue:(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;)V
        //    20: aload_3        
        //    21: getstatic       com/flurry/org/codehaus/jackson/map/SerializationConfig$Feature.FLUSH_AFTER_WRITE_VALUE:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;
        //    24: invokevirtual   com/flurry/org/codehaus/jackson/map/SerializationConfig.isEnabled:(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z
        //    27: ifeq            34
        //    30: aload_1        
        //    31: invokevirtual   com/flurry/org/codehaus/jackson/JsonGenerator.flush:()V
        //    34: aload           4
        //    36: astore          7
        //    38: aconst_null    
        //    39: astore          4
        //    41: aload           7
        //    43: invokeinterface java/io/Closeable.close:()V
        //    48: iconst_0       
        //    49: ifeq            58
        //    52: aconst_null    
        //    53: invokeinterface java/io/Closeable.close:()V
        //    58: return         
        //    59: astore          5
        //    61: aload           4
        //    63: ifnull          73
        //    66: aload           4
        //    68: invokeinterface java/io/Closeable.close:()V
        //    73: aload           5
        //    75: athrow         
        //    76: astore          8
        //    78: return         
        //    79: astore          6
        //    81: goto            73
        //    Exceptions:
        //  throws java.io.IOException
        //  throws com.flurry.org.codehaus.jackson.JsonGenerationException
        //  throws com.flurry.org.codehaus.jackson.map.JsonMappingException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  6      34     59     76     Any
        //  41     48     59     76     Any
        //  52     58     76     79     Ljava/io/IOException;
        //  66     73     79     84     Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 39, Size: 39
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
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
    
    protected final void _configAndWriteValue(final JsonGenerator jsonGenerator, final Object o) throws IOException, JsonGenerationException, JsonMappingException {
        final SerializationConfig copySerializationConfig = this.copySerializationConfig();
        if (copySerializationConfig.isEnabled(SerializationConfig.Feature.INDENT_OUTPUT)) {
            jsonGenerator.useDefaultPrettyPrinter();
        }
        if (copySerializationConfig.isEnabled(SerializationConfig.Feature.CLOSE_CLOSEABLE) && o instanceof Closeable) {
            this._configAndWriteCloseable(jsonGenerator, o, copySerializationConfig);
        }
        else {
            boolean b = false;
            try {
                this._serializerProvider.serializeValue(copySerializationConfig, jsonGenerator, o, this._serializerFactory);
                b = true;
                jsonGenerator.close();
                if (!b) {
                    try {
                        jsonGenerator.close();
                    }
                    catch (IOException ex) {}
                }
            }
            finally {
                Label_0093: {
                    if (b) {
                        break Label_0093;
                    }
                    try {
                        jsonGenerator.close();
                    }
                    catch (IOException ex2) {}
                }
            }
        }
    }
    
    protected final void _configAndWriteValue(final JsonGenerator jsonGenerator, final Object o, final Class<?> clazz) throws IOException, JsonGenerationException, JsonMappingException {
        final SerializationConfig withView = this.copySerializationConfig().withView(clazz);
        if (withView.isEnabled(SerializationConfig.Feature.INDENT_OUTPUT)) {
            jsonGenerator.useDefaultPrettyPrinter();
        }
        if (withView.isEnabled(SerializationConfig.Feature.CLOSE_CLOSEABLE) && o instanceof Closeable) {
            this._configAndWriteCloseable(jsonGenerator, o, withView);
        }
        else {
            boolean b = false;
            try {
                this._serializerProvider.serializeValue(withView, jsonGenerator, o, this._serializerFactory);
                b = true;
                jsonGenerator.close();
                if (!b) {
                    try {
                        jsonGenerator.close();
                    }
                    catch (IOException ex) {}
                }
            }
            finally {
                Label_0102: {
                    if (b) {
                        break Label_0102;
                    }
                    try {
                        jsonGenerator.close();
                    }
                    catch (IOException ex2) {}
                }
            }
        }
    }
    
    protected Object _convert(final Object o, final JavaType javaType) throws IllegalArgumentException {
        if (o == null) {
            return null;
        }
        final TokenBuffer tokenBuffer = new TokenBuffer(this);
        try {
            this.writeValue(tokenBuffer, o);
            final JsonParser parser = tokenBuffer.asParser();
            final Object value = this.readValue(parser, javaType);
            parser.close();
            return value;
        }
        catch (IOException cause) {
            throw new IllegalArgumentException(cause.getMessage(), cause);
        }
    }
    
    protected DeserializationContext _createDeserializationContext(final JsonParser jsonParser, final DeserializationConfig deserializationConfig) {
        return new StdDeserializationContext(deserializationConfig, jsonParser, this._deserializerProvider, this._injectableValues);
    }
    
    protected PrettyPrinter _defaultPrettyPrinter() {
        return new DefaultPrettyPrinter();
    }
    
    protected JsonDeserializer<Object> _findRootDeserializer(final DeserializationConfig deserializationConfig, final JavaType key) throws JsonMappingException {
        final JsonDeserializer<Object> jsonDeserializer = this._rootDeserializers.get(key);
        if (jsonDeserializer != null) {
            return jsonDeserializer;
        }
        final JsonDeserializer<Object> typedValueDeserializer = this._deserializerProvider.findTypedValueDeserializer(deserializationConfig, key, null);
        if (typedValueDeserializer == null) {
            throw new JsonMappingException("Can not find a deserializer for type " + key);
        }
        this._rootDeserializers.put(key, typedValueDeserializer);
        return typedValueDeserializer;
    }
    
    protected JsonToken _initForReading(final JsonParser jsonParser) throws IOException, JsonParseException, JsonMappingException {
        JsonToken jsonToken = jsonParser.getCurrentToken();
        if (jsonToken == null) {
            jsonToken = jsonParser.nextToken();
            if (jsonToken == null) {
                throw new EOFException("No content to map to Object due to end of input");
            }
        }
        return jsonToken;
    }
    
    protected Object _readMapAndClose(final JsonParser p0, final JavaType p1) throws IOException, JsonParseException, JsonMappingException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: aload_1        
        //     2: invokevirtual   com/flurry/org/codehaus/jackson/map/ObjectMapper._initForReading:(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonToken;
        //     5: astore          5
        //     7: aload           5
        //     9: getstatic       com/flurry/org/codehaus/jackson/JsonToken.VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;
        //    12: if_acmpne       40
        //    15: aload_0        
        //    16: aload_0        
        //    17: getfield        com/flurry/org/codehaus/jackson/map/ObjectMapper._deserializationConfig:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
        //    20: aload_2        
        //    21: invokevirtual   com/flurry/org/codehaus/jackson/map/ObjectMapper._findRootDeserializer:(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
        //    24: invokevirtual   com/flurry/org/codehaus/jackson/map/JsonDeserializer.getNullValue:()Ljava/lang/Object;
        //    27: astore          6
        //    29: aload_1        
        //    30: invokevirtual   com/flurry/org/codehaus/jackson/JsonParser.clearCurrentToken:()V
        //    33: aload_1        
        //    34: invokevirtual   com/flurry/org/codehaus/jackson/JsonParser.close:()V
        //    37: aload           6
        //    39: areturn        
        //    40: aload           5
        //    42: getstatic       com/flurry/org/codehaus/jackson/JsonToken.END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;
        //    45: if_acmpeq       143
        //    48: aload           5
        //    50: getstatic       com/flurry/org/codehaus/jackson/JsonToken.END_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;
        //    53: if_acmpne       59
        //    56: goto            143
        //    59: aload_0        
        //    60: invokevirtual   com/flurry/org/codehaus/jackson/map/ObjectMapper.copyDeserializationConfig:()Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
        //    63: astore          8
        //    65: aload_0        
        //    66: aload_1        
        //    67: aload           8
        //    69: invokevirtual   com/flurry/org/codehaus/jackson/map/ObjectMapper._createDeserializationContext:(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
        //    72: astore          9
        //    74: aload_0        
        //    75: aload           8
        //    77: aload_2        
        //    78: invokevirtual   com/flurry/org/codehaus/jackson/map/ObjectMapper._findRootDeserializer:(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
        //    81: astore          10
        //    83: aload           8
        //    85: getstatic       com/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature.UNWRAP_ROOT_VALUE:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;
        //    88: invokevirtual   com/flurry/org/codehaus/jackson/map/DeserializationConfig.isEnabled:(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z
        //    91: ifeq            109
        //    94: aload_0        
        //    95: aload_1        
        //    96: aload_2        
        //    97: aload           9
        //    99: aload           10
        //   101: invokevirtual   com/flurry/org/codehaus/jackson/map/ObjectMapper._unwrapAndDeserialize:(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Ljava/lang/Object;
        //   104: astore          6
        //   106: goto            29
        //   109: aload           10
        //   111: aload_1        
        //   112: aload           9
        //   114: invokevirtual   com/flurry/org/codehaus/jackson/map/JsonDeserializer.deserialize:(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
        //   117: astore          11
        //   119: aload           11
        //   121: astore          6
        //   123: goto            29
        //   126: astore_3       
        //   127: aload_1        
        //   128: invokevirtual   com/flurry/org/codehaus/jackson/JsonParser.close:()V
        //   131: aload_3        
        //   132: athrow         
        //   133: astore          7
        //   135: aload           6
        //   137: areturn        
        //   138: astore          4
        //   140: goto            131
        //   143: aconst_null    
        //   144: astore          6
        //   146: goto            29
        //    Exceptions:
        //  throws java.io.IOException
        //  throws com.flurry.org.codehaus.jackson.JsonParseException
        //  throws com.flurry.org.codehaus.jackson.map.JsonMappingException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      29     126    133    Any
        //  29     33     126    133    Any
        //  33     37     133    138    Ljava/io/IOException;
        //  40     56     126    133    Any
        //  59     106    126    133    Any
        //  109    119    126    133    Any
        //  127    131    138    143    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 73, Size: 73
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
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
    
    protected Object _readValue(final DeserializationConfig deserializationConfig, final JsonParser jsonParser, final JavaType javaType) throws IOException, JsonParseException, JsonMappingException {
        final JsonToken initForReading = this._initForReading(jsonParser);
        Object o;
        if (initForReading == JsonToken.VALUE_NULL) {
            o = this._findRootDeserializer(deserializationConfig, javaType).getNullValue();
        }
        else if (initForReading == JsonToken.END_ARRAY || initForReading == JsonToken.END_OBJECT) {
            o = null;
        }
        else {
            final DeserializationContext createDeserializationContext = this._createDeserializationContext(jsonParser, deserializationConfig);
            final JsonDeserializer<Object> findRootDeserializer = this._findRootDeserializer(deserializationConfig, javaType);
            if (deserializationConfig.isEnabled(DeserializationConfig.Feature.UNWRAP_ROOT_VALUE)) {
                o = this._unwrapAndDeserialize(jsonParser, javaType, createDeserializationContext, findRootDeserializer);
            }
            else {
                o = findRootDeserializer.deserialize(jsonParser, createDeserializationContext);
            }
        }
        jsonParser.clearCurrentToken();
        return o;
    }
    
    protected Object _unwrapAndDeserialize(final JsonParser jsonParser, final JavaType obj, final DeserializationContext deserializationContext, final JsonDeserializer<Object> jsonDeserializer) throws IOException, JsonParseException, JsonMappingException {
        final SerializedString expectedRootName = this._deserializerProvider.findExpectedRootName(deserializationContext.getConfig(), obj);
        if (jsonParser.getCurrentToken() != JsonToken.START_OBJECT) {
            throw JsonMappingException.from(jsonParser, "Current token not START_OBJECT (needed to unwrap root name '" + expectedRootName + "'), but " + jsonParser.getCurrentToken());
        }
        if (jsonParser.nextToken() != JsonToken.FIELD_NAME) {
            throw JsonMappingException.from(jsonParser, "Current token not FIELD_NAME (to contain expected root name '" + expectedRootName + "'), but " + jsonParser.getCurrentToken());
        }
        final String currentName = jsonParser.getCurrentName();
        if (!expectedRootName.getValue().equals(currentName)) {
            throw JsonMappingException.from(jsonParser, "Root name '" + currentName + "' does not match expected ('" + expectedRootName + "') for type " + obj);
        }
        jsonParser.nextToken();
        final Object deserialize = jsonDeserializer.deserialize(jsonParser, deserializationContext);
        if (jsonParser.nextToken() != JsonToken.END_OBJECT) {
            throw JsonMappingException.from(jsonParser, "Current token not END_OBJECT (to match wrapper object with root name '" + expectedRootName + "'), but " + jsonParser.getCurrentToken());
        }
        return deserialize;
    }
    
    public boolean canDeserialize(final JavaType javaType) {
        return this._deserializerProvider.hasValueDeserializerFor(this.copyDeserializationConfig(), javaType);
    }
    
    public boolean canSerialize(final Class<?> clazz) {
        return this._serializerProvider.hasSerializerFor(this.copySerializationConfig(), clazz, this._serializerFactory);
    }
    
    public ObjectMapper configure(final JsonGenerator.Feature feature, final boolean b) {
        this._jsonFactory.configure(feature, b);
        return this;
    }
    
    public ObjectMapper configure(final JsonParser.Feature feature, final boolean b) {
        this._jsonFactory.configure(feature, b);
        return this;
    }
    
    public ObjectMapper configure(final DeserializationConfig.Feature feature, final boolean b) {
        this._deserializationConfig.set(feature, b);
        return this;
    }
    
    public ObjectMapper configure(final SerializationConfig.Feature feature, final boolean b) {
        this._serializationConfig.set(feature, b);
        return this;
    }
    
    public JavaType constructType(final Type type) {
        return this._typeFactory.constructType(type);
    }
    
    public <T> T convertValue(final Object o, final JavaType javaType) throws IllegalArgumentException {
        return (T)this._convert(o, javaType);
    }
    
    public <T> T convertValue(final Object o, final TypeReference typeReference) throws IllegalArgumentException {
        return (T)this._convert(o, this._typeFactory.constructType(typeReference));
    }
    
    public <T> T convertValue(final Object o, final Class<T> clazz) throws IllegalArgumentException {
        return (T)this._convert(o, this._typeFactory.constructType(clazz));
    }
    
    public DeserializationConfig copyDeserializationConfig() {
        return this._deserializationConfig.createUnshared(this._subtypeResolver).passSerializationFeatures(this._serializationConfig._featureFlags);
    }
    
    public SerializationConfig copySerializationConfig() {
        return this._serializationConfig.createUnshared(this._subtypeResolver);
    }
    
    @Override
    public ArrayNode createArrayNode() {
        return this._deserializationConfig.getNodeFactory().arrayNode();
    }
    
    @Override
    public ObjectNode createObjectNode() {
        return this._deserializationConfig.getNodeFactory().objectNode();
    }
    
    @Deprecated
    public ObjectWriter defaultPrettyPrintingWriter() {
        return this.writerWithDefaultPrettyPrinter();
    }
    
    public ObjectMapper disable(final DeserializationConfig.Feature... array) {
        this._deserializationConfig = this._deserializationConfig.without(array);
        return this;
    }
    
    public ObjectMapper disable(final SerializationConfig.Feature... array) {
        this._serializationConfig = this._serializationConfig.without(array);
        return this;
    }
    
    public ObjectMapper disableDefaultTyping() {
        return this.setDefaultTyping(null);
    }
    
    public ObjectMapper enable(final DeserializationConfig.Feature... array) {
        this._deserializationConfig = this._deserializationConfig.with(array);
        return this;
    }
    
    public ObjectMapper enable(final SerializationConfig.Feature... array) {
        this._serializationConfig = this._serializationConfig.with(array);
        return this;
    }
    
    public ObjectMapper enableDefaultTyping() {
        return this.enableDefaultTyping(DefaultTyping.OBJECT_AND_NON_CONCRETE);
    }
    
    public ObjectMapper enableDefaultTyping(final DefaultTyping defaultTyping) {
        return this.enableDefaultTyping(defaultTyping, JsonTypeInfo.As.WRAPPER_ARRAY);
    }
    
    public ObjectMapper enableDefaultTyping(final DefaultTyping defaultTyping, final JsonTypeInfo.As as) {
        return this.setDefaultTyping(((TypeResolverBuilder<TypeResolverBuilder<StdTypeResolverBuilder>>)new DefaultTypeResolverBuilder(defaultTyping)).init(JsonTypeInfo.Id.CLASS, null).inclusion(as));
    }
    
    public ObjectMapper enableDefaultTypingAsProperty(final DefaultTyping defaultTyping, final String s) {
        return this.setDefaultTyping(((TypeResolverBuilder<TypeResolverBuilder<?>>)((TypeResolverBuilder<TypeResolverBuilder<StdTypeResolverBuilder>>)new DefaultTypeResolverBuilder(defaultTyping)).init(JsonTypeInfo.Id.CLASS, null).inclusion(JsonTypeInfo.As.PROPERTY)).typeProperty(s));
    }
    
    @Deprecated
    public ObjectWriter filteredWriter(final FilterProvider filterProvider) {
        return this.writer(filterProvider);
    }
    
    public JsonSchema generateJsonSchema(final Class<?> clazz) throws JsonMappingException {
        return this.generateJsonSchema(clazz, this.copySerializationConfig());
    }
    
    public JsonSchema generateJsonSchema(final Class<?> clazz, final SerializationConfig serializationConfig) throws JsonMappingException {
        return this._serializerProvider.generateJsonSchema(clazz, serializationConfig, this._serializerFactory);
    }
    
    public DeserializationConfig getDeserializationConfig() {
        return this._deserializationConfig;
    }
    
    public DeserializerProvider getDeserializerProvider() {
        return this._deserializerProvider;
    }
    
    public JsonFactory getJsonFactory() {
        return this._jsonFactory;
    }
    
    public JsonNodeFactory getNodeFactory() {
        return this._deserializationConfig.getNodeFactory();
    }
    
    public SerializationConfig getSerializationConfig() {
        return this._serializationConfig;
    }
    
    public SerializerProvider getSerializerProvider() {
        return this._serializerProvider;
    }
    
    public SubtypeResolver getSubtypeResolver() {
        if (this._subtypeResolver == null) {
            this._subtypeResolver = new StdSubtypeResolver();
        }
        return this._subtypeResolver;
    }
    
    public TypeFactory getTypeFactory() {
        return this._typeFactory;
    }
    
    public VisibilityChecker<?> getVisibilityChecker() {
        return this._serializationConfig.getDefaultVisibilityChecker();
    }
    
    public boolean isEnabled(final JsonGenerator.Feature feature) {
        return this._jsonFactory.isEnabled(feature);
    }
    
    public boolean isEnabled(final JsonParser.Feature feature) {
        return this._jsonFactory.isEnabled(feature);
    }
    
    public boolean isEnabled(final DeserializationConfig.Feature feature) {
        return this._deserializationConfig.isEnabled(feature);
    }
    
    public boolean isEnabled(final SerializationConfig.Feature feature) {
        return this._serializationConfig.isEnabled(feature);
    }
    
    @Deprecated
    public ObjectWriter prettyPrintingWriter(final PrettyPrinter prettyPrinter) {
        return this.writer(prettyPrinter);
    }
    
    @Override
    public JsonNode readTree(final JsonParser jsonParser) throws IOException, JsonProcessingException {
        final DeserializationConfig copyDeserializationConfig = this.copyDeserializationConfig();
        if (jsonParser.getCurrentToken() == null && jsonParser.nextToken() == null) {
            return null;
        }
        final JsonNode jsonNode = (JsonNode)this._readValue(copyDeserializationConfig, jsonParser, ObjectMapper.JSON_NODE_TYPE);
        if (jsonNode == null) {
            return this.getNodeFactory().nullNode();
        }
        return jsonNode;
    }
    
    public JsonNode readTree(final JsonParser jsonParser, final DeserializationConfig deserializationConfig) throws IOException, JsonProcessingException {
        final JsonNode jsonNode = (JsonNode)this._readValue(deserializationConfig, jsonParser, ObjectMapper.JSON_NODE_TYPE);
        if (jsonNode == null) {
            return NullNode.instance;
        }
        return jsonNode;
    }
    
    public JsonNode readTree(final File file) throws IOException, JsonProcessingException {
        final JsonNode jsonNode = (JsonNode)this._readMapAndClose(this._jsonFactory.createJsonParser(file), ObjectMapper.JSON_NODE_TYPE);
        if (jsonNode == null) {
            return NullNode.instance;
        }
        return jsonNode;
    }
    
    public JsonNode readTree(final InputStream inputStream) throws IOException, JsonProcessingException {
        final JsonNode jsonNode = (JsonNode)this._readMapAndClose(this._jsonFactory.createJsonParser(inputStream), ObjectMapper.JSON_NODE_TYPE);
        if (jsonNode == null) {
            return NullNode.instance;
        }
        return jsonNode;
    }
    
    public JsonNode readTree(final Reader reader) throws IOException, JsonProcessingException {
        final JsonNode jsonNode = (JsonNode)this._readMapAndClose(this._jsonFactory.createJsonParser(reader), ObjectMapper.JSON_NODE_TYPE);
        if (jsonNode == null) {
            return NullNode.instance;
        }
        return jsonNode;
    }
    
    public JsonNode readTree(final String s) throws IOException, JsonProcessingException {
        final JsonNode jsonNode = (JsonNode)this._readMapAndClose(this._jsonFactory.createJsonParser(s), ObjectMapper.JSON_NODE_TYPE);
        if (jsonNode == null) {
            return NullNode.instance;
        }
        return jsonNode;
    }
    
    public JsonNode readTree(final URL url) throws IOException, JsonProcessingException {
        final JsonNode jsonNode = (JsonNode)this._readMapAndClose(this._jsonFactory.createJsonParser(url), ObjectMapper.JSON_NODE_TYPE);
        if (jsonNode == null) {
            return NullNode.instance;
        }
        return jsonNode;
    }
    
    public JsonNode readTree(final byte[] array) throws IOException, JsonProcessingException {
        final JsonNode jsonNode = (JsonNode)this._readMapAndClose(this._jsonFactory.createJsonParser(array), ObjectMapper.JSON_NODE_TYPE);
        if (jsonNode == null) {
            return NullNode.instance;
        }
        return jsonNode;
    }
    
    public <T> T readValue(final JsonNode jsonNode, final JavaType javaType) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readValue(this.copyDeserializationConfig(), this.treeAsTokens(jsonNode), javaType);
    }
    
    public <T> T readValue(final JsonNode jsonNode, final TypeReference typeReference) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readValue(this.copyDeserializationConfig(), this.treeAsTokens(jsonNode), this._typeFactory.constructType(typeReference));
    }
    
    public <T> T readValue(final JsonNode jsonNode, final Class<T> clazz) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readValue(this.copyDeserializationConfig(), this.treeAsTokens(jsonNode), this._typeFactory.constructType(clazz));
    }
    
    @Override
    public <T> T readValue(final JsonParser jsonParser, final JavaType javaType) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readValue(this.copyDeserializationConfig(), jsonParser, javaType);
    }
    
    public <T> T readValue(final JsonParser jsonParser, final JavaType javaType, final DeserializationConfig deserializationConfig) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readValue(deserializationConfig, jsonParser, javaType);
    }
    
    @Override
    public <T> T readValue(final JsonParser jsonParser, final TypeReference<?> typeReference) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readValue(this.copyDeserializationConfig(), jsonParser, this._typeFactory.constructType(typeReference));
    }
    
    public <T> T readValue(final JsonParser jsonParser, final TypeReference<?> typeReference, final DeserializationConfig deserializationConfig) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readValue(deserializationConfig, jsonParser, this._typeFactory.constructType(typeReference));
    }
    
    @Override
    public <T> T readValue(final JsonParser jsonParser, final Class<T> clazz) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readValue(this.copyDeserializationConfig(), jsonParser, this._typeFactory.constructType(clazz));
    }
    
    public <T> T readValue(final JsonParser jsonParser, final Class<T> clazz, final DeserializationConfig deserializationConfig) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readValue(deserializationConfig, jsonParser, this._typeFactory.constructType(clazz));
    }
    
    public <T> T readValue(final File file, final JavaType javaType) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(file), javaType);
    }
    
    public <T> T readValue(final File file, final TypeReference typeReference) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(file), this._typeFactory.constructType(typeReference));
    }
    
    public <T> T readValue(final File file, final Class<T> clazz) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(file), this._typeFactory.constructType(clazz));
    }
    
    public <T> T readValue(final InputStream inputStream, final JavaType javaType) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(inputStream), javaType);
    }
    
    public <T> T readValue(final InputStream inputStream, final TypeReference typeReference) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(inputStream), this._typeFactory.constructType(typeReference));
    }
    
    public <T> T readValue(final InputStream inputStream, final Class<T> clazz) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(inputStream), this._typeFactory.constructType(clazz));
    }
    
    public <T> T readValue(final Reader reader, final JavaType javaType) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(reader), javaType);
    }
    
    public <T> T readValue(final Reader reader, final TypeReference typeReference) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(reader), this._typeFactory.constructType(typeReference));
    }
    
    public <T> T readValue(final Reader reader, final Class<T> clazz) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(reader), this._typeFactory.constructType(clazz));
    }
    
    public <T> T readValue(final String s, final JavaType javaType) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(s), javaType);
    }
    
    public <T> T readValue(final String s, final TypeReference typeReference) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(s), this._typeFactory.constructType(typeReference));
    }
    
    public <T> T readValue(final String s, final Class<T> clazz) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(s), this._typeFactory.constructType(clazz));
    }
    
    public <T> T readValue(final URL url, final JavaType javaType) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(url), javaType);
    }
    
    public <T> T readValue(final URL url, final TypeReference typeReference) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(url), this._typeFactory.constructType(typeReference));
    }
    
    public <T> T readValue(final URL url, final Class<T> clazz) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(url), this._typeFactory.constructType(clazz));
    }
    
    public <T> T readValue(final byte[] array, final int n, final int n2, final JavaType javaType) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(array, n, n2), javaType);
    }
    
    public <T> T readValue(final byte[] array, final int n, final int n2, final TypeReference typeReference) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(array, n, n2), this._typeFactory.constructType(typeReference));
    }
    
    public <T> T readValue(final byte[] array, final int n, final int n2, final Class<T> clazz) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(array, n, n2), this._typeFactory.constructType(clazz));
    }
    
    public <T> T readValue(final byte[] array, final JavaType javaType) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(array), javaType);
    }
    
    public <T> T readValue(final byte[] array, final TypeReference typeReference) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(array), this._typeFactory.constructType(typeReference));
    }
    
    public <T> T readValue(final byte[] array, final Class<T> clazz) throws IOException, JsonParseException, JsonMappingException {
        return (T)this._readMapAndClose(this._jsonFactory.createJsonParser(array), this._typeFactory.constructType(clazz));
    }
    
    @Override
    public <T> MappingIterator<T> readValues(final JsonParser jsonParser, final JavaType javaType) throws IOException, JsonProcessingException {
        final DeserializationConfig copyDeserializationConfig = this.copyDeserializationConfig();
        return new MappingIterator<T>(javaType, jsonParser, this._createDeserializationContext(jsonParser, copyDeserializationConfig), this._findRootDeserializer(copyDeserializationConfig, javaType), false, null);
    }
    
    @Override
    public <T> MappingIterator<T> readValues(final JsonParser jsonParser, final TypeReference<?> typeReference) throws IOException, JsonProcessingException {
        return this.readValues(jsonParser, this._typeFactory.constructType(typeReference));
    }
    
    @Override
    public <T> MappingIterator<T> readValues(final JsonParser jsonParser, final Class<T> clazz) throws IOException, JsonProcessingException {
        return this.readValues(jsonParser, this._typeFactory.constructType(clazz));
    }
    
    public ObjectReader reader() {
        return new ObjectReader(this, this.copyDeserializationConfig()).withInjectableValues(this._injectableValues);
    }
    
    public ObjectReader reader(final FormatSchema formatSchema) {
        return new ObjectReader(this, this.copyDeserializationConfig(), null, null, formatSchema, this._injectableValues);
    }
    
    public ObjectReader reader(final InjectableValues injectableValues) {
        return new ObjectReader(this, this.copyDeserializationConfig(), null, null, null, injectableValues);
    }
    
    public ObjectReader reader(final JsonNodeFactory jsonNodeFactory) {
        return new ObjectReader(this, this.copyDeserializationConfig()).withNodeFactory(jsonNodeFactory);
    }
    
    public ObjectReader reader(final JavaType javaType) {
        return new ObjectReader(this, this.copyDeserializationConfig(), javaType, null, null, this._injectableValues);
    }
    
    public ObjectReader reader(final TypeReference<?> typeReference) {
        return this.reader(this._typeFactory.constructType(typeReference));
    }
    
    public ObjectReader reader(final Class<?> clazz) {
        return this.reader(this._typeFactory.constructType(clazz));
    }
    
    public ObjectReader readerForUpdating(final Object o) {
        return new ObjectReader(this, this.copyDeserializationConfig(), this._typeFactory.constructType(o.getClass()), o, null, this._injectableValues);
    }
    
    public void registerModule(final Module module) {
        if (module.getModuleName() == null) {
            throw new IllegalArgumentException("Module without defined name");
        }
        if (module.version() == null) {
            throw new IllegalArgumentException("Module without defined version");
        }
        module.setupModule((Module.SetupContext)new Module.SetupContext() {
            @Override
            public void addAbstractTypeResolver(final AbstractTypeResolver abstractTypeResolver) {
                ObjectMapper.this._deserializerProvider = ObjectMapper.this._deserializerProvider.withAbstractTypeResolver(abstractTypeResolver);
            }
            
            @Override
            public void addBeanDeserializerModifier(final BeanDeserializerModifier beanDeserializerModifier) {
                ObjectMapper.this._deserializerProvider = ObjectMapper.this._deserializerProvider.withDeserializerModifier(beanDeserializerModifier);
            }
            
            @Override
            public void addBeanSerializerModifier(final BeanSerializerModifier beanSerializerModifier) {
                ObjectMapper.this._serializerFactory = ObjectMapper.this._serializerFactory.withSerializerModifier(beanSerializerModifier);
            }
            
            @Override
            public void addDeserializers(final Deserializers deserializers) {
                ObjectMapper.this._deserializerProvider = ObjectMapper.this._deserializerProvider.withAdditionalDeserializers(deserializers);
            }
            
            @Override
            public void addKeyDeserializers(final KeyDeserializers keyDeserializers) {
                ObjectMapper.this._deserializerProvider = ObjectMapper.this._deserializerProvider.withAdditionalKeyDeserializers(keyDeserializers);
            }
            
            @Override
            public void addKeySerializers(final Serializers serializers) {
                ObjectMapper.this._serializerFactory = ObjectMapper.this._serializerFactory.withAdditionalKeySerializers(serializers);
            }
            
            @Override
            public void addSerializers(final Serializers serializers) {
                ObjectMapper.this._serializerFactory = ObjectMapper.this._serializerFactory.withAdditionalSerializers(serializers);
            }
            
            @Override
            public void addTypeModifier(final TypeModifier typeModifier) {
                ObjectMapper.this.setTypeFactory(ObjectMapper.this._typeFactory.withModifier(typeModifier));
            }
            
            @Override
            public void addValueInstantiators(final ValueInstantiators valueInstantiators) {
                ObjectMapper.this._deserializerProvider = ObjectMapper.this._deserializerProvider.withValueInstantiators(valueInstantiators);
            }
            
            @Override
            public void appendAnnotationIntrospector(final AnnotationIntrospector annotationIntrospector) {
                ObjectMapper.this._deserializationConfig = ObjectMapper.this._deserializationConfig.withAppendedAnnotationIntrospector(annotationIntrospector);
                ObjectMapper.this._serializationConfig = ObjectMapper.this._serializationConfig.withAppendedAnnotationIntrospector(annotationIntrospector);
            }
            
            @Override
            public DeserializationConfig getDeserializationConfig() {
                return ObjectMapper.this.getDeserializationConfig();
            }
            
            @Override
            public Version getMapperVersion() {
                return ObjectMapper.this.version();
            }
            
            @Override
            public SerializationConfig getSerializationConfig() {
                return ObjectMapper.this.getSerializationConfig();
            }
            
            @Override
            public void insertAnnotationIntrospector(final AnnotationIntrospector annotationIntrospector) {
                ObjectMapper.this._deserializationConfig = ObjectMapper.this._deserializationConfig.withInsertedAnnotationIntrospector(annotationIntrospector);
                ObjectMapper.this._serializationConfig = ObjectMapper.this._serializationConfig.withInsertedAnnotationIntrospector(annotationIntrospector);
            }
            
            @Override
            public boolean isEnabled(final JsonGenerator.Feature feature) {
                return ObjectMapper.this.isEnabled(feature);
            }
            
            @Override
            public boolean isEnabled(final JsonParser.Feature feature) {
                return ObjectMapper.this.isEnabled(feature);
            }
            
            @Override
            public boolean isEnabled(final DeserializationConfig.Feature feature) {
                return ObjectMapper.this.isEnabled(feature);
            }
            
            @Override
            public boolean isEnabled(final SerializationConfig.Feature feature) {
                return ObjectMapper.this.isEnabled(feature);
            }
            
            @Override
            public void setMixInAnnotations(final Class<?> clazz, final Class<?> clazz2) {
                ObjectMapper.this._deserializationConfig.addMixInAnnotations(clazz, clazz2);
                ObjectMapper.this._serializationConfig.addMixInAnnotations(clazz, clazz2);
            }
        });
    }
    
    public void registerSubtypes(final NamedType... array) {
        this.getSubtypeResolver().registerSubtypes(array);
    }
    
    public void registerSubtypes(final Class<?>... array) {
        this.getSubtypeResolver().registerSubtypes(array);
    }
    
    @Deprecated
    public ObjectReader schemaBasedReader(final FormatSchema formatSchema) {
        return this.reader(formatSchema);
    }
    
    @Deprecated
    public ObjectWriter schemaBasedWriter(final FormatSchema formatSchema) {
        return this.writer(formatSchema);
    }
    
    public ObjectMapper setAnnotationIntrospector(final AnnotationIntrospector annotationIntrospector) {
        this._serializationConfig = this._serializationConfig.withAnnotationIntrospector(annotationIntrospector);
        this._deserializationConfig = this._deserializationConfig.withAnnotationIntrospector(annotationIntrospector);
        return this;
    }
    
    public void setDateFormat(final DateFormat dateFormat) {
        this._deserializationConfig = this._deserializationConfig.withDateFormat(dateFormat);
        this._serializationConfig = this._serializationConfig.withDateFormat(dateFormat);
    }
    
    public ObjectMapper setDefaultTyping(final TypeResolverBuilder<?> typeResolverBuilder) {
        this._deserializationConfig = this._deserializationConfig.withTypeResolverBuilder(typeResolverBuilder);
        this._serializationConfig = this._serializationConfig.withTypeResolverBuilder(typeResolverBuilder);
        return this;
    }
    
    public ObjectMapper setDeserializationConfig(final DeserializationConfig deserializationConfig) {
        this._deserializationConfig = deserializationConfig;
        return this;
    }
    
    public ObjectMapper setDeserializerProvider(final DeserializerProvider deserializerProvider) {
        this._deserializerProvider = deserializerProvider;
        return this;
    }
    
    public void setFilters(final FilterProvider filterProvider) {
        this._serializationConfig = this._serializationConfig.withFilters(filterProvider);
    }
    
    public void setHandlerInstantiator(final HandlerInstantiator handlerInstantiator) {
        this._deserializationConfig = this._deserializationConfig.withHandlerInstantiator(handlerInstantiator);
        this._serializationConfig = this._serializationConfig.withHandlerInstantiator(handlerInstantiator);
    }
    
    public ObjectMapper setInjectableValues(final InjectableValues injectableValues) {
        this._injectableValues = injectableValues;
        return this;
    }
    
    public ObjectMapper setNodeFactory(final JsonNodeFactory jsonNodeFactory) {
        this._deserializationConfig = this._deserializationConfig.withNodeFactory(jsonNodeFactory);
        return this;
    }
    
    public ObjectMapper setPropertyNamingStrategy(final PropertyNamingStrategy propertyNamingStrategy) {
        this._serializationConfig = this._serializationConfig.withPropertyNamingStrategy(propertyNamingStrategy);
        this._deserializationConfig = this._deserializationConfig.withPropertyNamingStrategy(propertyNamingStrategy);
        return this;
    }
    
    public ObjectMapper setSerializationConfig(final SerializationConfig serializationConfig) {
        this._serializationConfig = serializationConfig;
        return this;
    }
    
    public ObjectMapper setSerializationInclusion(final JsonSerialize.Inclusion inclusion) {
        this._serializationConfig = this._serializationConfig.withSerializationInclusion(inclusion);
        return this;
    }
    
    public ObjectMapper setSerializerFactory(final SerializerFactory serializerFactory) {
        this._serializerFactory = serializerFactory;
        return this;
    }
    
    public ObjectMapper setSerializerProvider(final SerializerProvider serializerProvider) {
        this._serializerProvider = serializerProvider;
        return this;
    }
    
    public void setSubtypeResolver(final SubtypeResolver subtypeResolver) {
        this._subtypeResolver = subtypeResolver;
    }
    
    public ObjectMapper setTypeFactory(final TypeFactory typeFactory) {
        this._typeFactory = typeFactory;
        this._deserializationConfig = this._deserializationConfig.withTypeFactory(typeFactory);
        this._serializationConfig = this._serializationConfig.withTypeFactory(typeFactory);
        return this;
    }
    
    public ObjectMapper setVisibility(final JsonMethod jsonMethod, final JsonAutoDetect.Visibility visibility) {
        this._deserializationConfig = this._deserializationConfig.withVisibility(jsonMethod, visibility);
        this._serializationConfig = this._serializationConfig.withVisibility(jsonMethod, visibility);
        return this;
    }
    
    public void setVisibilityChecker(final VisibilityChecker<?> visibilityChecker) {
        this._deserializationConfig = this._deserializationConfig.withVisibilityChecker(visibilityChecker);
        this._serializationConfig = this._serializationConfig.withVisibilityChecker(visibilityChecker);
    }
    
    @Override
    public JsonParser treeAsTokens(final JsonNode jsonNode) {
        return new TreeTraversingParser(jsonNode, this);
    }
    
    @Override
    public <T> T treeToValue(final JsonNode jsonNode, final Class<T> clazz) throws IOException, JsonParseException, JsonMappingException {
        return this.readValue(this.treeAsTokens(jsonNode), clazz);
    }
    
    @Deprecated
    public ObjectWriter typedWriter(final JavaType javaType) {
        return this.writerWithType(javaType);
    }
    
    @Deprecated
    public ObjectWriter typedWriter(final TypeReference<?> typeReference) {
        return this.writerWithType(typeReference);
    }
    
    @Deprecated
    public ObjectWriter typedWriter(final Class<?> clazz) {
        return this.writerWithType(clazz);
    }
    
    @Deprecated
    public ObjectReader updatingReader(final Object o) {
        return this.readerForUpdating(o);
    }
    
    public <T extends JsonNode> T valueToTree(final Object o) throws IllegalArgumentException {
        if (o == null) {
            return null;
        }
        final TokenBuffer tokenBuffer = new TokenBuffer(this);
        try {
            this.writeValue(tokenBuffer, o);
            final JsonParser parser = tokenBuffer.asParser();
            final JsonNode tree = this.readTree(parser);
            parser.close();
            return (T)tree;
        }
        catch (IOException cause) {
            throw new IllegalArgumentException(cause.getMessage(), cause);
        }
    }
    
    @Override
    public Version version() {
        return VersionUtil.versionFor(this.getClass());
    }
    
    @Deprecated
    public ObjectWriter viewWriter(final Class<?> clazz) {
        return this.writerWithView(clazz);
    }
    
    public ObjectMapper withModule(final Module module) {
        this.registerModule(module);
        return this;
    }
    
    @Override
    public void writeTree(final JsonGenerator jsonGenerator, final JsonNode jsonNode) throws IOException, JsonProcessingException {
        final SerializationConfig copySerializationConfig = this.copySerializationConfig();
        this._serializerProvider.serializeValue(copySerializationConfig, jsonGenerator, jsonNode, this._serializerFactory);
        if (copySerializationConfig.isEnabled(SerializationConfig.Feature.FLUSH_AFTER_WRITE_VALUE)) {
            jsonGenerator.flush();
        }
    }
    
    public void writeTree(final JsonGenerator jsonGenerator, final JsonNode jsonNode, final SerializationConfig serializationConfig) throws IOException, JsonProcessingException {
        this._serializerProvider.serializeValue(serializationConfig, jsonGenerator, jsonNode, this._serializerFactory);
        if (serializationConfig.isEnabled(SerializationConfig.Feature.FLUSH_AFTER_WRITE_VALUE)) {
            jsonGenerator.flush();
        }
    }
    
    @Override
    public void writeValue(final JsonGenerator jsonGenerator, final Object o) throws IOException, JsonGenerationException, JsonMappingException {
        final SerializationConfig copySerializationConfig = this.copySerializationConfig();
        if (copySerializationConfig.isEnabled(SerializationConfig.Feature.CLOSE_CLOSEABLE) && o instanceof Closeable) {
            this._writeCloseableValue(jsonGenerator, o, copySerializationConfig);
        }
        else {
            this._serializerProvider.serializeValue(copySerializationConfig, jsonGenerator, o, this._serializerFactory);
            if (copySerializationConfig.isEnabled(SerializationConfig.Feature.FLUSH_AFTER_WRITE_VALUE)) {
                jsonGenerator.flush();
            }
        }
    }
    
    public void writeValue(final JsonGenerator jsonGenerator, final Object o, final SerializationConfig serializationConfig) throws IOException, JsonGenerationException, JsonMappingException {
        if (serializationConfig.isEnabled(SerializationConfig.Feature.CLOSE_CLOSEABLE) && o instanceof Closeable) {
            this._writeCloseableValue(jsonGenerator, o, serializationConfig);
        }
        else {
            this._serializerProvider.serializeValue(serializationConfig, jsonGenerator, o, this._serializerFactory);
            if (serializationConfig.isEnabled(SerializationConfig.Feature.FLUSH_AFTER_WRITE_VALUE)) {
                jsonGenerator.flush();
            }
        }
    }
    
    public void writeValue(final File file, final Object o) throws IOException, JsonGenerationException, JsonMappingException {
        this._configAndWriteValue(this._jsonFactory.createJsonGenerator(file, JsonEncoding.UTF8), o);
    }
    
    public void writeValue(final OutputStream outputStream, final Object o) throws IOException, JsonGenerationException, JsonMappingException {
        this._configAndWriteValue(this._jsonFactory.createJsonGenerator(outputStream, JsonEncoding.UTF8), o);
    }
    
    public void writeValue(final Writer writer, final Object o) throws IOException, JsonGenerationException, JsonMappingException {
        this._configAndWriteValue(this._jsonFactory.createJsonGenerator(writer), o);
    }
    
    public byte[] writeValueAsBytes(final Object o) throws IOException, JsonGenerationException, JsonMappingException {
        final ByteArrayBuilder byteArrayBuilder = new ByteArrayBuilder(this._jsonFactory._getBufferRecycler());
        this._configAndWriteValue(this._jsonFactory.createJsonGenerator(byteArrayBuilder, JsonEncoding.UTF8), o);
        final byte[] byteArray = byteArrayBuilder.toByteArray();
        byteArrayBuilder.release();
        return byteArray;
    }
    
    public String writeValueAsString(final Object o) throws IOException, JsonGenerationException, JsonMappingException {
        final SegmentedStringWriter segmentedStringWriter = new SegmentedStringWriter(this._jsonFactory._getBufferRecycler());
        this._configAndWriteValue(this._jsonFactory.createJsonGenerator(segmentedStringWriter), o);
        return segmentedStringWriter.getAndClear();
    }
    
    public ObjectWriter writer() {
        return new ObjectWriter(this, this.copySerializationConfig());
    }
    
    public ObjectWriter writer(final FormatSchema formatSchema) {
        return new ObjectWriter(this, this.copySerializationConfig(), formatSchema);
    }
    
    public ObjectWriter writer(PrettyPrinter null_PRETTY_PRINTER) {
        if (null_PRETTY_PRINTER == null) {
            null_PRETTY_PRINTER = ObjectWriter.NULL_PRETTY_PRINTER;
        }
        return new ObjectWriter(this, this.copySerializationConfig(), null, null_PRETTY_PRINTER);
    }
    
    public ObjectWriter writer(final FilterProvider filterProvider) {
        return new ObjectWriter(this, this.copySerializationConfig().withFilters(filterProvider));
    }
    
    public ObjectWriter writer(final DateFormat dateFormat) {
        return new ObjectWriter(this, this.copySerializationConfig().withDateFormat(dateFormat));
    }
    
    public ObjectWriter writerWithDefaultPrettyPrinter() {
        return new ObjectWriter(this, this.copySerializationConfig(), null, this._defaultPrettyPrinter());
    }
    
    public ObjectWriter writerWithType(final JavaType javaType) {
        return new ObjectWriter(this, this.copySerializationConfig(), javaType, null);
    }
    
    public ObjectWriter writerWithType(final TypeReference<?> typeReference) {
        JavaType constructType;
        if (typeReference == null) {
            constructType = null;
        }
        else {
            constructType = this._typeFactory.constructType(typeReference);
        }
        return new ObjectWriter(this, this.copySerializationConfig(), constructType, null);
    }
    
    public ObjectWriter writerWithType(final Class<?> clazz) {
        JavaType constructType;
        if (clazz == null) {
            constructType = null;
        }
        else {
            constructType = this._typeFactory.constructType(clazz);
        }
        return new ObjectWriter(this, this.copySerializationConfig(), constructType, null);
    }
    
    public ObjectWriter writerWithView(final Class<?> clazz) {
        return new ObjectWriter(this, this.copySerializationConfig().withView(clazz));
    }
    
    public static class DefaultTypeResolverBuilder extends StdTypeResolverBuilder
    {
        protected final DefaultTyping _appliesFor;
        
        public DefaultTypeResolverBuilder(final DefaultTyping appliesFor) {
            super();
            this._appliesFor = appliesFor;
        }
        
        @Override
        public TypeDeserializer buildTypeDeserializer(final DeserializationConfig deserializationConfig, final JavaType javaType, final Collection<NamedType> collection, final BeanProperty beanProperty) {
            if (this.useForType(javaType)) {
                return super.buildTypeDeserializer(deserializationConfig, javaType, collection, beanProperty);
            }
            return null;
        }
        
        @Override
        public TypeSerializer buildTypeSerializer(final SerializationConfig serializationConfig, final JavaType javaType, final Collection<NamedType> collection, final BeanProperty beanProperty) {
            if (this.useForType(javaType)) {
                return super.buildTypeSerializer(serializationConfig, javaType, collection, beanProperty);
            }
            return null;
        }
        
        public boolean useForType(JavaType javaType) {
            switch (this._appliesFor) {
                default: {
                    return javaType.getRawClass() == Object.class;
                }
                case NON_CONCRETE_AND_ARRAYS: {
                    if (javaType.isArrayType()) {
                        javaType = javaType.getContentType();
                        return javaType.getRawClass() == Object.class || !javaType.isConcrete();
                    }
                    return javaType.getRawClass() == Object.class || !javaType.isConcrete();
                }
                case OBJECT_AND_NON_CONCRETE: {
                    return javaType.getRawClass() == Object.class || !javaType.isConcrete();
                }
                case NON_FINAL: {
                    if (javaType.isArrayType()) {
                        javaType = javaType.getContentType();
                    }
                    return !javaType.isFinal();
                }
            }
        }
    }
    
    public enum DefaultTyping
    {
        JAVA_LANG_OBJECT, 
        NON_CONCRETE_AND_ARRAYS, 
        NON_FINAL, 
        OBJECT_AND_NON_CONCRETE;
    }
}
