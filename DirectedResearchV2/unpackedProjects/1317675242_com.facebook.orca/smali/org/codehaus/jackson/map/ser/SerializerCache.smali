.class public final Lorg/codehaus/jackson/map/ser/SerializerCache;
.super Ljava/lang/Object;
.source "SerializerCache.java"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache;->a:Ljava/util/HashMap;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache;->b:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 43
    return-void
.end method
