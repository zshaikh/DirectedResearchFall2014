.class Lcom/dolphin/browser/launcher/i;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/dolphin/browser/launcher/bw;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/f;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/dolphin/browser/launcher/i;->a:Lcom/dolphin/browser/launcher/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 445
    if-nez p3, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/i;->a:Lcom/dolphin/browser/launcher/f;

    new-instance v1, Lcom/dolphin/browser/launcher/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/dolphin/browser/launcher/j;-><init>(Lcom/dolphin/browser/launcher/i;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/bv;)Ljava/util/List;

    move-result-object v0

    .line 460
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 461
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 462
    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 463
    invoke-virtual {v0, p3}, Lcom/dolphin/browser/launcher/cl;->a(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/launcher/i;->a:Lcom/dolphin/browser/launcher/f;

    new-instance v1, Lcom/dolphin/browser/launcher/k;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/dolphin/browser/launcher/k;-><init>(Lcom/dolphin/browser/launcher/i;Landroid/graphics/Bitmap;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/f;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
