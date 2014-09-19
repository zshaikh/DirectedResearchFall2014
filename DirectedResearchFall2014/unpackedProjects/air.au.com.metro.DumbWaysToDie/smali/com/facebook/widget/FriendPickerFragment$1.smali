.class Lcom/facebook/widget/FriendPickerFragment$1;
.super Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/FriendPickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/FriendPickerFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/widget/FriendPickerFragment$1;->this$0:Lcom/facebook/widget/FriendPickerFragment;

    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;-><init>(Lcom/facebook/widget/PickerFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getDefaultPicture()I
    .locals 1

    const-string v0, "drawable.com_facebook_profile_default_icon"

    invoke-static {v0}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic getGraphObjectRowLayoutId(Lcom/facebook/model/GraphObject;)I
    .locals 1

    check-cast p1, Lcom/facebook/model/GraphUser;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/FriendPickerFragment$1;->getGraphObjectRowLayoutId(Lcom/facebook/model/GraphUser;)I

    move-result v0

    return v0
.end method

.method protected getGraphObjectRowLayoutId(Lcom/facebook/model/GraphUser;)I
    .locals 1

    const-string v0, "layout.com_facebook_picker_list_row"

    invoke-static {v0}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
