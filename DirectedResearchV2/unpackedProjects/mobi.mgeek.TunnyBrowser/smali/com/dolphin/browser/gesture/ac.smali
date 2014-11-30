.class abstract Lcom/dolphin/browser/gesture/ac;
.super Ljava/lang/Object;
.source "Learner.java"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/gesture/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ac;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/gesture/z;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ac;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method abstract a(II[F)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[F)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/gesture/ae;",
            ">;"
        }
    .end annotation
.end method

.method a(Lcom/dolphin/browser/gesture/z;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v3, p0, Lcom/dolphin/browser/gesture/ac;->a:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 72
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_3

    .line 73
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/z;

    .line 75
    iget-object v5, v0, Lcom/dolphin/browser/gesture/z;->b:Ljava/lang/String;

    if-nez v5, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v5, v0, Lcom/dolphin/browser/gesture/z;->b:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/dolphin/browser/gesture/z;->b:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 77
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 81
    return-void
.end method
