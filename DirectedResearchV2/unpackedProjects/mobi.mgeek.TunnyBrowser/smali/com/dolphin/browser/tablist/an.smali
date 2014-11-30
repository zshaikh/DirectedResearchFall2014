.class Lcom/dolphin/browser/tablist/an;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/HorizontalListView;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/dolphin/browser/tablist/an;->a:Lcom/dolphin/browser/tablist/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/tablist/an;->a:Lcom/dolphin/browser/tablist/HorizontalListView;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/HorizontalListView;->a(Lcom/dolphin/browser/tablist/HorizontalListView;)Lcom/dolphin/browser/tablist/cu;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/tablist/cu;->a(Landroid/view/View;)V

    .line 103
    return-void
.end method
