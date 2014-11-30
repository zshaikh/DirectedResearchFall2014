.class public abstract Lcom/dolphin/browser/extensions/aw;
.super Lcom/dolphin/browser/core/a;
.source "PluginManager.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/p;


# instance fields
.field protected a:[Lcom/dolphin/browser/extensions/n;

.field protected b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1445
    invoke-direct {p0}, Lcom/dolphin/browser/core/a;-><init>()V

    .line 1446
    iput-object p1, p0, Lcom/dolphin/browser/extensions/aw;->b:Landroid/content/Context;

    .line 1447
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/p;)V

    .line 1448
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/aw;->c()V

    .line 1449
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 1490
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/aw;->c()V

    .line 1491
    return-void
.end method

.method protected abstract a(ILandroid/view/View;Landroid/view/ViewParent;)V
.end method

.method public b()V
    .locals 0

    .prologue
    .line 1495
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 1452
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/al;->e()[Lcom/dolphin/browser/extensions/n;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/aw;->a:[Lcom/dolphin/browser/extensions/n;

    .line 1453
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/aw;->notifyDataSetChanged()V

    .line 1454
    return-void
.end method

.method protected abstract d()Landroid/view/View;
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/dolphin/browser/extensions/aw;->a:[Lcom/dolphin/browser/extensions/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/aw;->a:[Lcom/dolphin/browser/extensions/n;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/dolphin/browser/extensions/aw;->a:[Lcom/dolphin/browser/extensions/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/aw;->a:[Lcom/dolphin/browser/extensions/n;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1468
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView2(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .prologue
    .line 1477
    if-nez p2, :cond_0

    .line 1478
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/aw;->d()Landroid/view/View;

    move-result-object p2

    .line 1480
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/extensions/aw;->a(ILandroid/view/View;Landroid/view/ViewParent;)V

    .line 1481
    return-object p2
.end method
