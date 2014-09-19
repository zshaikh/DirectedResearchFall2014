package com.flurry.org.codehaus.jackson.map;

import java.util.concurrent.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.map.deser.*;
import com.flurry.org.codehaus.jackson.io.*;
import com.flurry.org.codehaus.jackson.type.*;
import java.io.*;
import java.net.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.util.*;
import com.flurry.org.codehaus.jackson.node.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.*;

public class ObjectReader extends ObjectCodec implements Versioned
{
    private static final JavaType JSON_NODE_TYPE;
    protected final DeserializationConfig _config;
    protected final InjectableValues _injectableValues;
    protected final JsonFactory _jsonFactory;
    protected final DeserializerProvider _provider;
    protected final ConcurrentHashMap<JavaType, JsonDeserializer<Object>> _rootDeserializers;
    protected final FormatSchema _schema;
    protected final boolean _unwrapRoot;
    protected final Object _valueToUpdate;
    protected final JavaType _valueType;
    
    static {
        JSON_NODE_TYPE = SimpleType.constructUnsafe(JsonNode.class);
    }
    
    protected ObjectReader(final ObjectMapper objectMapper, final DeserializationConfig deserializationConfig) {
        this(objectMapper, deserializationConfig, null, null, null, null);
    }
    
    protected ObjectReader(final ObjectMapper objectMapper, final DeserializationConfig config, final JavaType valueType, final Object valueToUpdate, final FormatSchema schema, final InjectableValues injectableValues) {
        super();
        this._config = config;
        this._rootDeserializers = objectMapper._rootDeserializers;
        this._provider = objectMapper._deserializerProvider;
        this._jsonFactory = objectMapper._jsonFactory;
        this._valueType = valueType;
        this._valueToUpdate = valueToUpdate;
        if (valueToUpdate != null && valueType.isArrayType()) {
            throw new IllegalArgumentException("Can not update an array value");
        }
        this._schema = schema;
        this._injectableValues = injectableValues;
        this._unwrapRoot = config.isEnabled(DeserializationConfig.Feature.UNWRAP_ROOT_VALUE);
    }
    
    protected ObjectReader(final ObjectReader objectReader, final DeserializationConfig config, final JavaType valueType, final Object valueToUpdate, final FormatSchema schema, final InjectableValues injectableValues) {
        super();
        this._config = config;
        this._rootDeserializers = objectReader._rootDeserializers;
        this._provider = objectReader._provider;
        this._jsonFactory = objectReader._jsonFactory;
        this._valueType = valueType;
        this._valueToUpdate = valueToUpdate;
        if (valueToUpdate != null && valueType.isArrayType()) {
            throw new IllegalArgumentException("Can not update an array value");
        }
        this._schema = schema;
        this._injectableValues = injectableValues;
        this._unwrapRoot = config.isEnabled(DeserializationConfig.Feature.UNWRAP_ROOT_VALUE);
    }
    
    protected static JsonToken _initForReading(final JsonParser jsonParser) throws IOException, JsonParseException, JsonMappingException {
        JsonToken jsonToken = jsonParser.getCurrentToken();
        if (jsonToken == null) {
            jsonToken = jsonParser.nextToken();
            if (jsonToken == null) {
                throw new EOFException("No content to map to Object due to end of input");
            }
        }
        return jsonToken;
    }
    
    protected Object _bind(final JsonParser jsonParser) throws IOException, JsonParseException, JsonMappingException {
        final JsonToken initForReading = _initForReading(jsonParser);
        Object o;
        if (initForReading == JsonToken.VALUE_NULL) {
            if (this._valueToUpdate == null) {
                o = this._findRootDeserializer(this._config, this._valueType).getNullValue();
            }
            else {
                o = this._valueToUpdate;
            }
        }
        else if (initForReading == JsonToken.END_ARRAY || initForReading == JsonToken.END_OBJECT) {
            o = this._valueToUpdate;
        }
        else {
            final DeserializationContext createDeserializationContext = this._createDeserializationContext(jsonParser, this._config);
            final JsonDeserializer<Object> findRootDeserializer = this._findRootDeserializer(this._config, this._valueType);
            if (this._unwrapRoot) {
                o = this._unwrapAndDeserialize(jsonParser, createDeserializationContext, this._valueType, findRootDeserializer);
            }
            else if (this._valueToUpdate == null) {
                o = findRootDeserializer.deserialize(jsonParser, createDeserializationContext);
            }
            else {
                findRootDeserializer.deserialize(jsonParser, createDeserializationContext, this._valueToUpdate);
                o = this._valueToUpdate;
            }
        }
        jsonParser.clearCurrentToken();
        return o;
    }
    
