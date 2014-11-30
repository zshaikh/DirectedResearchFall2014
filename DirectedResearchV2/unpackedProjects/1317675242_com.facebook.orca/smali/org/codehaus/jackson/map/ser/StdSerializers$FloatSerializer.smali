.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field static final a:Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 219
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 221
    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method
