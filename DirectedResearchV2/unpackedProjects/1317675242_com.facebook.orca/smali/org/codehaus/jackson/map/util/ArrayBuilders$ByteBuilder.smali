.class public final Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;
.super Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)[B
    .locals 1

    .prologue
    .line 100
    new-array v0, p1, [B

    return-object v0
.end method

.method public bridge synthetic b(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;->a(I)[B

    move-result-object v0

    return-object v0
.end method
