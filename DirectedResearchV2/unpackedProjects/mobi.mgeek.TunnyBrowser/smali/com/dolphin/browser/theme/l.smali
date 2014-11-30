.class Lcom/dolphin/browser/theme/l;
.super Ljava/lang/Object;
.source "SimpleHorizontalListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/SimpleHorizontalListView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/SimpleHorizontalListView;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/dolphin/browser/theme/l;->a:Lcom/dolphin/browser/theme/SimpleHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dolphin/browser/theme/l;->a:Lcom/dolphin/browser/theme/SimpleHorizontalListView;

    invoke-static {v0}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->a(Lcom/dolphin/browser/theme/SimpleHorizontalListView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/dolphin/browser/theme/l;->a:Lcom/dolphin/browser/theme/SimpleHorizontalListView;

    invoke-static {v1}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->b(Lcom/dolphin/browser/theme/SimpleHorizontalListView;)Lcom/dolphin/browser/theme/o;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/dolphin/browser/theme/l;->a:Lcom/dolphin/browser/theme/SimpleHorizontalListView;

    invoke-static {v1}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->b(Lcom/dolphin/browser/theme/SimpleHorizontalListView;)Lcom/dolphin/browser/theme/o;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/theme/l;->a:Lcom/dolphin/browser/theme/SimpleHorizontalListView;

    invoke-interface {v1, v2, p1, v0}, Lcom/dolphin/browser/theme/o;->a(Lcom/dolphin/browser/theme/SimpleHorizontalListView;Landroid/view/View;I)V

    .line 235
    :cond_0
    return-void
.end method
