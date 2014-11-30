.class Lcom/redbox/android/activity/FindRedboxActivity$3;
.super Ljava/lang/Object;
.source "FindRedboxActivity.java"

# interfaces
.implements Lcom/redbox/android/adapter/DisableLocationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/activity/FindRedboxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/FindRedboxActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/FindRedboxActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$3;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/FindRedboxActivity$3;)Lcom/redbox/android/activity/FindRedboxActivity;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$3;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    return-object v0
.end method


# virtual methods
.method public locationUpdateTimeOut()V
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$3;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/redbox/android/activity/FindRedboxActivity;->locationUpdate:Z

    .line 1005
    const-string v0, "-------Location Updates Timedout-------"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$3;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/redbox/android/activity/FindRedboxActivity$3$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/FindRedboxActivity$3$1;-><init>(Lcom/redbox/android/activity/FindRedboxActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1014
    return-void
.end method

.method public locationUpdatesDisable()V
    .locals 2

    .prologue
    .line 997
    const-string v0, "-------Location Updates Disabled-------"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$3;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->mgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$3;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/FindRedboxActivity;->locListener:Lcom/redbox/android/activity/FindRedboxActivity$RBLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 999
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$3;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->locTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1000
    return-void
.end method
