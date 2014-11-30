.class Lcom/dolphin/browser/tablist/ap;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/HorizontalListView;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ap;->a:Lcom/dolphin/browser/tablist/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ap;->a:Lcom/dolphin/browser/tablist/HorizontalListView;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/HorizontalListView;->c(Lcom/dolphin/browser/tablist/HorizontalListView;)V

    .line 146
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ap;->a:Lcom/dolphin/browser/tablist/HorizontalListView;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/HorizontalListView;->c(Lcom/dolphin/browser/tablist/HorizontalListView;)V

    .line 151
    return-void
.end method
