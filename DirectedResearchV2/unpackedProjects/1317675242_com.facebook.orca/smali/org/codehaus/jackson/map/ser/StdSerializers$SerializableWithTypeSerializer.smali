.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableWithTypeSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Lorg/codehaus/jackson/map/JsonSerializableWithType;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field protected static final a:Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableWithTypeSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 520
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableWithTypeSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableWithTypeSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableWithTypeSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableWithTypeSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 522
    const-class v0, Lorg/codehaus/jackson/map/JsonSerializableWithType;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method
