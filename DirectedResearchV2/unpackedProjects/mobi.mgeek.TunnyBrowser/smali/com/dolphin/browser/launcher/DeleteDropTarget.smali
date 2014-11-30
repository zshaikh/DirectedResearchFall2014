.class public Lcom/dolphin/browser/launcher/DeleteDropTarget;
.super Lcom/dolphin/browser/launcher/ButtonDropTarget;
.source "DeleteDropTarget.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/launcher/DeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/launcher/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 35
    instance-of v0, p1, Lcom/dolphin/browser/launcher/cl;

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected h(Lcom/dolphin/browser/launcher/aj;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->h(Lcom/dolphin/browser/launcher/aj;)V

    .line 46
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v1

    iget-object v0, p1, Lcom/dolphin/browser/launcher/aj;->g:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/bi;)V

    .line 47
    return-void
.end method
