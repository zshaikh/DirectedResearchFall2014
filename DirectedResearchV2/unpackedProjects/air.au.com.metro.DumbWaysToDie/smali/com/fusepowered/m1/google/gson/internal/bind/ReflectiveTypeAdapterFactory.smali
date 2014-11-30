.class public final Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcom/fusepowered/m1/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;,
        Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/fusepowered/m1/google/gson/internal/ConstructorConstructor;

.field private final excluder:Lcom/fusepowered/m1/google/gson/internal/Excluder;

.field private final fieldNamingPolicy:Lcom/fusepowered/m1/google/gson/FieldNamingStrategy;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/google/gson/internal/ConstructorConstructor;Lcom/fusepowered/m1/google/gson/FieldNamingStrategy;Lcom/fusepowered/m1/google/gson/internal/Excluder;)V
    .locals 0
    .param p1, "constructorConstructor"    # Lcom/fusepowered/m1/google/gson/internal/ConstructorConstructor;
    .param p2, "fieldNamingPolicy"    # Lcom/fusepowered/m1/google/gson/FieldNamingStrategy;
    .param p3, "excluder"    # Lcom/fusepowered/m1/google/gson/internal/Excluder;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/fusepowered/m1/google/gson/internal/ConstructorConstructor;

    .line 52
    iput-object p2, p0, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/fusepowered/m1/google/gson/FieldNamingStrategy;

    .line 53
    iput-object p3, p0, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/fusepowered/m1/google/gson/internal/Excluder;

    .line 54
    return-void
.end method

.method private createBoundField(Lcom/fusepowered/m1/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/fusepowered/m1/google/gson/reflect/TypeToken;ZZ)Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .locals 9
    .param p1, "context"    # Lcom/fusepowered/m1/google/gson/Gson;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "name"    # Ljava/lang/String;
    .param p5, "serialize"    # Z
    .param p6, "deserialize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m1/google/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/fusepowered/m1/google/gson/reflect/TypeToken",
            "<*>;ZZ)",
            "Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;"
        }
    .end annotation

    .prologue
    .line 79
    .local p4, "fieldType":Lcom/fusepowered/m1/google/gson/reflect/TypeToken;, "Lcom/fusepowered/m1/google/gson/reflect/TypeToken<*>;"
    invoke-virtual {p4}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/google/gson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v8

    .line 82
    .local v8, "isPrimitive":Z
    new-instance v0, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    move-object v1, p0

    move-object v2, p3

    move v3, p5

    move v4, p6

    move-object v5, p1

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLcom/fusepowered/m1/google/gson/Gson;Lcom/fusepowered/m1/google/gson/reflect/TypeToken;Ljava/lang/reflect/Field;Z)V

    return-object v0
.end method

.method private getBoundFields(Lcom/fusepowered/m1/google/gson/Gson;Lcom/fusepowered/m1/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
    .locals 19
    .param p1, "context"    # Lcom/fusepowered/m1/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m1/google/gson/Gson;",
            "Lcom/fusepowered/m1/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, "type":Lcom/fusepowered/m1/google/gson/reflect/TypeToken;, "Lcom/fusepowered/m1/google/gson/reflect/TypeToken<*>;"
    .local p3, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v18, Ljava/util/LinkedHashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedHashMap;-><init>()V

    .line 104
    .local v18, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    :cond_0
    return-object v18

    .line 108
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v12

    .line 109
    .local v12, "declaredType":Ljava/lang/reflect/Type;
    :goto_0
    const-class v3, Ljava/lang/Object;

    move-object/from16 v0, p3

    move-object v1, v3

    if-eq v0, v1, :cond_0

    .line 110
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v14

    .line 111
    .local v14, "fields":[Ljava/lang/reflect/Field;
    move-object v10, v14

    .local v10, "arr$":[Ljava/lang/reflect/Field;
    move-object v0, v10

    array-length v0, v0

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_1
    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    aget-object v5, v10, v15

    .line 112
    .local v5, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v8

    .line 113
    .local v8, "serialize":Z
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v9

    .line 114
    .local v9, "deserialize":Z
    if-nez v8, :cond_3

    if-nez v9, :cond_3

    .line 111
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 117
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v4

    move-object v0, v3

    move-object/from16 v1, p3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v13

    .line 119
    .local v13, "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v13}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/fusepowered/m1/google/gson/reflect/TypeToken;

    move-result-object v7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/fusepowered/m1/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/fusepowered/m1/google/gson/reflect/TypeToken;ZZ)Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    move-result-object v11

    .line 121
    .local v11, "boundField":Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    iget-object v3, v11, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 122
    .local v17, "previous":Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    if-eqz v17, :cond_2

    .line 123
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " declares multiple JSON fields named "

    .end local v5    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 127
    .end local v8    # "serialize":Z
    .end local v9    # "deserialize":Z
    .end local v11    # "boundField":Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v13    # "fieldType":Ljava/lang/reflect/Type;
    .end local v17    # "previous":Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    move-object v0, v3

    move-object/from16 v1, p3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/fusepowered/m1/google/gson/reflect/TypeToken;

    move-result-object p2

    .line 128
    invoke-virtual/range {p2 .. p2}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p3

    .line 129
    goto/16 :goto_0
.end method

.method private getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 61
    const-class v1, Lcom/fusepowered/m1/google/gson/annotations/SerializedName;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/google/gson/annotations/SerializedName;

    .line 62
    .local v0, "serializedName":Lcom/fusepowered/m1/google/gson/annotations/SerializedName;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/fusepowered/m1/google/gson/FieldNamingStrategy;

    invoke-interface {v1, p1}, Lcom/fusepowered/m1/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/fusepowered/m1/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public create(Lcom/fusepowered/m1/google/gson/Gson;Lcom/fusepowered/m1/google/gson/reflect/TypeToken;)Lcom/fusepowered/m1/google/gson/TypeAdapter;
    .locals 5
    .param p1, "gson"    # Lcom/fusepowered/m1/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fusepowered/m1/google/gson/Gson;",
            "Lcom/fusepowered/m1/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/fusepowered/m1/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p2, "type":Lcom/fusepowered/m1/google/gson/reflect/TypeToken;, "Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    const/4 v4, 0x0

    .line 66
    invoke-virtual {p2}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 68
    .local v1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v4

    .line 73
    :goto_0
    return-object v2

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/fusepowered/m1/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v2, p2}, Lcom/fusepowered/m1/google/gson/internal/ConstructorConstructor;->get(Lcom/fusepowered/m1/google/gson/reflect/TypeToken;)Lcom/fusepowered/m1/google/gson/internal/ObjectConstructor;

    move-result-object v0

    .line 73
    .local v0, "constructor":Lcom/fusepowered/m1/google/gson/internal/ObjectConstructor;, "Lcom/fusepowered/m1/google/gson/internal/ObjectConstructor<TT;>;"
    new-instance v2, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    invoke-direct {p0, p1, p2, v1}, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/fusepowered/m1/google/gson/Gson;Lcom/fusepowered/m1/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v0, v3, v4}, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/fusepowered/m1/google/gson/internal/ObjectConstructor;Ljava/util/Map;Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;)V

    goto :goto_0
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 2
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .param p2, "serialize"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/fusepowered/m1/google/gson/internal/Excluder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/fusepowered/m1/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/fusepowered/m1/google/gson/internal/Excluder;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/m1/google/gson/internal/Excluder;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
