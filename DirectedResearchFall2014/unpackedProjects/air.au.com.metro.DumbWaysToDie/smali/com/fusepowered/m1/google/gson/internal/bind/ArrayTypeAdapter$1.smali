.class final Lcom/fusepowered/m1/google/gson/internal/bind/ArrayTypeAdapter$1;
.super Ljava/lang/Object;
.source "ArrayTypeAdapter.java"

# interfaces
.implements Lcom/fusepowered/m1/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/google/gson/internal/bind/ArrayTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/fusepowered/m1/google/gson/Gson;Lcom/fusepowered/m1/google/gson/reflect/TypeToken;)Lcom/fusepowered/m1/google/gson/TypeAdapter;
    .locals 6
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
    .line 42
    .local p2, typeToken:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 43
    .local v3, type:Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/reflect/GenericArrayType;

    if-nez v4, :cond_1

    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_0

    move-object v0, v3

    check-cast v0, Ljava/lang/Class;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_1

    .line 44
    :cond_0
    const/4 v4, 0x0

    .line 49
    :goto_0
    return-object v4

    .line 47
    :cond_1
    invoke-static {v3}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 48
    .local v1, componentType:Ljava/lang/reflect/Type;
    invoke-static {v1}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/fusepowered/m1/google/gson/reflect/TypeToken;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/fusepowered/m1/google/gson/Gson;->getAdapter(Lcom/fusepowered/m1/google/gson/reflect/TypeToken;)Lcom/fusepowered/m1/google/gson/TypeAdapter;

    move-result-object v2

    .line 49
    .local v2, componentTypeAdapter:Lcom/fusepowered/m1/google/gson/TypeAdapter;,"Lcom/fusepowered/m1/google/gson/TypeAdapter<*>;"
    new-instance v4, Lcom/fusepowered/m1/google/gson/internal/bind/ArrayTypeAdapter;

    invoke-static {v1}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p1, v2, v5}, Lcom/fusepowered/m1/google/gson/internal/bind/ArrayTypeAdapter;-><init>(Lcom/fusepowered/m1/google/gson/Gson;Lcom/fusepowered/m1/google/gson/TypeAdapter;Ljava/lang/Class;)V

    goto :goto_0
.end method
