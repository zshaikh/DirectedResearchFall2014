.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field static final a:Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 199
    const-class v0, Ljava/lang/Long;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method
