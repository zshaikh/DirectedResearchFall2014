.class public Lorg/codehaus/jackson/map/ser/impl/InetAddressSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "InetAddressSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/codehaus/jackson/map/ser/impl/InetAddressSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lorg/codehaus/jackson/map/ser/impl/InetAddressSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/impl/InetAddressSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/impl/InetAddressSerializer;->a:Lorg/codehaus/jackson/map/ser/impl/InetAddressSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Ljava/net/InetAddress;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method
