.class Lcom/redbox/android/activity/FindRedboxActivity$10$2;
.super Ljava/lang/Object;
.source "FindRedboxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/FindRedboxActivity$10;->dataReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

.field private final synthetic val$jsonKiosks:Lorg/json/JSONArray;

.field private final synthetic val$posTen:I


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/FindRedboxActivity$10;Lorg/json/JSONArray;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    iput-object p2, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->val$jsonKiosks:Lorg/json/JSONArray;

    iput p3, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->val$posTen:I

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 638
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->val$jsonKiosks:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyListAdapter:Lcom/redbox/android/adapter/KioskListAdapter;

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    iget-object v2, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v2}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v2

    iget v2, v2, Lcom/redbox/android/activity/FindRedboxActivity;->noOfFavs:I

    .line 641
    iget v3, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->val$posTen:I

    iget-object v4, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v4}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/redbox/android/activity/FindRedboxActivity;->inventory:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v5}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v5

    iget-boolean v5, v5, Lcom/redbox/android/activity/FindRedboxActivity;->movieMode:Z

    .line 640
    invoke-virtual/range {v0 .. v5}, Lcom/redbox/android/adapter/KioskListAdapter;->update(Ljava/util/List;IILjava/util/HashMap;Z)V

    .line 642
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyListAdapter:Lcom/redbox/android/adapter/KioskListAdapter;

    .line 643
    invoke-virtual {v0}, Lcom/redbox/android/adapter/KioskListAdapter;->notifyDataSetChanged()V

    .line 644
    const-string v0, "Updated NearByList"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/redbox/android/activity/FindRedboxActivity;->removeDialog(I)V

    .line 650
    const-string v0, "Done!!"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    :goto_0
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 665
    .local v6, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 666
    const/4 v1, 0x0

    .line 664
    invoke-virtual {v6, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 671
    return-void

    .line 654
    .end local v6    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/redbox/android/activity/FindRedboxActivity;->removeDialog(I)V

    .line 655
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyListAdapter:Lcom/redbox/android/adapter/KioskListAdapter;

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    iget-object v2, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v2}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v2

    iget v2, v2, Lcom/redbox/android/activity/FindRedboxActivity;->noOfFavs:I

    .line 656
    iget v3, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->val$posTen:I

    iget-object v4, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v4}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/redbox/android/activity/FindRedboxActivity;->inventory:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v5}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v5

    iget-boolean v5, v5, Lcom/redbox/android/activity/FindRedboxActivity;->movieMode:Z

    .line 655
    invoke-virtual/range {v0 .. v5}, Lcom/redbox/android/adapter/KioskListAdapter;->update(Ljava/util/List;IILjava/util/HashMap;Z)V

    .line 657
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyListAdapter:Lcom/redbox/android/adapter/KioskListAdapter;

    .line 658
    invoke-virtual {v0}, Lcom/redbox/android/adapter/KioskListAdapter;->notifyDataSetChanged()V

    .line 659
    const-string v0, "No Redboxes found!!"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v1

    const v2, 0x7f050032

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/FindRedboxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/redbox/android/activity/FindRedboxActivity;->alertBoxMsg:Ljava/lang/String;

    .line 661
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$2;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->showDialog(I)V

    goto/16 :goto_0
.end method
