.class public final Lorg/codehaus/jackson/map/ser/FailingSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "FailingSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 26
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/FailingSerializer;->a:Ljava/lang/String;

    .line 27
    return-void
.end method
