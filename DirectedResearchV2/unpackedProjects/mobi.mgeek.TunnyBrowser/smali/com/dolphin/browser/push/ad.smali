.class Lcom/dolphin/browser/push/ad;
.super Lcom/dolphin/browser/util/f;
.source "PushMessageScheduler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/dolphin/browser/push/v;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/ab;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/push/ab;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/dolphin/browser/push/ad;->a:Lcom/dolphin/browser/push/ab;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/push/ab;Lcom/dolphin/browser/push/ac;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/dolphin/browser/push/ad;-><init>(Lcom/dolphin/browser/push/ab;)V

    return-void
.end method

.method private b(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/v;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 84
    const/high16 v0, -0x80000000

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/v;

    .line 86
    invoke-virtual {v0}, Lcom/dolphin/browser/push/v;->a()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 87
    invoke-virtual {v0}, Lcom/dolphin/browser/push/v;->a()I

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    .line 90
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/push/ad;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/v;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/push/ad;->a:Lcom/dolphin/browser/push/ab;

    invoke-static {v0}, Lcom/dolphin/browser/push/ab;->b(Lcom/dolphin/browser/push/ab;)Lcom/dolphin/browser/push/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/ad;->a:Lcom/dolphin/browser/push/ab;

    invoke-static {v1}, Lcom/dolphin/browser/push/ab;->a(Lcom/dolphin/browser/push/ab;)Lcom/dolphin/browser/push/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/push/af;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/push/aa;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 72
    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/ad;->b(Ljava/util/List;)I

    move-result v1

    .line 73
    if-lez v1, :cond_0

    .line 74
    iget-object v2, p0, Lcom/dolphin/browser/push/ad;->a:Lcom/dolphin/browser/push/ab;

    invoke-static {v2}, Lcom/dolphin/browser/push/ab;->a(Lcom/dolphin/browser/push/ab;)Lcom/dolphin/browser/push/af;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/push/af;->a(Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/push/ad;->a:Lcom/dolphin/browser/push/ab;

    invoke-static {v1}, Lcom/dolphin/browser/push/ab;->a(Lcom/dolphin/browser/push/ab;)Lcom/dolphin/browser/push/af;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/push/af;->a(J)V

    .line 79
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/push/ad;->a(Ljava/util/List;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/v;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/push/ad;->a:Lcom/dolphin/browser/push/ab;

    invoke-static {v0}, Lcom/dolphin/browser/push/ab;->c(Lcom/dolphin/browser/push/ab;)V

    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/push/ad;->a:Lcom/dolphin/browser/push/ab;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/push/ab;->notifyObservers(Ljava/lang/Object;)V

    .line 100
    :cond_0
    return-void
.end method
