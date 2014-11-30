.class Lcom/redbox/android/activity/FindRedboxActivity$10$4;
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


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/FindRedboxActivity$10;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$4;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$4;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->removeDialog(I)V

    .line 691
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$4;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$4;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v1

    const v2, 0x7f050029

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/FindRedboxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/redbox/android/activity/FindRedboxActivity;->alertBoxMsg:Ljava/lang/String;

    .line 692
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10$4;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$10;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$10;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->showDialog(I)V

    .line 693
    return-void
.end method
