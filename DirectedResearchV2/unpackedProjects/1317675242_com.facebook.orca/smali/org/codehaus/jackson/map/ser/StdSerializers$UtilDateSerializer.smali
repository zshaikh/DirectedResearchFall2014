.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field public static final a:Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 357
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 359
    const-class v0, Ljava/util/Date;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method