    protected Object _bindAndClose(final JsonParser p0) throws IOException, JsonParseException, JsonMappingException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/flurry/org/codehaus/jackson/map/ObjectReader._schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;
        //     4: ifnull          15
        //     7: aload_1        
        //     8: aload_0        
        //     9: getfield        com/flurry/org/codehaus/jackson/map/ObjectReader._schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;
        //    12: invokevirtual   com/flurry/org/codehaus/jackson/JsonParser.setSchema:(Lcom/flurry/org/codehaus/jackson/FormatSchema;)V
        //    15: aload_1        
        //    16: invokestatic    com/flurry/org/codehaus/jackson/map/ObjectReader._initForReading:(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonToken;
        //    19: astore          4
        //    21: aload           4
        //    23: getstatic       com/flurry/org/codehaus/jackson/JsonToken.VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;
        //    26: if_acmpne       73
        //    29: aload_0        
        //    30: getfield        com/flurry/org/codehaus/jackson/map/ObjectReader._valueToUpdate:Ljava/lang/Object;
        //    33: ifnonnull       64
        //    36: aload_0        
        //    37: aload_0        
        //    38: getfield        com/flurry/org/codehaus/jackson/map/ObjectReader._config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
        //    41: aload_0        
        //    42: getfield        com/flurry/org/codehaus/jackson/map/ObjectReader._valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //    45: invokevirtual   com/flurry/org/codehaus/jackson/map/ObjectReader._findRootDeserializer:(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
        //    48: invokevirtual   com/flurry/org/codehaus/jackson/map/JsonDeserializer.getNullValue:()Ljava/lang/Object;
        //    51: astore          10
        //    53: aload           10
        //    55: astore          5
        //    57: aload_1        
        //    58: invokevirtual   com/flurry/org/codehaus/jackson/JsonParser.close:()V
        //    61: aload           5
        //    63: areturn        
        //    64: aload_0        
        //    65: getfield        com/flurry/org/codehaus/jackson/map/ObjectReader._valueToUpdate:Ljava/lang/Object;
        //    68: astore          5
        //    70: goto            57
        //    73: aload           4
        //    75: getstatic       com/flurry/org/codehaus/jackson/JsonToken.END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;
        //    78: if_acmpeq       89
        //    81: aload           4
        //    83: getstatic       com/flurry/org/codehaus/jackson/JsonToken.END_OBJECT:Lcom/flurry/org/codehaus/jackson/JsonToken;
        //    86: if_acmpne       98
        //    89: aload_0        
        //    90: getfield        com/flurry/org/codehaus/jackson/map/ObjectReader._valueToUpdate:Ljava/lang/Object;
        //    93: astore          5
        //    95: goto            57
        //    98: aload_0        
        //    99: aload_1        
        //   100: aload_0        
        //   101: getfield        com/flurry/org/codehaus/jackson/map/ObjectReader._config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
        //   104: invokevirtual   com/flurry/org/codehaus/jackson/map/ObjectReader._createDeserializationContext:(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;)Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
        //   107: astore          7
        //   109: aload_0        
        //   110: aload_0        
        //   111: getfield        com/flurry/org/codehaus/jackson/map/ObjectReader._config:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
        //   114: aload_0        
        //   115: getfield        com/flurry/org/codehaus/jackson/map/ObjectReader._valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //   118: invokevirtual   com/flurry/org/codehaus/jackson/map/ObjectReader._findRootDeserializer:(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;Lcom/flurry/org/codehaus/jackson/type/JavaType;)Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
        //   121: astore          8
        //   123: aload_0        
        //   124: getfield        com/flurry/org/codehaus/jackson/map/ObjectReader._unwrapRoot:Z
        //   127: ifeq            148
        //   130: aload_0        
        //   131: aload_1        
        //   132: aload           7
        //   134: aload_0        
        //   135: getfield        com/flurry/org/codehaus/jackson/map/ObjectReader._valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //   138: aload           8
        //   140: invokevirtual   com/flurry/org/codehaus/jackson/map/ObjectReader._unwrapAndDeserialize:(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)Ljava/lang/Object;
        //   143: astore          5
        //   145: goto            57
        //   148: aload_0        
        //   149: getfield        com/flurry/org/codehaus/jackson/map/ObjectReader._valueToUpdate:Ljava/lang/Object;
        //   152: ifnonnull       168
        //   155: aload           8
        //   157: aload_1        
        //   158: aload           7
        //   160: invokevirtual   com/flurry/org/codehaus/jackson/map/JsonDeserializer.deserialize:(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
        //   163: astore          5
        //   165: goto            57
        //   168: aload           8
        //   170: aload_1        
        //   171: aload           7
        //   173: aload_0        
        //   174: getfield        com/flurry/org/codehaus/jackson/map/ObjectReader._valueToUpdate:Ljava/lang/Object;
        //   177: invokevirtual   com/flurry/org/codehaus/jackson/map/JsonDeserializer.deserialize:(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
        //   180: pop            
        //   181: aload_0        
        //   182: getfield        com/flurry/org/codehaus/jackson/map/ObjectReader._valueToUpdate:Ljava/lang/Object;
        //   185: astore          5
        //   187: goto            57
        //   190: astore_2       
        //   191: aload_1        
        //   192: invokevirtual   com/flurry/org/codehaus/jackson/JsonParser.close:()V
        //   195: aload_2        
        //   196: athrow         
        //   197: astore          6
        //   199: aload           5
        //   201: areturn        
        //   202: astore_3       
        //   203: goto            195
        //    Exceptions:
        //  throws java.io.IOException
        //  throws com.flurry.org.codehaus.jackson.JsonParseException
        //  throws com.flurry.org.codehaus.jackson.map.JsonMappingException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  15     53     190    197    Any
        //  57     61     197    202    Ljava/io/IOException;
        //  64     70     190    197    Any
        //  73     89     190    197    Any
        //  89     95     190    197    Any
        //  98     145    190    197    Any
        //  148    165    190    197    Any
        //  168    187    190    197    Any
        //  191    195    202    206    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 99, Size: 99
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
    
