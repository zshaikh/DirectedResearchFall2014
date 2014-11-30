.class Lcom/redbox/android/activity/FindRedboxActivity$3$1;
.super Ljava/lang/Object;
.source "FindRedboxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/FindRedboxActivity$3;->locationUpdateTimeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/FindRedboxActivity$3;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/FindRedboxActivity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$3$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$3;

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$3$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$3;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$3;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$3;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$3;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->removeDialog(I)V

    .line 1010
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$3$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$3;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$3;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$3;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$3;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->showDialog(I)V

    .line 1011
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$3$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$3;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$3;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/FindRedboxActivity$3;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$3;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->mgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$3$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$3;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$3;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/FindRedboxActivity$3;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$3;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/redbox/android/activity/FindRedboxActivity;->locListener:Lcom/redbox/android/activity/FindRedboxActivity$RBLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1012
    return-void
.end method
