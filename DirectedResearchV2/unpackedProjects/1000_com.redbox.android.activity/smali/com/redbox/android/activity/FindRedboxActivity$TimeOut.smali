.class Lcom/redbox/android/activity/FindRedboxActivity$TimeOut;
.super Ljava/util/TimerTask;
.source "FindRedboxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/activity/FindRedboxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeOut"
.end annotation


# instance fields
.field private listener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

.field final synthetic this$0:Lcom/redbox/android/activity/FindRedboxActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/FindRedboxActivity;)V
    .locals 1

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$TimeOut;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    .line 1060
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1061
    iget-object v0, p1, Lcom/redbox/android/activity/FindRedboxActivity;->locationDisableListener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/FindRedboxActivity$TimeOut;->setDisbleLocationUpdateListener(Lcom/redbox/android/adapter/DisableLocationUpdateListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$TimeOut;->listener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$TimeOut;->listener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    invoke-interface {v0}, Lcom/redbox/android/adapter/DisableLocationUpdateListener;->locationUpdateTimeOut()V

    .line 1068
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location Update Timedout : listener : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1069
    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity$TimeOut;->listener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1068
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    return-void
.end method

.method public setDisbleLocationUpdateListener(Lcom/redbox/android/adapter/DisableLocationUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$TimeOut;->listener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    .line 1075
    return-void
.end method