    protected JsonNode _bindAndCloseAsTree(final JsonParser p0) throws IOException, JsonParseException, JsonMappingException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/flurry/org/codehaus/jackson/map/ObjectReader._schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;
        //     4: ifnull          15
        //     7: aload_1        
        //     8: aload_0        
        //     9: getfield        com/flurry/org/codehaus/jackson/map/ObjectReader._schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;
        //    12: invokevirtual   com/flurry/org/codehaus/jackson/JsonParser.setSchema:(Lcom/flurry/org/codehaus/jackson/FormatSchema;)V
        //    15: aload_0        
        //    16: aload_1        
        //    17: invokevirtual   com/flurry/org/codehaus/jackson/map/ObjectReader._bindAsTree:(Lcom/flurry/org/codehaus/jackson/JsonParser;)Lcom/flurry/org/codehaus/jackson/JsonNode;
        //    20: astore          4
        //    22: aload_1        
        //    23: invokevirtual   com/flurry/org/codehaus/jackson/JsonParser.close:()V
        //    26: aload           4
        //    28: areturn        
        //    29: astore_2       
        //    30: aload_1        
        //    31: invokevirtual   com/flurry/org/codehaus/jackson/JsonParser.close:()V
        //    34: aload_2        
        //    35: athrow         
        //    36: astore          5
        //    38: aload           4
        //    40: areturn        
        //    41: astore_3       
        //    42: goto            34
        //    Exceptions:
        //  throws java.io.IOException
        //  throws com.flurry.org.codehaus.jackson.JsonParseException
        //  throws com.flurry.org.codehaus.jackson.map.JsonMappingException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  15     22     29     36     Any
        //  22     26     36     41     Ljava/io/IOException;
        //  30     34     41     45     Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 25, Size: 25
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
    
