.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;
.super Lorg/codehaus/jackson/map/ser/StdSerializers$NonTypedScalarSerializer;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/StdSerializers$NonTypedScalarSerializer",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 83
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$NonTypedScalarSerializer;-><init>(Ljava/lang/Class;)V

    .line 84
    iput-boolean p1, p0, Lorg/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;->a:Z

    .line 85
    return-void
.end method
