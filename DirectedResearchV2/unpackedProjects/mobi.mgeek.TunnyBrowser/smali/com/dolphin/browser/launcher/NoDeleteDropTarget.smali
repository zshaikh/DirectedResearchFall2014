.class public Lcom/dolphin/browser/launcher/NoDeleteDropTarget;
.super Lcom/dolphin/browser/launcher/ButtonDropTarget;
.source "NoDeleteDropTarget.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/launcher/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/launcher/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/aj;)Z
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/NoDeleteDropTarget;->g(Lcom/dolphin/browser/launcher/aj;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/dolphin/browser/launcher/aj;->j:Z

    .line 54
    const/4 v0, 0x0

    return v0
.end method
