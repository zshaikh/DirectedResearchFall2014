.class Lcom/facebook/widget/FriendPickerFragment$1;
.super Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;
.source "FriendPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/FriendPickerFragment;->createAdapter()Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/PickerFragment",
        "<",
        "Lcom/facebook/model/GraphUser;",
        ">.PickerFragmentAdapter<",
        "Lcom/facebook/model/GraphUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/FriendPickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/FriendPickerFragment;Lcom/facebook/widget/PickerFragment;Landroid/content/Context;)V
    .locals 0
    .param p3, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/widget/FriendPickerFragment$1;->this$0:Lcom/facebook/widget/FriendPickerFragment;

    .line 156
    invoke-direct {p0, p2, p3}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;-><init>(Lcom/facebook/widget/PickerFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getDefaultPicture()I
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/facebook/widget/FriendPickerFragment$1;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/widget/FriendPickerFragment$1;->asContext:Lcom/adobe/fre/FREContext;

    const-string v1, "drawable.com_facebook_profile_default_icon"

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02001a

    goto :goto_0
.end method

.method protected bridge synthetic getGraphObjectRowLayoutId(Lcom/facebook/model/GraphObject;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/model/GraphUser;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/FriendPickerFragment$1;->getGraphObjectRowLayoutId(Lcom/facebook/model/GraphUser;)I

    move-result v0

    return v0
.end method

.method protected getGraphObjectRowLayoutId(Lcom/facebook/model/GraphUser;)I
    .locals 2
    .param p1, "graphObject"    # Lcom/facebook/model/GraphUser;

    .prologue
    .line 160
    sget-object v0, Lcom/facebook/widget/FriendPickerFragment$1;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/widget/FriendPickerFragment$1;->asContext:Lcom/adobe/fre/FREContext;

    const-string v1, "layout.com_facebook_picker_list_row"

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030005

    goto :goto_0
.end method
