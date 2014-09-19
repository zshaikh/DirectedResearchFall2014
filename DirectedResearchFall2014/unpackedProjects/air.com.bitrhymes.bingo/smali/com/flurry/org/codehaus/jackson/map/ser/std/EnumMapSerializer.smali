.class public Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
.source "EnumMapSerializer.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase",
        "<",
        "Ljava/util/EnumMap",
        "<+",
        "Ljava/lang/Enum",
        "<*>;*>;>;",
        "Lcom/flurry/org/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation


# instance fields
.field protected final _keyEnums:Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

.field protected final _property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

.field protected final _staticTyping:Z

.field protected _valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected final _valueTypeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/util/EnumValues;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)V
    .locals 7
    .parameter "valueType"
    .parameter "staticTyping"
    .parameter "keyEnums"
    .parameter "vts"
    .parameter "property"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/util/EnumValues;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/util/EnumValues;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 2
    .parameter "valueType"
    .parameter "staticTyping"
    .parameter "keyEnums"
    .parameter "vts"
    .parameter "property"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Z",
            "Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/flurry/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;,"Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 70
    const-class v0, Ljava/util/EnumMap;

    invoke-direct {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 71
    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_staticTyping:Z

    .line 72
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 73
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_keyEnums:Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

    .line 74
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_valueTypeSerializer:Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;

    .line 75
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    .line 76
    iput-object p6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 77
    return-void

    :cond_1
    move v0, v1

    .line 71
    goto :goto_0
.end method


# virtual methods
.method public _withValueTypeSerializer(Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 7
    .parameter "vts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lcom/flurry/org/codehaus/jackson/map/ser/std/ContainerSerializerBase",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_staticTyping:Z

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_keyEnums:Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    iget-object v6, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;ZLcom/flurry/org/codehaus/jackson/map/util/EnumValues;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method

.method public getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 17
    .parameter "provider"
    .parameter "typeHint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 198
    const-string v15, "object"

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v9

    .line 199
    .local v9, o:Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move v15, v0

    if-eqz v15, :cond_2

    .line 200
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .end local p2
    invoke-interface/range {p2 .. p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v13

    .line 201
    .local v13, typeArgs:[Ljava/lang/reflect/Type;
    array-length v15, v13

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    .line 202
    const/4 v15, 0x0

    aget-object v15, v13, v15

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 203
    .local v5, enumType:Lcom/flurry/org/codehaus/jackson/type/JavaType;
    const/4 v15, 0x1

    aget-object v15, v13, v15

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v14

    .line 204
    .local v14, valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;
    sget-object v15, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->instance:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v15}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v10

    .line 205
    .local v10, propsNode:Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    .line 206
    .local v4, enumClass:Ljava/lang/Class;,"Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Enum;

    .local v3, arr$:[Ljava/lang/Enum;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v6, v3, v7

    .line 207
    .local v6, enumValue:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    invoke-virtual {v14}, Lcom/flurry/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v12

    .line 208
    .local v12, ser:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;,"Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    instance-of v15, v12, Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;

    if-eqz v15, :cond_0

    check-cast v12, Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;

    .end local v12           #ser:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;,"Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v15, 0x0

    move-object v0, v12

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-interface {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/schema/SchemaAware;->getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v15

    move-object v11, v15

    .line 211
    .local v11, schemaNode:Lcom/flurry/org/codehaus/jackson/JsonNode;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->getConfig()Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v15

    invoke-virtual {v15}, Lcom/flurry/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v15

    invoke-virtual {v15, v6}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15, v11}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 206
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 208
    .end local v11           #schemaNode:Lcom/flurry/org/codehaus/jackson/JsonNode;
    .restart local v12       #ser:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;,"Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_0
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/schema/JsonSchema;->getDefaultSchemaNode()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v15

    move-object v11, v15

    goto :goto_1

    .line 213
    .end local v6           #enumValue:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    .end local v12           #ser:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;,"Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_1
    const-string v15, "properties"

    invoke-virtual {v9, v15, v10}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonNode;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 216
    .end local v3           #arr$:[Ljava/lang/Enum;
    .end local v4           #enumClass:Ljava/lang/Class;,"Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    .end local v5           #enumType:Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v10           #propsNode:Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    .end local v13           #typeArgs:[Ljava/lang/reflect/Type;
    .end local v14           #valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;
    :cond_2
    return-object v9
.end method

.method public resolve(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_staticTyping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_valueType:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    .line 191
    :cond_0
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 23
    check-cast p1, Ljava/util/EnumMap;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->serialize(Ljava/util/EnumMap;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/EnumMap;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter "jgen"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
            "Lcom/flurry/org/codehaus/jackson/JsonGenerator;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 89
    .local p1, value:Ljava/util/EnumMap;,"Ljava/util/EnumMap<+Ljava/lang/Enum<*>;*>;"
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 90
    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->serializeContents(Ljava/util/EnumMap;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 93
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 94
    return-void
.end method

.method protected serializeContents(Ljava/util/EnumMap;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 18
    .parameter
    .parameter "jgen"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
            "Lcom/flurry/org/codehaus/jackson/JsonGenerator;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 111
    .local p1, value:Ljava/util/EnumMap;,"Ljava/util/EnumMap<+Ljava/lang/Enum<*>;*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->serializeContentsUsing(Ljava/util/EnumMap;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V

    .line 155
    :cond_0
    return-void

    .line 115
    :cond_1
    const/4 v13, 0x0

    .line 116
    .local v13, prevSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;,"Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v12, 0x0

    .line 117
    .local v12, prevClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_keyEnums:Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

    move-object v11, v0

    .line 119
    .local v11, keyEnums:Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;
    invoke-virtual/range {p1 .. p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 121
    .local v8, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+Ljava/lang/Enum<*>;*>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Enum;

    .line 122
    .local v10, key:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    if-nez v11, :cond_2

    .line 128
    invoke-virtual {v10}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v14

    check-cast v14, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;

    .line 130
    .local v14, ser:Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;,"Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase<*>;"
    check-cast v14, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;

    .end local v14           #ser:Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;,"Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase<*>;"
    invoke-virtual {v14}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;->getEnumValues()Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

    move-result-object v11

    .line 132
    :cond_2
    invoke-virtual {v11, v10}, Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;->serializedValueFor(Ljava/lang/Enum;)Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Lcom/flurry/org/codehaus/jackson/io/SerializedString;)V

    .line 134
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 135
    .local v15, valueElem:Ljava/lang/Object;
    if-nez v15, :cond_3

    .line 136
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 140
    .local v5, cc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-ne v5, v12, :cond_4

    .line 141
    move-object v6, v13

    .line 148
    .local v6, currSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;,"Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :goto_1
    :try_start_0
    move-object v0, v6

    move-object v1, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v7

    .line 151
    .local v7, e:Ljava/lang/Exception;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #cc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast v5, Ljava/lang/Enum;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v2, v7

    move-object/from16 v3, p1

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->wrapAndThrow(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    .end local v6           #currSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;,"Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v5       #cc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v6

    .line 144
    .restart local v6       #currSerializer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;,"Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    move-object v13, v6

    .line 145
    move-object v12, v5

    goto :goto_1
.end method

.method protected serializeContentsUsing(Ljava/util/EnumMap;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 9
    .parameter
    .parameter "jgen"
    .parameter "provider"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
            "Lcom/flurry/org/codehaus/jackson/JsonGenerator;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 161
    .local p1, value:Ljava/util/EnumMap;,"Ljava/util/EnumMap<+Ljava/lang/Enum<*>;*>;"
    .local p4, valueSer:Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;,"Lcom/flurry/org/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_keyEnums:Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

    .line 162
    .local v4, keyEnums:Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;
    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 163
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+Ljava/lang/Enum<*>;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    .line 164
    .local v3, key:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    if-nez v4, :cond_0

    .line 166
    invoke-virtual {v3}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p0, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->_property:Lcom/flurry/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p3, v7, v8}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/BeanProperty;)Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;

    .line 168
    .local v5, ser:Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;,"Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase<*>;"
    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;

    .end local v5           #ser:Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase;,"Lcom/flurry/org/codehaus/jackson/map/ser/std/SerializerBase<*>;"
    invoke-virtual {v5}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumSerializer;->getEnumValues()Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;

    move-result-object v4

    .line 170
    :cond_0
    invoke-virtual {v4, v3}, Lcom/flurry/org/codehaus/jackson/map/util/EnumValues;->serializedValueFor(Ljava/lang/Enum;)Lcom/flurry/org/codehaus/jackson/io/SerializedString;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Lcom/flurry/org/codehaus/jackson/io/SerializedString;)V

    .line 171
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 172
    .local v6, valueElem:Ljava/lang/Object;
    if-nez v6, :cond_1

    .line 173
    invoke-virtual {p3, p2}, Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 176
    :cond_1
    :try_start_0
    invoke-virtual {p4, v6, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Enum;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p3, v0, p1, v7}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->wrapAndThrow(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+Ljava/lang/Enum<*>;*>;"
    .end local v3           #key:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    .end local v6           #valueElem:Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 23
    check-cast p1, Ljava/util/EnumMap;

    .end local p1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->serializeWithType(Ljava/util/EnumMap;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType(Ljava/util/EnumMap;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .parameter
    .parameter "jgen"
    .parameter "provider"
    .parameter "typeSer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
            "Lcom/flurry/org/codehaus/jackson/JsonGenerator;",
            "Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;",
            "Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 101
    .local p1, value:Ljava/util/EnumMap;,"Ljava/util/EnumMap<+Ljava/lang/Enum<*>;*>;"
    invoke-virtual {p4, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 102
    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/std/EnumMapSerializer;->serializeContents(Ljava/util/EnumMap;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    .line 105
    :cond_0
    invoke-virtual {p4, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 106
    return-void
.end method
