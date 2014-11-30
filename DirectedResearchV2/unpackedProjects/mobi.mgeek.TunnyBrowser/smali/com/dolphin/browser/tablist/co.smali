.class Lcom/dolphin/browser/tablist/co;
.super Ljava/lang/Object;
.source "VerticalListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/VerticalListView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/VerticalListView;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/dolphin/browser/tablist/co;->a:Lcom/dolphin/browser/tablist/VerticalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/tablist/co;->a:Lcom/dolphin/browser/tablist/VerticalListView;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/VerticalListView;->a(Lcom/dolphin/browser/tablist/VerticalListView;)Lcom/dolphin/browser/tablist/cu;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/tablist/cu;->a(Landroid/view/View;)V

    .line 112
    return-void
.end method
