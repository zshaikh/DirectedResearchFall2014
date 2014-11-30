.class Lcom/dolphin/browser/tablist/am;
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
    .line 89
    iput-object p1, p0, Lcom/dolphin/browser/tablist/am;->a:Lcom/dolphin/browser/tablist/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/tablist/am;->a:Lcom/dolphin/browser/tablist/HorizontalListView;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/HorizontalListView;->a(Lcom/dolphin/browser/tablist/HorizontalListView;)Lcom/dolphin/browser/tablist/cu;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/tablist/cu;->a()V

    .line 93
    return-void
.end method
