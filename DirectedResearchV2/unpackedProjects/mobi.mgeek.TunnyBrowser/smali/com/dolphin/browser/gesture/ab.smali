.class final Lcom/dolphin/browser/gesture/ab;
.super Ljava/lang/Object;
.source "InstanceLearner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dolphin/browser/gesture/ae;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/gesture/ae;Lcom/dolphin/browser/gesture/ae;)I
    .locals 5

    .prologue
    .line 32
    iget-wide v0, p1, Lcom/dolphin/browser/gesture/ae;->b:D

    .line 33
    iget-wide v2, p2, Lcom/dolphin/browser/gesture/ae;->b:D

    .line 34
    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 35
    const/4 v0, -0x1

    .line 39
    :goto_0
    return v0

    .line 36
    :cond_0
    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 37
    const/4 v0, 0x1

    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/dolphin/browser/gesture/ae;

    check-cast p2, Lcom/dolphin/browser/gesture/ae;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/gesture/ab;->a(Lcom/dolphin/browser/gesture/ae;Lcom/dolphin/browser/gesture/ae;)I

    move-result v0

    return v0
.end method
