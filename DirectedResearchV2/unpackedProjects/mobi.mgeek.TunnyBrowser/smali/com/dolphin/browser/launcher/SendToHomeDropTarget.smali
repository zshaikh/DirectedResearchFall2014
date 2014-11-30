.class public Lcom/dolphin/browser/launcher/SendToHomeDropTarget;
.super Lcom/dolphin/browser/launcher/NoDeleteDropTarget;
.source "SendToHomeDropTarget.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/launcher/NoDeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/launcher/NoDeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 50
    instance-of v0, p1, Lcom/dolphin/browser/launcher/cl;

    return v0
.end method

.method protected h(Lcom/dolphin/browser/launcher/aj;)V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/dolphin/browser/launcher/NoDeleteDropTarget;->h(Lcom/dolphin/browser/launcher/aj;)V

    .line 56
    iget-object v0, p1, Lcom/dolphin/browser/launcher/aj;->g:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 57
    iget-object v1, p0, Lcom/dolphin/browser/launcher/SendToHomeDropTarget;->a:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/bk;->c(Lcom/dolphin/browser/launcher/cl;)V

    .line 58
    return-void
.end method
