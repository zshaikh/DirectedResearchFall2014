.class public Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;
.super Ljava/lang/Object;
.source "SimpleKeyDeserializers.java"

# interfaces
.implements Lorg/codehaus/jackson/map/KeyDeserializers;


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;->a:Ljava/util/HashMap;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;->a:Ljava/util/HashMap;

    new-instance v1, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/map/KeyDeserializer;

    move-object v0, p0

    goto :goto_0
.end method
