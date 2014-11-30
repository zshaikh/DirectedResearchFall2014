.class Lcom/redbox/android/utils/RedBoxOverlay$TimeOut;
.super Ljava/util/TimerTask;
.source "RedBoxOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/utils/RedBoxOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeOut"
.end annotation


# instance fields
.field private listener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

.field final synthetic this$0:Lcom/redbox/android/utils/RedBoxOverlay;


# direct methods
.method constructor <init>(Lcom/redbox/android/utils/RedBoxOverlay;)V
    .locals 1

    .prologue
    .line 294
    iput-object p1, p0, Lcom/redbox/android/utils/RedBoxOverlay$TimeOut;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    .line 292
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 293
    iget-object v0, p1, Lcom/redbox/android/utils/RedBoxOverlay;->locationDisableListener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    invoke-virtual {p0, v0}, Lcom/redbox/android/utils/RedBoxOverlay$TimeOut;->setDisbleLocationUpdateListener(Lcom/redbox/android/adapter/DisableLocationUpdateListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay$TimeOut;->listener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay$TimeOut;->listener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    invoke-interface {v0}, Lcom/redbox/android/adapter/DisableLocationUpdateListener;->locationUpdateTimeOut()V

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location Update Timedout : listener : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/redbox/android/utils/RedBoxOverlay$TimeOut;->listener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public setDisbleLocationUpdateListener(Lcom/redbox/android/adapter/DisableLocationUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/redbox/android/utils/RedBoxOverlay$TimeOut;->listener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    .line 307
    return-void
.end method
