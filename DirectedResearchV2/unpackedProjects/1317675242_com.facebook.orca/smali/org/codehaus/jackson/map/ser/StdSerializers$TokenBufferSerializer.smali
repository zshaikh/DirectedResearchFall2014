.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$TokenBufferSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Lorg/codehaus/jackson/util/TokenBuffer;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 595
    const-class v0, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method