    protected JsonNode _bindAsTree(final JsonParser jsonParser) throws IOException, JsonParseException, JsonMappingException {
        final JsonToken initForReading = _initForReading(jsonParser);
        JsonNode instance;
        if (initForReading == JsonToken.VALUE_NULL || initForReading == JsonToken.END_ARRAY || initForReading == JsonToken.END_OBJECT) {
            instance = NullNode.instance;
        }
        else {
            final DeserializationContext createDeserializationContext = this._createDeserializationContext(jsonParser, this._config);
            final JsonDeserializer<Object> findRootDeserializer = this._findRootDeserializer(this._config, ObjectReader.JSON_NODE_TYPE);
            if (this._unwrapRoot) {
                instance = (JsonNode)this._unwrapAndDeserialize(jsonParser, createDeserializationContext, ObjectReader.JSON_NODE_TYPE, findRootDeserializer);
            }
            else {
                instance = (JsonNode)findRootDeserializer.deserialize(jsonParser, createDeserializationContext);
            }
        }
        jsonParser.clearCurrentToken();
        return instance;
    }
    
    protected DeserializationContext _createDeserializationContext(final JsonParser jsonParser, final DeserializationConfig deserializationConfig) {
        return new StdDeserializationContext(deserializationConfig, jsonParser, this._provider, this._injectableValues);
    }
    
    protected JsonDeserializer<Object> _findRootDeserializer(final DeserializationConfig deserializationConfig, final JavaType key) throws JsonMappingException {
        if (key == null) {
            throw new JsonMappingException("No value type configured for ObjectReader");
        }
        final JsonDeserializer<Object> jsonDeserializer = this._rootDeserializers.get(key);
        if (jsonDeserializer != null) {
            return jsonDeserializer;
        }
        final JsonDeserializer<Object> typedValueDeserializer = this._provider.findTypedValueDeserializer(deserializationConfig, key, null);
        if (typedValueDeserializer == null) {
            throw new JsonMappingException("Can not find a deserializer for type " + key);
        }
        this._rootDeserializers.put(key, typedValueDeserializer);
        return typedValueDeserializer;
    }
    
