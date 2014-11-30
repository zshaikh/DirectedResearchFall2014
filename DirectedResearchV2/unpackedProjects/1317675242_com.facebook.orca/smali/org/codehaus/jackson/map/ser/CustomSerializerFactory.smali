.class public Lorg/codehaus/jackson/map/ser/CustomSerializerFactory;
.super Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;
.source "CustomSerializerFactory.java"


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/CustomSerializerFactory;-><init>(Lorg/codehaus/jackson/map/SerializerFactory$Config;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/SerializerFactory$Config;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;-><init>(Lorg/codehaus/jackson/map/SerializerFactory$Config;)V

    .line 56
    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/CustomSerializerFactory;->a:Ljava/util/HashMap;

    .line 75
    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/CustomSerializerFactory;->b:Ljava/util/HashMap;

    .line 80
    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/CustomSerializerFactory;->c:Ljava/util/HashMap;

    .line 94
    return-void
.end method
