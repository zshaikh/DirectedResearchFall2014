.class Lcom/dolphin/browser/tablist/au;
.super Ljava/lang/Object;
.source "ListItemParent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/dolphin/browser/tablist/ListItemParent;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/ListItemParent;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/dolphin/browser/tablist/au;->b:Lcom/dolphin/browser/tablist/ListItemParent;

    iput-object p2, p0, Lcom/dolphin/browser/tablist/au;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/tablist/au;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/tablist/au;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/tablist/au;->b:Lcom/dolphin/browser/tablist/ListItemParent;

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/tablist/au;->b:Lcom/dolphin/browser/tablist/ListItemParent;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/au;->a:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/tablist/ListItemParent;->b(Landroid/view/View;Z)V

    .line 174
    :cond_0
    return-void
.end method
