.class Lcom/dolphin/browser/tablist/d;
.super Ljava/lang/Object;
.source "AnimListItemParent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/c;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/dolphin/browser/tablist/d;->a:Lcom/dolphin/browser/tablist/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/tablist/d;->a:Lcom/dolphin/browser/tablist/c;

    iget-object v0, v0, Lcom/dolphin/browser/tablist/c;->a:Lcom/dolphin/browser/tablist/AnimListItemParent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a(Lcom/dolphin/browser/tablist/AnimListItemParent;Landroid/view/animation/AlphaAnimation;)Landroid/view/animation/AlphaAnimation;

    .line 161
    iget-object v0, p0, Lcom/dolphin/browser/tablist/d;->a:Lcom/dolphin/browser/tablist/c;

    iget-object v0, v0, Lcom/dolphin/browser/tablist/c;->a:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->b(Lcom/dolphin/browser/tablist/AnimListItemParent;)Lcom/dolphin/browser/tablist/cw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/dolphin/browser/tablist/d;->a:Lcom/dolphin/browser/tablist/c;

    iget-object v0, v0, Lcom/dolphin/browser/tablist/c;->a:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->b(Lcom/dolphin/browser/tablist/AnimListItemParent;)Lcom/dolphin/browser/tablist/cw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/tablist/cw;->a(Z)V

    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/tablist/d;->a:Lcom/dolphin/browser/tablist/c;

    iget-object v0, v0, Lcom/dolphin/browser/tablist/c;->a:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->b(Lcom/dolphin/browser/tablist/AnimListItemParent;)Lcom/dolphin/browser/tablist/cw;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/tablist/cw;->a()V

    .line 165
    :cond_0
    return-void
.end method
