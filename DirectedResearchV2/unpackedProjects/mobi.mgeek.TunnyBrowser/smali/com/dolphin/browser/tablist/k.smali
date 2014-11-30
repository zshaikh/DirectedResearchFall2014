.class Lcom/dolphin/browser/tablist/k;
.super Ljava/lang/Object;
.source "CloudTabListView.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/j;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/j;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/dolphin/browser/tablist/k;->a:Lcom/dolphin/browser/tablist/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 142
    if-nez p3, :cond_0

    .line 144
    iget-object v2, p0, Lcom/dolphin/browser/tablist/k;->a:Lcom/dolphin/browser/tablist/j;

    iget-object v0, p0, Lcom/dolphin/browser/tablist/k;->a:Lcom/dolphin/browser/tablist/j;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/j;->a(Lcom/dolphin/browser/tablist/j;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/dolphin/browser/tablist/j;->a(Lcom/dolphin/browser/tablist/j;Z)Z

    .line 146
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 144
    goto :goto_0
.end method
