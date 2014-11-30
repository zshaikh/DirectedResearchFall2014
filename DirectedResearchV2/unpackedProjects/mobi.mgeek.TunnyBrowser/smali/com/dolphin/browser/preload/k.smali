.class public Lcom/dolphin/browser/preload/k;
.super Lcom/dolphin/browser/util/f;
.source "DataConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/preload/f;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/preload/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/preload/f;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/preload/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    iput-object p1, p0, Lcom/dolphin/browser/preload/k;->a:Lcom/dolphin/browser/preload/f;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 479
    iput-object p2, p0, Lcom/dolphin/browser/preload/k;->b:Ljava/util/List;

    .line 480
    return-void
.end method

.method private a(Lcom/dolphin/browser/preload/a/d;)V
    .locals 5

    .prologue
    .line 495
    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/d;->b()Ljava/lang/String;

    move-result-object v2

    .line 497
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/a/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_2

    .line 502
    iget-object v3, p0, Lcom/dolphin/browser/preload/k;->a:Lcom/dolphin/browser/preload/f;

    invoke-static {v3}, Lcom/dolphin/browser/preload/f;->a(Lcom/dolphin/browser/preload/f;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/dolphin/browser/ui/launcher/x;->b(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 504
    :cond_2
    iget-object v3, p0, Lcom/dolphin/browser/preload/k;->a:Lcom/dolphin/browser/preload/f;

    invoke-static {v3}, Lcom/dolphin/browser/preload/f;->a(Lcom/dolphin/browser/preload/f;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v0, v4}, Lcom/dolphin/browser/util/BrowserUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 474
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/preload/k;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 484
    iget-object v0, p0, Lcom/dolphin/browser/preload/k;->b:Ljava/util/List;

    .line 485
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 491
    :cond_0
    return-object v2

    .line 488
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/preload/a/d;

    .line 489
    invoke-direct {p0, v0}, Lcom/dolphin/browser/preload/k;->a(Lcom/dolphin/browser/preload/a/d;)V

    goto :goto_0
.end method
