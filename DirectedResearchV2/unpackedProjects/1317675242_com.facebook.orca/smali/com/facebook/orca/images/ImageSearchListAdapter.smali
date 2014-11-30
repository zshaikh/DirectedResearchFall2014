.class public Lcom/facebook/orca/images/ImageSearchListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageSearchListAdapter.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchListAdapter;->c:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/facebook/orca/images/ImageSearchListAdapter;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/facebook/orca/images/ImageSearchListAdapter;->b:Landroid/view/LayoutInflater;

    .line 32
    return-void
.end method


# virtual methods
.method public a(I)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchListAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/orca/images/ImageSearchListAdapter;->c:Ljava/util/List;

    .line 44
    invoke-virtual {p0}, Lcom/facebook/orca/images/ImageSearchListAdapter;->notifyDataSetInvalidated()V

    .line 45
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchListAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/facebook/orca/images/ImageSearchListAdapter;->a(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 57
    if-nez p2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchListAdapter;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchListAdapter;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 64
    const-string v1, "Thumbnail"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 65
    const-string v1, "Url"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    new-instance v2, Lcom/facebook/orca/images/FetchImageParams;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 67
    return-object v0

    .line 60
    :cond_0
    check-cast p2, Lcom/facebook/orca/images/UrlImage;

    move-object v0, p2

    goto :goto_0
.end method
