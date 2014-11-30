.class Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;
.super Lcom/facebook/widget/PickerFragment$LoadingStrategy;


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/FriendPickerFragment;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/FriendPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;->this$0:Lcom/facebook/widget/FriendPickerFragment;

    invoke-direct {p0, p1}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;-><init>(Lcom/facebook/widget/PickerFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/FriendPickerFragment;Lcom/facebook/widget/FriendPickerFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;-><init>(Lcom/facebook/widget/FriendPickerFragment;)V

    return-void
.end method

.method private followNextLink()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;->this$0:Lcom/facebook/widget/FriendPickerFragment;

    invoke-virtual {v0}, Lcom/facebook/widget/FriendPickerFragment;->displayActivityCircle()V

    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectPagingLoader;->followNextLink()V

    return-void
.end method


# virtual methods
.method protected onLoadFinished(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/widget/SimpleGraphObjectCursor;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->onLoadFinished(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/widget/GraphObjectPagingLoader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/facebook/widget/SimpleGraphObjectCursor;->areMoreObjectsAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;->followNextLink()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;->this$0:Lcom/facebook/widget/FriendPickerFragment;

    invoke-virtual {v0}, Lcom/facebook/widget/FriendPickerFragment;->hideActivityCircle()V

    invoke-virtual {p2}, Lcom/facebook/widget/SimpleGraphObjectCursor;->isFromCache()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v0, 0x7d0

    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/facebook/widget/GraphObjectPagingLoader;->refreshOriginalRequest(J)V

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_1
.end method
