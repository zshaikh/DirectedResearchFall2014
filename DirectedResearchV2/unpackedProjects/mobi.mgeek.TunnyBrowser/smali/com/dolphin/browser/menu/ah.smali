.class final Lcom/dolphin/browser/menu/ah;
.super Lcom/dolphin/browser/c/a;
.source "PanelMenuTabBar.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/menu/PanelMenuTabBar;

.field private b:I


# direct methods
.method constructor <init>(Lcom/dolphin/browser/menu/PanelMenuTabBar;I)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/dolphin/browser/menu/ah;->a:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-direct {p0}, Lcom/dolphin/browser/c/a;-><init>()V

    .line 33
    iput p2, p0, Lcom/dolphin/browser/menu/ah;->b:I

    .line 34
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/menu/ah;->a:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-static {v0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a(Lcom/dolphin/browser/menu/PanelMenuTabBar;)Lcom/dolphin/browser/menu/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/menu/ah;->a:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-static {v0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a(Lcom/dolphin/browser/menu/PanelMenuTabBar;)Lcom/dolphin/browser/menu/ag;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/menu/ah;->b:I

    invoke-interface {v0, v1, v2}, Lcom/dolphin/browser/menu/ag;->a(IZ)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/ah;->a:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->invalidate()V

    .line 42
    return v2
.end method
