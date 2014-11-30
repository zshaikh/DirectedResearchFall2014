.class public final Lorg/codehaus/jackson/map/ser/ToStringSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "ToStringSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field public static final a:Lorg/codehaus/jackson/map/ser/ToStringSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/codehaus/jackson/map/ser/ToStringSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/ToStringSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/ToStringSerializer;->a:Lorg/codehaus/jackson/map/ser/ToStringSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method
