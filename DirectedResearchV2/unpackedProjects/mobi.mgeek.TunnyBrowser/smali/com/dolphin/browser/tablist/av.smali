.class Lcom/dolphin/browser/tablist/av;
.super Ljava/lang/Object;
.source "ListItemParent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/ListItemParent;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/ListItemParent;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/dolphin/browser/tablist/av;->a:Lcom/dolphin/browser/tablist/ListItemParent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lcom/dolphin/browser/tablist/av;->a:Lcom/dolphin/browser/tablist/ListItemParent;

    invoke-static {v0, v1}, Lcom/dolphin/browser/tablist/ListItemParent;->a(Lcom/dolphin/browser/tablist/ListItemParent;Landroid/view/View;)Landroid/view/View;

    .line 260
    iget-object v0, p0, Lcom/dolphin/browser/tablist/av;->a:Lcom/dolphin/browser/tablist/ListItemParent;

    invoke-static {v0, v1}, Lcom/dolphin/browser/tablist/ListItemParent;->a(Lcom/dolphin/browser/tablist/ListItemParent;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/tablist/av;->a:Lcom/dolphin/browser/tablist/ListItemParent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/tablist/ListItemParent;->a(Lcom/dolphin/browser/tablist/ListItemParent;F)F

    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/tablist/av;->a:Lcom/dolphin/browser/tablist/ListItemParent;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ListItemParent;->a(Lcom/dolphin/browser/tablist/ListItemParent;)V

    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/tablist/av;->a:Lcom/dolphin/browser/tablist/ListItemParent;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/ListItemParent;->invalidate()V

    .line 264
    return-void
.end method
