.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field static final a:Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 177
    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method
