.class Lcom/dolphin/browser/tablist/cq;
.super Landroid/database/DataSetObserver;
.source "VerticalListView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/VerticalListView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/VerticalListView;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/dolphin/browser/tablist/cq;->a:Lcom/dolphin/browser/tablist/VerticalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cq;->a:Lcom/dolphin/browser/tablist/VerticalListView;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/VerticalListView;->d()V

    .line 155
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cq;->a:Lcom/dolphin/browser/tablist/VerticalListView;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/VerticalListView;->d()V

    .line 160
    return-void
.end method
