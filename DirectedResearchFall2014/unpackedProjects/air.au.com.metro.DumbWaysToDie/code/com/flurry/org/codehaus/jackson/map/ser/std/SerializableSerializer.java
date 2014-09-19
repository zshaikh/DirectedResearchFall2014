package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.map.ser.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import java.lang.reflect.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.*;

@JacksonStdImpl
public class SerializableSerializer extends SerializerBase<JsonSerializable>
{
    public static final SerializableSerializer instance;
    
    static {
        instance = new SerializableSerializer();
    }
    
    protected SerializableSerializer() {
        super(JsonSerializable.class);
    }
    
    @Override
    public JsonNode getSchema(final SerializerProvider p0, final Type p1) throws JsonMappingException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokevirtual   com/flurry/org/codehaus/jackson/map/ser/std/SerializableSerializer.createObjectNode:()Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
        //     4: astore_3       
        //     5: ldc             "any"
        //     7: astore          4
        //     9: aconst_null    
        //    10: astore          5
        //    12: aconst_null    
        //    13: astore          6
        //    15: aload_2        
        //    16: ifnull          131
        //    19: aload_2        
        //    20: invokestatic    com/flurry/org/codehaus/jackson/map/type/TypeFactory.type:(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
        //    23: invokevirtual   com/flurry/org/codehaus/jackson/type/JavaType.getRawClass:()Ljava/lang/Class;
        //    26: astore          11
        //    28: aload           11
        //    30: ldc             Lcom/flurry/org/codehaus/jackson/schema/JsonSerializableSchema;.class
        //    32: invokevirtual   java/lang/Class.isAnnotationPresent:(Ljava/lang/Class;)Z
        //    35: istore          12
        //    37: aconst_null    
        //    38: astore          5
        //    40: aconst_null    
        //    41: astore          6
        //    43: iload           12
        //    45: ifeq            131
        //    48: aload           11
        //    50: ldc             Lcom/flurry/org/codehaus/jackson/schema/JsonSerializableSchema;.class
        //    52: invokevirtual   java/lang/Class.getAnnotation:(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
        //    55: checkcast       Lcom/flurry/org/codehaus/jackson/schema/JsonSerializableSchema;
        //    58: astore          13
        //    60: aload           13
        //    62: invokeinterface com/flurry/org/codehaus/jackson/schema/JsonSerializableSchema.schemaType:()Ljava/lang/String;
        //    67: astore          4
        //    69: ldc             "##irrelevant"
        //    71: aload           13
        //    73: invokeinterface com/flurry/org/codehaus/jackson/schema/JsonSerializableSchema.schemaObjectPropertiesDefinition:()Ljava/lang/String;
        //    78: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    81: istore          14
        //    83: aconst_null    
        //    84: astore          6
        //    86: iload           14
        //    88: ifne            100
        //    91: aload           13
        //    93: invokeinterface com/flurry/org/codehaus/jackson/schema/JsonSerializableSchema.schemaObjectPropertiesDefinition:()Ljava/lang/String;
        //    98: astore          6
        //   100: ldc             "##irrelevant"
        //   102: aload           13
        //   104: invokeinterface com/flurry/org/codehaus/jackson/schema/JsonSerializableSchema.schemaItemDefinition:()Ljava/lang/String;
        //   109: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   112: istore          15
        //   114: aconst_null    
        //   115: astore          5
        //   117: iload           15
        //   119: ifne            131
        //   122: aload           13
        //   124: invokeinterface com/flurry/org/codehaus/jackson/schema/JsonSerializableSchema.schemaItemDefinition:()Ljava/lang/String;
        //   129: astore          5
        //   131: aload_3        
        //   132: ldc             "type"
        //   134: aload           4
        //   136: invokevirtual   com/flurry/org/codehaus/jackson/node/ObjectNode.put:(Ljava/lang/String;Ljava/lang/String;)V
        //   139: aload           6
        //   141: ifnull          168
        //   144: aload_3        
        //   145: ldc             "properties"
        //   147: new             Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;
        //   150: dup            
        //   151: invokespecial   com/flurry/org/codehaus/jackson/map/ObjectMapper.<init>:()V
        //   154: aload           6
        //   156: ldc             Lcom/flurry/org/codehaus/jackson/JsonNode;.class
        //   158: invokevirtual   com/flurry/org/codehaus/jackson/map/ObjectMapper.readValue:(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
        //   161: checkcast       Lcom/flurry/org/codehaus/jackson/JsonNode;
        //   164: invokevirtual   com/flurry/org/codehaus/jackson/node/ObjectNode.put:(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;
        //   167: pop            
        //   168: aload           5
        //   170: ifnull          197
        //   173: aload_3        
        //   174: ldc             "items"
        //   176: new             Lcom/flurry/org/codehaus/jackson/map/ObjectMapper;
        //   179: dup            
        //   180: invokespecial   com/flurry/org/codehaus/jackson/map/ObjectMapper.<init>:()V
        //   183: aload           5
        //   185: ldc             Lcom/flurry/org/codehaus/jackson/JsonNode;.class
        //   187: invokevirtual   com/flurry/org/codehaus/jackson/map/ObjectMapper.readValue:(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
        //   190: checkcast       Lcom/flurry/org/codehaus/jackson/JsonNode;
        //   193: invokevirtual   com/flurry/org/codehaus/jackson/node/ObjectNode.put:(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;
        //   196: pop            
        //   197: aload_3        
        //   198: areturn        
        //   199: astore          9
        //   201: new             Ljava/lang/IllegalStateException;
        //   204: dup            
        //   205: aload           9
        //   207: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/Throwable;)V
        //   210: athrow         
        //   211: astore          7
        //   213: new             Ljava/lang/IllegalStateException;
        //   216: dup            
        //   217: aload           7
        //   219: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/Throwable;)V
        //   222: athrow         
        //    Exceptions:
        //  throws com.flurry.org.codehaus.jackson.map.JsonMappingException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  144    168    199    211    Ljava/io/IOException;
        //  173    197    211    223    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0197:
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
    public void serialize(final JsonSerializable jsonSerializable, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        jsonSerializable.serialize(jsonGenerator, serializerProvider);
    }
    
    @Override
    public final void serializeWithType(final JsonSerializable jsonSerializable, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonGenerationException {
        if (jsonSerializable instanceof JsonSerializableWithType) {
            ((JsonSerializableWithType)jsonSerializable).serializeWithType(jsonGenerator, serializerProvider, typeSerializer);
            return;
        }
        this.serialize(jsonSerializable, jsonGenerator, serializerProvider);
    }
}
