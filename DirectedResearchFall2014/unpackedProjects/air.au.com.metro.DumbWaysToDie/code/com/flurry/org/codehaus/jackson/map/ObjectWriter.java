package com.flurry.org.codehaus.jackson.map;

import java.text.*;
import com.flurry.org.codehaus.jackson.map.ser.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.util.*;
import com.flurry.org.codehaus.jackson.io.*;

public class ObjectWriter implements Versioned
{
    protected static final PrettyPrinter NULL_PRETTY_PRINTER;
    protected final SerializationConfig _config;
    protected final JsonFactory _jsonFactory;
    protected final PrettyPrinter _prettyPrinter;
    protected final SerializerProvider _provider;
    protected final JavaType _rootType;
    protected final FormatSchema _schema;
    protected final SerializerFactory _serializerFactory;
    
    static {
        NULL_PRETTY_PRINTER = new MinimalPrettyPrinter();
    }
    
    protected ObjectWriter(final ObjectMapper objectMapper, final SerializationConfig config) {
        super();
        this._config = config;
        this._provider = objectMapper._serializerProvider;
        this._serializerFactory = objectMapper._serializerFactory;
        this._jsonFactory = objectMapper._jsonFactory;
        this._rootType = null;
        this._prettyPrinter = null;
        this._schema = null;
    }
    
    protected ObjectWriter(final ObjectMapper objectMapper, final SerializationConfig config, final FormatSchema schema) {
        super();
        this._config = config;
        this._provider = objectMapper._serializerProvider;
        this._serializerFactory = objectMapper._serializerFactory;
        this._jsonFactory = objectMapper._jsonFactory;
        this._rootType = null;
        this._prettyPrinter = null;
        this._schema = schema;
    }
    
    protected ObjectWriter(final ObjectMapper objectMapper, final SerializationConfig config, final JavaType rootType, final PrettyPrinter prettyPrinter) {
        super();
        this._config = config;
        this._provider = objectMapper._serializerProvider;
        this._serializerFactory = objectMapper._serializerFactory;
        this._jsonFactory = objectMapper._jsonFactory;
        this._rootType = rootType;
        this._prettyPrinter = prettyPrinter;
        this._schema = null;
    }
    
    protected ObjectWriter(final ObjectWriter objectWriter, final SerializationConfig config) {
        super();
        this._config = config;
        this._provider = objectWriter._provider;
        this._serializerFactory = objectWriter._serializerFactory;
        this._jsonFactory = objectWriter._jsonFactory;
        this._schema = objectWriter._schema;
        this._rootType = objectWriter._rootType;
        this._prettyPrinter = objectWriter._prettyPrinter;
    }
    
