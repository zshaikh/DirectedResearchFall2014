.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;
.super Lorg/codehaus/jackson/map/ser/StdSerializers$NonTypedScalarSerializer;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/StdSerializers$NonTypedScalarSerializer",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field static final a:Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 248
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 250
    const-class v0, Ljava/lang/Double;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$NonTypedScalarSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method
