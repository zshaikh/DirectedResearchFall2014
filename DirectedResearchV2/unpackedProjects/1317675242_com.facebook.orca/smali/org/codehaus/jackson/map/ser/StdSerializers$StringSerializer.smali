.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$StringSerializer;
.super Lorg/codehaus/jackson/map/ser/StdSerializers$NonTypedScalarSerializer;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/StdSerializers$NonTypedScalarSerializer",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$NonTypedScalarSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method