    protected ObjectWriter(final ObjectWriter objectWriter, final SerializationConfig config, final JavaType rootType, final PrettyPrinter prettyPrinter, final FormatSchema schema) {
        super();
        this._config = config;
        this._provider = objectWriter._provider;
        this._serializerFactory = objectWriter._serializerFactory;
        this._jsonFactory = objectWriter._jsonFactory;
        this._rootType = rootType;
        this._prettyPrinter = prettyPrinter;
        this._schema = schema;
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
        //     7: getfield        com/flurry/org/codehaus/jackson/map/ObjectWriter._rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //    10: ifnonnull       85
        //    13: aload_0        
        //    14: getfield        com/flurry/org/codehaus/jackson/map/ObjectWriter._provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
        //    17: aload_3        
        //    18: aload_1        
        //    19: aload_2        
        //    20: aload_0        
        //    21: getfield        com/flurry/org/codehaus/jackson/map/ObjectWriter._serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;
        //    24: invokevirtual   com/flurry/org/codehaus/jackson/map/SerializerProvider.serializeValue:(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;)V
        //    27: aload_0        
        //    28: getfield        com/flurry/org/codehaus/jackson/map/ObjectWriter._schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;
        //    31: ifnull          42
        //    34: aload_1        
        //    35: aload_0        
        //    36: getfield        com/flurry/org/codehaus/jackson/map/ObjectWriter._schema:Lcom/flurry/org/codehaus/jackson/FormatSchema;
        //    39: invokevirtual   com/flurry/org/codehaus/jackson/JsonGenerator.setSchema:(Lcom/flurry/org/codehaus/jackson/FormatSchema;)V
        //    42: aload_1        
        //    43: astore          11
        //    45: aconst_null    
        //    46: astore_1       
        //    47: aload           11
        //    49: invokevirtual   com/flurry/org/codehaus/jackson/JsonGenerator.close:()V
        //    52: aload           4
        //    54: astore          12
        //    56: aconst_null    
        //    57: astore          4
        //    59: aload           12
        //    61: invokeinterface java/io/Closeable.close:()V
        //    66: iconst_0       
        //    67: ifeq            74
        //    70: aconst_null    
        //    71: invokevirtual   com/flurry/org/codehaus/jackson/JsonGenerator.close:()V
        //    74: iconst_0       
        //    75: ifeq            84
        //    78: aconst_null    
        //    79: invokeinterface java/io/Closeable.close:()V
        //    84: return         
        //    85: aload_0        
        //    86: getfield        com/flurry/org/codehaus/jackson/map/ObjectWriter._provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
        //    89: astore          8
        //    91: aload_0        
        //    92: getfield        com/flurry/org/codehaus/jackson/map/ObjectWriter._rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //    95: astore          9
        //    97: aload_0        
        //    98: getfield        com/flurry/org/codehaus/jackson/map/ObjectWriter._serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;
        //   101: astore          10
        //   103: aload           8
        //   105: aload_3        
        //   106: aload_1        
        //   107: aload_2        
        //   108: aload           9
        //   110: aload           10
        //   112: invokevirtual   com/flurry/org/codehaus/jackson/map/SerializerProvider.serializeValue:(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;)V
        //   115: goto            27
        //   118: astore          5
        //   120: aload_1        
        //   121: ifnull          128
        //   124: aload_1        
        //   125: invokevirtual   com/flurry/org/codehaus/jackson/JsonGenerator.close:()V
        //   128: aload           4
        //   130: ifnull          140
        //   133: aload           4
        //   135: invokeinterface java/io/Closeable.close:()V
        //   140: aload           5
        //   142: athrow         
        //   143: astore          14
        //   145: goto            74
        //   148: astore          13
        //   150: return         
        //   151: astore          7
        //   153: goto            128
        //   156: astore          6
        //   158: goto            140
        //    Exceptions:
        //  throws java.io.IOException
        //  throws com.flurry.org.codehaus.jackson.JsonGenerationException
        //  throws com.flurry.org.codehaus.jackson.map.JsonMappingException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  6      27     118    161    Any
        //  27     42     118    161    Any
        //  47     52     118    161    Any
        //  59     66     118    161    Any
        //  70     74     143    148    Ljava/io/IOException;
        //  78     84     148    151    Ljava/io/IOException;
        //  85     115    118    161    Any
        //  124    128    151    156    Ljava/io/IOException;
        //  133    140    156    161    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 78, Size: 78
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
        //     7: getfield        com/flurry/org/codehaus/jackson/map/ObjectWriter._rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //    10: ifnonnull       69
        //    13: aload_0        
        //    14: getfield        com/flurry/org/codehaus/jackson/map/ObjectWriter._provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
        //    17: aload_3        
        //    18: aload_1        
        //    19: aload_2        
        //    20: aload_0        
        //    21: getfield        com/flurry/org/codehaus/jackson/map/ObjectWriter._serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;
        //    24: invokevirtual   com/flurry/org/codehaus/jackson/map/SerializerProvider.serializeValue:(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;)V
        //    27: aload_0        
        //    28: getfield        com/flurry/org/codehaus/jackson/map/ObjectWriter._config:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;
        //    31: getstatic       com/flurry/org/codehaus/jackson/map/SerializationConfig$Feature.FLUSH_AFTER_WRITE_VALUE:Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;
        //    34: invokevirtual   com/flurry/org/codehaus/jackson/map/SerializationConfig.isEnabled:(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig$Feature;)Z
        //    37: ifeq            44
        //    40: aload_1        
        //    41: invokevirtual   com/flurry/org/codehaus/jackson/JsonGenerator.flush:()V
        //    44: aload           4
        //    46: astore          7
        //    48: aconst_null    
        //    49: astore          4
        //    51: aload           7
        //    53: invokeinterface java/io/Closeable.close:()V
        //    58: iconst_0       
        //    59: ifeq            68
        //    62: aconst_null    
        //    63: invokeinterface java/io/Closeable.close:()V
        //    68: return         
        //    69: aload_0        
        //    70: getfield        com/flurry/org/codehaus/jackson/map/ObjectWriter._provider:Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;
        //    73: aload_3        
        //    74: aload_1        
        //    75: aload_2        
        //    76: aload_0        
        //    77: getfield        com/flurry/org/codehaus/jackson/map/ObjectWriter._rootType:Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //    80: aload_0        
        //    81: getfield        com/flurry/org/codehaus/jackson/map/ObjectWriter._serializerFactory:Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;
        //    84: invokevirtual   com/flurry/org/codehaus/jackson/map/SerializerProvider.serializeValue:(Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/SerializerFactory;)V
        //    87: goto            27
        //    90: astore          5
        //    92: aload           4
        //    94: ifnull          104
        //    97: aload           4
        //    99: invokeinterface java/io/Closeable.close:()V
        //   104: aload           5
        //   106: athrow         
        //   107: astore          8
        //   109: return         
        //   110: astore          6
        //   112: goto            104
        //    Exceptions:
        //  throws java.io.IOException
        //  throws com.flurry.org.codehaus.jackson.JsonGenerationException
        //  throws com.flurry.org.codehaus.jackson.map.JsonMappingException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  6      27     90     107    Any
        //  27     44     90     107    Any
        //  51     58     90     107    Any
        //  62     68     107    110    Ljava/io/IOException;
        //  69     87     90     107    Any
        //  97     104    110    115    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 54, Size: 54
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
        if (this._prettyPrinter != null) {
            final PrettyPrinter prettyPrinter = this._prettyPrinter;
            PrettyPrinter prettyPrinter2;
            if (prettyPrinter == ObjectWriter.NULL_PRETTY_PRINTER) {
                prettyPrinter2 = null;
            }
            else {
                prettyPrinter2 = prettyPrinter;
            }
            jsonGenerator.setPrettyPrinter(prettyPrinter2);
        }
        else if (this._config.isEnabled(SerializationConfig.Feature.INDENT_OUTPUT)) {
            jsonGenerator.useDefaultPrettyPrinter();
        }
        if (this._schema != null) {
            jsonGenerator.setSchema(this._schema);
        }
        if (this._config.isEnabled(SerializationConfig.Feature.CLOSE_CLOSEABLE) && o instanceof Closeable) {
            this._configAndWriteCloseable(jsonGenerator, o, this._config);
        }
        else {
            boolean b = false;
            try {
                final JavaType rootType = this._rootType;
                b = false;
                while (true) {
                    Label_0159: {
                        if (rootType != null) {
                            break Label_0159;
                        }
                        this._provider.serializeValue(this._config, jsonGenerator, o, this._serializerFactory);
                        b = true;
                        jsonGenerator.close();
                        if (b) {
                            return;
                        }
                        try {
                            jsonGenerator.close();
                            return;
                        }
                        catch (IOException ex) {
                            return;
                        }
                    }
                    this._provider.serializeValue(this._config, jsonGenerator, o, this._rootType, this._serializerFactory);
                    continue;
                }
            }
            finally {
                Label_0194: {
                    if (b) {
                        break Label_0194;
                    }
                    try {
                        jsonGenerator.close();
                    }
                    catch (IOException ex2) {}
                }
            }
        }
    }
    
