.class Lcom/dolphin/browser/theme/m;
.super Ljava/lang/Object;
.source "SimpleHorizontalListView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/SimpleHorizontalListView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/SimpleHorizontalListView;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/dolphin/browser/theme/m;->a:Lcom/dolphin/browser/theme/SimpleHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/dolphin/browser/theme/m;->a:Lcom/dolphin/browser/theme/SimpleHorizontalListView;

    invoke-static {v0}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->c(Lcom/dolphin/browser/theme/SimpleHorizontalListView;)Landroid/view/View$OnCreateContextMenuListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/m;->a:Lcom/dolphin/browser/theme/SimpleHorizontalListView;

    iget-object v1, p0, Lcom/dolphin/browser/theme/m;->a:Lcom/dolphin/browser/theme/SimpleHorizontalListView;

    invoke-static {v1, p1}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->a(Lcom/dolphin/browser/theme/SimpleHorizontalListView;Landroid/view/View;)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->a(Lcom/dolphin/browser/theme/SimpleHorizontalListView;Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/ContextMenu$ContextMenuInfo;

    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/theme/m;->a:Lcom/dolphin/browser/theme/SimpleHorizontalListView;

    iget-object v1, p0, Lcom/dolphin/browser/theme/m;->a:Lcom/dolphin/browser/theme/SimpleHorizontalListView;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->showContextMenuForChild(Landroid/view/View;)Z

    .line 247
    const/4 v0, 0x1

    goto :goto_0
.end method