    protected Object _unwrapAndDeserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext, final JavaType obj, final JsonDeserializer<Object> jsonDeserializer) throws IOException, JsonParseException, JsonMappingException {
        final SerializedString expectedRootName = this._provider.findExpectedRootName(deserializationContext.getConfig(), obj);
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
        Object o;
        if (this._valueToUpdate == null) {
            o = jsonDeserializer.deserialize(jsonParser, deserializationContext);
        }
        else {
            jsonDeserializer.deserialize(jsonParser, deserializationContext, this._valueToUpdate);
            o = this._valueToUpdate;
        }
        if (jsonParser.nextToken() != JsonToken.END_OBJECT) {
            throw JsonMappingException.from(jsonParser, "Current token not END_OBJECT (to match wrapper object with root name '" + expectedRootName + "'), but " + jsonParser.getCurrentToken());
        }
        return o;
    }
    
    @Override
    public JsonNode createArrayNode() {
        return this._config.getNodeFactory().arrayNode();
    }
    
    @Override
    public JsonNode createObjectNode() {
        return this._config.getNodeFactory().objectNode();
    }
    
    @Override
    public JsonNode readTree(final JsonParser jsonParser) throws IOException, JsonProcessingException {
        return this._bindAsTree(jsonParser);
    }
    
    public JsonNode readTree(final InputStream inputStream) throws IOException, JsonProcessingException {
        return this._bindAndCloseAsTree(this._jsonFactory.createJsonParser(inputStream));
    }
    
    public JsonNode readTree(final Reader reader) throws IOException, JsonProcessingException {
        return this._bindAndCloseAsTree(this._jsonFactory.createJsonParser(reader));
    }
    
    public JsonNode readTree(final String s) throws IOException, JsonProcessingException {
        return this._bindAndCloseAsTree(this._jsonFactory.createJsonParser(s));
    }
    
    public <T> T readValue(final JsonNode jsonNode) throws IOException, JsonProcessingException {
        return (T)this._bindAndClose(this.treeAsTokens(jsonNode));
    }
    
    public <T> T readValue(final JsonParser jsonParser) throws IOException, JsonProcessingException {
        return (T)this._bind(jsonParser);
    }
    
    @Override
    public <T> T readValue(final JsonParser jsonParser, final JavaType javaType) throws IOException, JsonProcessingException {
        return this.withType(javaType).readValue(jsonParser);
    }
    
    @Override
    public <T> T readValue(final JsonParser jsonParser, final TypeReference<?> typeReference) throws IOException, JsonProcessingException {
        return this.withType(typeReference).readValue(jsonParser);
    }
    
    @Override
    public <T> T readValue(final JsonParser jsonParser, final Class<T> clazz) throws IOException, JsonProcessingException {
        return this.withType(clazz).readValue(jsonParser);
    }
    
    public <T> T readValue(final File file) throws IOException, JsonProcessingException {
        return (T)this._bindAndClose(this._jsonFactory.createJsonParser(file));
    }
    
    public <T> T readValue(final InputStream inputStream) throws IOException, JsonProcessingException {
        return (T)this._bindAndClose(this._jsonFactory.createJsonParser(inputStream));
    }
    
    public <T> T readValue(final Reader reader) throws IOException, JsonProcessingException {
        return (T)this._bindAndClose(this._jsonFactory.createJsonParser(reader));
    }
    
    public <T> T readValue(final String s) throws IOException, JsonProcessingException {
        return (T)this._bindAndClose(this._jsonFactory.createJsonParser(s));
    }
    
    public <T> T readValue(final URL url) throws IOException, JsonProcessingException {
        return (T)this._bindAndClose(this._jsonFactory.createJsonParser(url));
    }
    
    public <T> T readValue(final byte[] array) throws IOException, JsonProcessingException {
        return (T)this._bindAndClose(this._jsonFactory.createJsonParser(array));
    }
    
    public <T> T readValue(final byte[] array, final int n, final int n2) throws IOException, JsonProcessingException {
        return (T)this._bindAndClose(this._jsonFactory.createJsonParser(array, n, n2));
    }
    
    public <T> MappingIterator<T> readValues(final JsonParser jsonParser) throws IOException, JsonProcessingException {
        return new MappingIterator<T>(this._valueType, jsonParser, this._createDeserializationContext(jsonParser, this._config), this._findRootDeserializer(this._config, this._valueType), false, this._valueToUpdate);
    }
    
    public <T> MappingIterator<T> readValues(final File file) throws IOException, JsonProcessingException {
        final JsonParser jsonParser = this._jsonFactory.createJsonParser(file);
        if (this._schema != null) {
            jsonParser.setSchema(this._schema);
        }
        return new MappingIterator<T>(this._valueType, jsonParser, this._createDeserializationContext(jsonParser, this._config), this._findRootDeserializer(this._config, this._valueType), true, this._valueToUpdate);
    }
    
    public <T> MappingIterator<T> readValues(final InputStream inputStream) throws IOException, JsonProcessingException {
        final JsonParser jsonParser = this._jsonFactory.createJsonParser(inputStream);
        if (this._schema != null) {
            jsonParser.setSchema(this._schema);
        }
        return new MappingIterator<T>(this._valueType, jsonParser, this._createDeserializationContext(jsonParser, this._config), this._findRootDeserializer(this._config, this._valueType), true, this._valueToUpdate);
    }
    
    public <T> MappingIterator<T> readValues(final Reader reader) throws IOException, JsonProcessingException {
        final JsonParser jsonParser = this._jsonFactory.createJsonParser(reader);
        if (this._schema != null) {
            jsonParser.setSchema(this._schema);
        }
        return new MappingIterator<T>(this._valueType, jsonParser, this._createDeserializationContext(jsonParser, this._config), this._findRootDeserializer(this._config, this._valueType), true, this._valueToUpdate);
    }
    
    public <T> MappingIterator<T> readValues(final String s) throws IOException, JsonProcessingException {
        final JsonParser jsonParser = this._jsonFactory.createJsonParser(s);
        if (this._schema != null) {
            jsonParser.setSchema(this._schema);
        }
        return new MappingIterator<T>(this._valueType, jsonParser, this._createDeserializationContext(jsonParser, this._config), this._findRootDeserializer(this._config, this._valueType), true, this._valueToUpdate);
    }
    
    public <T> MappingIterator<T> readValues(final URL url) throws IOException, JsonProcessingException {
        final JsonParser jsonParser = this._jsonFactory.createJsonParser(url);
        if (this._schema != null) {
            jsonParser.setSchema(this._schema);
        }
        return new MappingIterator<T>(this._valueType, jsonParser, this._createDeserializationContext(jsonParser, this._config), this._findRootDeserializer(this._config, this._valueType), true, this._valueToUpdate);
    }
    
    public final <T> MappingIterator<T> readValues(final byte[] array) throws IOException, JsonProcessingException {
        return this.readValues(array, 0, array.length);
    }
    
    public <T> MappingIterator<T> readValues(final byte[] array, final int n, final int n2) throws IOException, JsonProcessingException {
        final JsonParser jsonParser = this._jsonFactory.createJsonParser(array, n, n2);
        if (this._schema != null) {
            jsonParser.setSchema(this._schema);
        }
        return new MappingIterator<T>(this._valueType, jsonParser, this._createDeserializationContext(jsonParser, this._config), this._findRootDeserializer(this._config, this._valueType), true, this._valueToUpdate);
    }
    
    @Override
    public <T> Iterator<T> readValues(final JsonParser jsonParser, final JavaType javaType) throws IOException, JsonProcessingException {
        return (Iterator<T>)this.withType(javaType).readValues(jsonParser);
    }
    
    @Override
    public <T> Iterator<T> readValues(final JsonParser jsonParser, final TypeReference<?> typeReference) throws IOException, JsonProcessingException {
        return (Iterator<T>)this.withType(typeReference).readValues(jsonParser);
    }
    
    @Override
    public <T> Iterator<T> readValues(final JsonParser jsonParser, final Class<T> clazz) throws IOException, JsonProcessingException {
        return (Iterator<T>)this.withType(clazz).readValues(jsonParser);
    }
    
    @Override
    public JsonParser treeAsTokens(final JsonNode jsonNode) {
        return new TreeTraversingParser(jsonNode, this);
    }
    
    @Override
    public <T> T treeToValue(final JsonNode jsonNode, final Class<T> clazz) throws IOException, JsonProcessingException {
        return this.readValue(this.treeAsTokens(jsonNode), clazz);
    }
    
    @Override
    public Version version() {
        return VersionUtil.versionFor(this.getClass());
    }
    
    public ObjectReader withInjectableValues(final InjectableValues injectableValues) {
        if (this._injectableValues == injectableValues) {
            return this;
        }
        return new ObjectReader(this, this._config, this._valueType, this._valueToUpdate, this._schema, injectableValues);
    }
    
    public ObjectReader withNodeFactory(final JsonNodeFactory jsonNodeFactory) {
        if (jsonNodeFactory == this._config.getNodeFactory()) {
            return this;
        }
        return new ObjectReader(this, this._config.withNodeFactory(jsonNodeFactory), this._valueType, this._valueToUpdate, this._schema, this._injectableValues);
    }
    
    public ObjectReader withSchema(final FormatSchema formatSchema) {
        if (this._schema == formatSchema) {
            return this;
        }
        return new ObjectReader(this, this._config, this._valueType, this._valueToUpdate, formatSchema, this._injectableValues);
    }
    
    public ObjectReader withType(final JavaType javaType) {
        if (javaType == this._valueType) {
            return this;
        }
        return new ObjectReader(this, this._config, javaType, this._valueToUpdate, this._schema, this._injectableValues);
    }
    
    public ObjectReader withType(final TypeReference<?> typeReference) {
        return this.withType(this._config.getTypeFactory().constructType(typeReference.getType()));
    }
    
    public ObjectReader withType(final Class<?> clazz) {
        return this.withType(this._config.constructType(clazz));
    }
    
    public ObjectReader withType(final Type type) {
        return this.withType(this._config.getTypeFactory().constructType(type));
    }
    
    public ObjectReader withValueToUpdate(final Object o) {
        if (o == this._valueToUpdate) {
            return this;
        }
        if (o == null) {
            throw new IllegalArgumentException("cat not update null value");
        }
        JavaType javaType;
        if (this._valueType == null) {
            javaType = this._config.constructType(o.getClass());
        }
        else {
            javaType = this._valueType;
        }
        return new ObjectReader(this, this._config, javaType, o, this._schema, this._injectableValues);
    }
    
    @Override
    public void writeTree(final JsonGenerator jsonGenerator, final JsonNode jsonNode) throws IOException, JsonProcessingException {
        throw new UnsupportedOperationException("Not implemented for ObjectReader");
    }
    
    @Override
    public void writeValue(final JsonGenerator jsonGenerator, final Object o) throws IOException, JsonProcessingException {
        throw new UnsupportedOperationException("Not implemented for ObjectReader");
    }
}