    public boolean canSerialize(final Class<?> clazz) {
        return this._provider.hasSerializerFor(this._config, clazz, this._serializerFactory);
    }
    
    @Override
    public Version version() {
        return VersionUtil.versionFor(this.getClass());
    }
    
    public ObjectWriter withDateFormat(final DateFormat dateFormat) {
        final SerializationConfig withDateFormat = this._config.withDateFormat(dateFormat);
        if (withDateFormat == this._config) {
            return this;
        }
        return new ObjectWriter(this, withDateFormat);
    }
    
    public ObjectWriter withDefaultPrettyPrinter() {
        return this.withPrettyPrinter(new DefaultPrettyPrinter());
    }
    
    public ObjectWriter withFilters(final FilterProvider filterProvider) {
        if (filterProvider == this._config.getFilterProvider()) {
            return this;
        }
        return new ObjectWriter(this, this._config.withFilters(filterProvider));
    }
    
    public ObjectWriter withPrettyPrinter(PrettyPrinter null_PRETTY_PRINTER) {
        if (null_PRETTY_PRINTER == this._prettyPrinter) {
            return this;
        }
        if (null_PRETTY_PRINTER == null) {
            null_PRETTY_PRINTER = ObjectWriter.NULL_PRETTY_PRINTER;
        }
        return new ObjectWriter(this, this._config, this._rootType, null_PRETTY_PRINTER, this._schema);
    }
    
    public ObjectWriter withSchema(final FormatSchema formatSchema) {
        if (this._schema == formatSchema) {
            return this;
        }
        return new ObjectWriter(this, this._config, this._rootType, this._prettyPrinter, formatSchema);
    }
    
    public ObjectWriter withType(final JavaType javaType) {
        if (javaType == this._rootType) {
            return this;
        }
        return new ObjectWriter(this, this._config, javaType, this._prettyPrinter, this._schema);
    }
    
    public ObjectWriter withType(final TypeReference<?> typeReference) {
        return this.withType(this._config.getTypeFactory().constructType(typeReference.getType()));
    }
    
    public ObjectWriter withType(final Class<?> clazz) {
        return this.withType(this._config.constructType(clazz));
    }
    
    public ObjectWriter withView(final Class<?> clazz) {
        if (clazz == this._config.getSerializationView()) {
            return this;
        }
        return new ObjectWriter(this, this._config.withView(clazz));
    }
    
    public void writeValue(final JsonGenerator jsonGenerator, final Object o) throws IOException, JsonGenerationException, JsonMappingException {
        if (this._config.isEnabled(SerializationConfig.Feature.CLOSE_CLOSEABLE) && o instanceof Closeable) {
            this._writeCloseableValue(jsonGenerator, o, this._config);
        }
        else {
            if (this._rootType == null) {
                this._provider.serializeValue(this._config, jsonGenerator, o, this._serializerFactory);
            }
            else {
                this._provider.serializeValue(this._config, jsonGenerator, o, this._rootType, this._serializerFactory);
            }
            if (this._config.isEnabled(SerializationConfig.Feature.FLUSH_AFTER_WRITE_VALUE)) {
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
}
