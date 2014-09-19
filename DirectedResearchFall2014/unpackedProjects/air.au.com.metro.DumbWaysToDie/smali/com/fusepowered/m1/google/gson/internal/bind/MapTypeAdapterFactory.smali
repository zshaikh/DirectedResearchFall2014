.class public final Lcom/fusepowered/m1/google/gson/internal/bind/MapTypeAdapterFactory;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Lcom/fusepowered/m1/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field private final complexMapKeySerialization:Z

.field private final constructorConstructor:Lcom/fusepowered/m1/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/google/gson/internal/ConstructorConstructor;Z)V
    .locals 0
    .parameter "constructorConstructor"
    .parameter "complexMapKeySerialization"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/fusepowered/m1/google/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/fusepowered/m1/google/gson/internal/ConstructorConstructor;

    .line 113
    iput-boolean p2, p0, Lcom/fusepowered/m1/google/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m1/google/gson/internal/bind/MapTypeAdapterFactory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/fusepowered/m1/google/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    return v0
.end method

.method private getKeyAdapter(Lcom/fusepowered/m1/google/gson/Gson;Ljava/lang/reflect/Type;)Lcom/fusepowered/m1/google/gson/TypeAdapter;
    .locals 1
    .parameter "context"
    .parameter "keyType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m1/google/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/fusepowered/m1/google/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 141
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/fusepowered/m1/google/gson/internal/bind/TypeAdapters;->BOOLEAN_AS_STRING:Lcom/fusepowered/m1/google/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/fusepowered/m1/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/m1/google/gson/Gson;->getAdapter(Lcom/fusepowered/m1/google/gson/reflect/TypeToken;)Lcom/fusepowered/m1/google/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public create(Lcom/fusepowered/m1/google/gson/Gson;Lcom/fusepowered/m1/google/gson/reflect/TypeToken;)Lcom/fusepowered/m1/google/gson/TypeAdapter;
    .locals 12
    .parameter "gson"
    .parameter
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
    .local p2, typeToken:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-virtual {p2}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 119
    .local v11, type:Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v9

    .line 120
    .local v9, rawType:Ljava/lang/Class;,"Ljava/lang/Class<-TT;>;"
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    const/4 v1, 0x0

    .line 134
    :goto_0
    return-object v1

    .line 124
    :cond_0
    invoke-static {v11}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v10

    .line 125
    .local v10, rawTypeOfSrc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v11, v10}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 126
    .local v8, keyAndValueTypes:[Ljava/lang/reflect/Type;
    aget-object v1, v8, v2

    invoke-direct {p0, p1, v1}, Lcom/fusepowered/m1/google/gson/internal/bind/MapTypeAdapterFactory;->getKeyAdapter(Lcom/fusepowered/m1/google/gson/Gson;Ljava/lang/reflect/Type;)Lcom/fusepowered/m1/google/gson/TypeAdapter;

    move-result-object v4

    .line 127
    .local v4, keyAdapter:Lcom/fusepowered/m1/google/gson/TypeAdapter;,"Lcom/fusepowered/m1/google/gson/TypeAdapter<*>;"
    aget-object v1, v8, v5

    invoke-static {v1}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/fusepowered/m1/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/fusepowered/m1/google/gson/Gson;->getAdapter(Lcom/fusepowered/m1/google/gson/reflect/TypeToken;)Lcom/fusepowered/m1/google/gson/TypeAdapter;

    move-result-object v6

    .line 128
    .local v6, valueAdapter:Lcom/fusepowered/m1/google/gson/TypeAdapter;,"Lcom/fusepowered/m1/google/gson/TypeAdapter<*>;"
    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/fusepowered/m1/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v1, p2}, Lcom/fusepowered/m1/google/gson/internal/ConstructorConstructor;->get(Lcom/fusepowered/m1/google/gson/reflect/TypeToken;)Lcom/fusepowered/m1/google/gson/internal/ObjectConstructor;

    move-result-object v7

    .line 132
    .local v7, constructor:Lcom/fusepowered/m1/google/gson/internal/ObjectConstructor;,"Lcom/fusepowered/m1/google/gson/internal/ObjectConstructor<TT;>;"
    new-instance v0, Lcom/fusepowered/m1/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;

    aget-object v3, v8, v2

    aget-object v5, v8, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/fusepowered/m1/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;-><init>(Lcom/fusepowered/m1/google/gson/internal/bind/MapTypeAdapterFactory;Lcom/fusepowered/m1/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/fusepowered/m1/google/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/fusepowered/m1/google/gson/TypeAdapter;Lcom/fusepowered/m1/google/gson/internal/ObjectConstructor;)V

    .local v0, result:Lcom/fusepowered/m1/google/gson/TypeAdapter;,"Lcom/fusepowered/m1/google/gson/TypeAdapter<TT;>;"
    move-object v1, v0

    .line 134
    goto :goto_0
.end method
