.class public Lorg/codehaus/jackson/map/ser/impl/TimeZoneSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "TimeZoneSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/util/TimeZone;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/codehaus/jackson/map/ser/impl/TimeZoneSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lorg/codehaus/jackson/map/ser/impl/TimeZoneSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/impl/TimeZoneSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/impl/TimeZoneSerializer;->a:Lorg/codehaus/jackson/map/ser/impl/TimeZoneSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Ljava/util/TimeZone;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method
