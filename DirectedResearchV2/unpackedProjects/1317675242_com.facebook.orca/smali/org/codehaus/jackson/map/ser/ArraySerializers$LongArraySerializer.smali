.class public final Lorg/codehaus/jackson/map/ser/ArraySerializers$LongArraySerializer;
.super Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer;
.source "ArraySerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer",
        "<[J>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/ArraySerializers$LongArraySerializer;-><init>(Lorg/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 2

    .prologue
    .line 387
    const-class v0, [J

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    return-void
.end method
