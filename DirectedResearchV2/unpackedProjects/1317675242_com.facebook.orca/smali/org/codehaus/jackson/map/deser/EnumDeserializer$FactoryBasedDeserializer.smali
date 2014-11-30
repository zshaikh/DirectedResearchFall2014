.class public Lorg/codehaus/jackson/map/deser/EnumDeserializer$FactoryBasedDeserializer;
.super Lorg/codehaus/jackson/map/deser/StdScalarDeserializer;
.source "EnumDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/StdScalarDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final b:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    const-class v0, Ljava/lang/Enum;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 117
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/EnumDeserializer$FactoryBasedDeserializer;->a:Ljava/lang/Class;

    .line 118
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->f()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/EnumDeserializer$FactoryBasedDeserializer;->b:Ljava/lang/reflect/Method;

    .line 119
    return-void
.end method


# virtual methods
.method public b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 125
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->m()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 128
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/EnumDeserializer$FactoryBasedDeserializer;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 131
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/EnumDeserializer$FactoryBasedDeserializer;->b:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/EnumDeserializer$FactoryBasedDeserializer;->a:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->d(Ljava/lang/Throwable;)V

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method
