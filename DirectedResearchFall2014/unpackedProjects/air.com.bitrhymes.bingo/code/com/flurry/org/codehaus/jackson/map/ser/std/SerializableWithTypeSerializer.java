package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import java.lang.reflect.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.*;

@JacksonStdImpl
public class SerializableWithTypeSerializer extends SerializerBase<JsonSerializableWithType>
{
    public static final SerializableWithTypeSerializer instance;
    
    static {
        instance = new SerializableWithTypeSerializer();
    }
    
    protected SerializableWithTypeSerializer() {
        super(JsonSerializableWithType.class);
    }
    
    @Override
    public JsonNode getSchema(final SerializerProvider p0, final Type p1) throws JsonMappingException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokevirtual   com/flurry/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer.createObjectNode:()Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
        //     4: astore_3       
        //     5: ldc             "any"
        //     7: astore          4
        //     9: aconst_null    
        //    10: astore          5
        //    12: aconst_null    
        //    13: astore          6
        //    15: aload_2        
        //    16: ifnull          128
        //    19: aload_2        
        //    20: invokestatic    com/flurry/org/codehaus/jackson/map/type/TypeFactory.rawClass:(Ljava/lang/reflect/Type;)Ljava/lang/Class;
        //    23: astore          11
        //    25: aload           11
        //    27: ldc             Lcom/flurry/org/codehaus/jackson/schema/JsonSerializableSchema;.class
        //    29: invokevirtual   java/lang/Class.isAnnotationPresent:(Ljava/lang/Class;)Z
        //    32: istore          12
        //    34: aconst_null    
        //    35: astore          5
        //    37: aconst_null    
        //    38: astore          6
        //    40: iload           12
        //    42: ifeq            128
        //    45: aload           11
        //    47: ldc             Lcom/flurry/org/codehaus/jackson/schema/JsonSerializableSchema;.class
        //    49: invokevirtual   java/lang/Class.getAnnotation:(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
        //    52: checkcast       Lcom/flurry/org/codehaus/jackson/schema/JsonSerializableSchema;
        //    55: astore          13
        //    57: aload           13
        //    59: invokeinterface com/flurry/org/codehaus/jackson/schema/JsonSerializableSchema.schemaType:()Ljava/lang/String;
        //    64: astore          4
        //    66: ldc             "##irrelevant"
        //    68: aload           13
        //    70: invokeinterface com/flurry/org/codehaus/jackson/schema/JsonSerializableSchema.schemaObjectPropertiesDefinition:()Ljava/lang/String;
        //    75: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    78: istore          14
        //    80: aconst_null    
        //    81: astore          6
        //    83: iload           14
        //    85: ifne            97
        //    88: aload           13
        //    90: invokeinterface com/flurry/org/codehaus/jackson/schema/JsonSerializableSchema.schemaObjectPropertiesDefinition:()Ljava/lang/String;
        //    95: astore          6
        //    97: ldc             "##irrelevant"
        //    99: aload           13
        //   101: invokeinterface com/flurry/org/codehaus/jackson/schema/JsonSerializableSchema.schemaItemDefinition:()Ljava/lang/String;
        //   106: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   109: istore          15
        //   111: aconst_null    
        //   112: astore          5
        //   114: iload           15
        //   116: ifne            128
        //   119: aload           13
        //   121: invokeinterface com/flurry/org/codehaus/jackson/schema/JsonSerializableSchema.schemaItemDefinition:()Ljava/lang/String;
        //   126: astore          5
        //   128: aload_3        
        //   129: ldc             "type"
        //   131: aload           4
        //   133: invokevirtual   com/flurry/org/codehaus/jackson/node/ObjectNode.put:(Ljava/lang/String;Ljava/lang/String;)V
        //   136: aload           6
        //   138: ifnull          165
        //   141: aload_3        
        //   142: ldc             "properties"
        //   144: new             Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;
        //   147: dup            
        //   148: invokespecial   com/flurry/org/codehaus/jackson/map/ObjectMapper.<init>:()V
        //   151: aload           6
        //   153: ldc             Lcom/flurry/org/codehaus/jackson/JsonNode;.class
        //   155: invokevirtual   com/flurry/org/codehaus/jackson/map/ObjectMapper.readValue:(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
        //   158: checkcast       Lcom/flurry/org/codehaus/jackson/JsonNode;
        //   161: invokevirtual   com/flurry/org/codehaus/jackson/node/ObjectNode.put:(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;
        //   164: pop            
        //   165: aload           5
        //   167: ifnull          194
        //   170: aload_3        
        //   171: ldc             "items"
        //   173: new             Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;
        //   176: dup            
        //   177: invokespecial   com/flurry/org/codehaus/jackson/map/ObjectMapper.<init>:()V
        //   180: aload           5
        //   182: ldc             Lcom/flurry/org/codehaus/jackson/JsonNode;.class
        //   184: invokevirtual   com/flurry/org/codehaus/jackson/map/ObjectMapper.readValue:(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
        //   187: checkcast       Lcom/flurry/org/codehaus/jackson/JsonNode;
        //   190: invokevirtual   com/flurry/org/codehaus/jackson/node/ObjectNode.put:(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;
        //   193: pop            
        //   194: aload_3        
        //   195: areturn        
        //   196: astore          9
        //   198: new             Ljava/lang/IllegalStateException;
        //   201: dup            
        //   202: aload           9
        //   204: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/Throwable;)V
        //   207: athrow         
        //   208: astore          7
        //   210: new             Ljava/lang/IllegalStateException;
        //   213: dup            
        //   214: aload           7
        //   216: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/Throwable;)V
        //   219: athrow         
        //    Exceptions:
        //  throws com.flurry.org.codehaus.jackson.map.JsonMappingException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  141    165    196    208    Ljava/io/IOException;
        //  170    194    208    220    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0194:
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
    
    @Override
    public void serialize(final JsonSerializableWithType jsonSerializableWithType, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        jsonSerializableWithType.serialize(jsonGenerator, serializerProvider);
    }
    
    @Override
    public final void serializeWithType(final JsonSerializableWithType jsonSerializableWithType, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonGenerationException {
        jsonSerializableWithType.serializeWithType(jsonGenerator, serializerProvider, typeSerializer);
    }
}
