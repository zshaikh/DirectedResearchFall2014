.class public final Lorg/codehaus/jackson/map/ser/JdkSerializers$AtomicReferenceSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "JdkSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 126
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method
