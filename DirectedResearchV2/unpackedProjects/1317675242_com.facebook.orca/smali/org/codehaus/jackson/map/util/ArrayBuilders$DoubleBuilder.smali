.class public final Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;
.super Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder",
        "<[D>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)[D
    .locals 1

    .prologue
    .line 136
    new-array v0, p1, [D

    return-object v0
.end method

.method public bridge synthetic b(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;->a(I)[D

    move-result-object v0

    return-object v0
.end method
