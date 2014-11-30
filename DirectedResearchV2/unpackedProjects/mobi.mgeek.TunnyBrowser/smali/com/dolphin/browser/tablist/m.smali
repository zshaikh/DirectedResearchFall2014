.class Lcom/dolphin/browser/tablist/m;
.super Ljava/lang/Object;
.source "CloudTabListView.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/j;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/j;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/dolphin/browser/tablist/m;->a:Lcom/dolphin/browser/tablist/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/tablist/m;->a:Lcom/dolphin/browser/tablist/j;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/j;->b(Lcom/dolphin/browser/tablist/j;)Lcom/dolphin/browser/tablist/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/tablist/m;->a:Lcom/dolphin/browser/tablist/j;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/j;->b(Lcom/dolphin/browser/tablist/j;)Lcom/dolphin/browser/tablist/i;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/dolphin/browser/tablist/i;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/h;

    .line 158
    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    .line 161
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/h;->b()Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v2, p0, Lcom/dolphin/browser/tablist/m;->a:Lcom/dolphin/browser/tablist/j;

    invoke-static {v2, v0, v1}, Lcom/dolphin/browser/tablist/j;->a(Lcom/dolphin/browser/tablist/j;Ljava/lang/String;Z)V

    .line 163
    new-instance v0, Lcom/dolphin/browser/c/aa;

    invoke-direct {v0}, Lcom/dolphin/browser/c/aa;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/aa;->a()Z

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/m;->a:Lcom/dolphin/browser/tablist/j;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/j;->b(Lcom/dolphin/browser/tablist/j;)Lcom/dolphin/browser/tablist/i;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/dolphin/browser/tablist/i;->a(II)V

    move v0, v1

    .line 166
    goto :goto_0
.end method
