.class Lcom/dolphin/browser/search/suggestions/n;
.super Ljava/lang/Object;
.source "SearchTabContainerBookmark.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/n;->a:Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/n;->a:Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;

    invoke-static {v0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;)Lcom/dolphin/browser/bookmark/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bl;->a()V

    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/n;->a:Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;

    invoke-static {v0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;)Lcom/dolphin/browser/bookmark/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bl;->b()Lcom/dolphin/browser/bookmark/cb;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/cb;->a()J

    move-result-wide v0

    .line 114
    iget-object v2, p0, Lcom/dolphin/browser/search/suggestions/n;->a:Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;JZ)V

    .line 116
    :cond_0
    return-void
.end method
