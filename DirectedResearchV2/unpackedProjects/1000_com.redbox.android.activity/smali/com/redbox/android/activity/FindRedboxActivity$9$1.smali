.class Lcom/redbox/android/activity/FindRedboxActivity$9$1;
.super Ljava/lang/Object;
.source "FindRedboxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/FindRedboxActivity$9;->dataReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/FindRedboxActivity$9;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/FindRedboxActivity$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$9$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$9;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Num of Favs : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$9$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$9;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$9;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/FindRedboxActivity$9;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$9;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$9$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$9;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$9;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$9;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$9;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyListAdapter:Lcom/redbox/android/adapter/KioskListAdapter;

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$9$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$9;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$9;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/FindRedboxActivity$9;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$9;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    iget-object v2, p0, Lcom/redbox/android/activity/FindRedboxActivity$9$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$9;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$9;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v2}, Lcom/redbox/android/activity/FindRedboxActivity$9;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$9;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v2

    iget v2, v2, Lcom/redbox/android/activity/FindRedboxActivity;->noOfFavs:I

    const/4 v3, -0x1

    .line 441
    iget-object v4, p0, Lcom/redbox/android/activity/FindRedboxActivity$9$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$9;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$9;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v4}, Lcom/redbox/android/activity/FindRedboxActivity$9;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$9;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/redbox/android/activity/FindRedboxActivity;->inventory:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/redbox/android/activity/FindRedboxActivity$9$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$9;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$9;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v5}, Lcom/redbox/android/activity/FindRedboxActivity$9;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$9;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v5

    iget-boolean v5, v5, Lcom/redbox/android/activity/FindRedboxActivity;->movieMode:Z

    .line 440
    invoke-virtual/range {v0 .. v5}, Lcom/redbox/android/adapter/KioskListAdapter;->update(Ljava/util/List;IILjava/util/HashMap;Z)V

    .line 442
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$9$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$9;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$9;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$9;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$9;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyListAdapter:Lcom/redbox/android/adapter/KioskListAdapter;

    invoke-virtual {v0}, Lcom/redbox/android/adapter/KioskListAdapter;->notifyDataSetChanged()V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Num of Favs : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$9$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$9;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$9;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/FindRedboxActivity$9;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$9;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    return-void
.end method
