.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Lorg/codehaus/jackson/map/JsonSerializable;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field protected static final a:Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 441
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 443
    const-class v0, Lorg/codehaus/jackson/map/JsonSerializable;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method
