.class Lcom/dolphin/browser/search/suggestions/r;
.super Ljava/lang/Object;
.source "SearchTabContainerBookmark.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[I

.field final synthetic b:I

.field final synthetic c:Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;[II)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/r;->c:Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;

    iput-object p2, p0, Lcom/dolphin/browser/search/suggestions/r;->a:[I

    iput p3, p0, Lcom/dolphin/browser/search/suggestions/r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/r;->c:Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;

    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/r;->a:[I

    invoke-static {v0, v1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;[I)[I

    .line 649
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/r;->c:Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;

    iget v1, p0, Lcom/dolphin/browser/search/suggestions/r;->b:I

    invoke-static {v0, v1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;I)I

    .line 650
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/r;->c:Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->l()V

    .line 651
    return-void
.end method
