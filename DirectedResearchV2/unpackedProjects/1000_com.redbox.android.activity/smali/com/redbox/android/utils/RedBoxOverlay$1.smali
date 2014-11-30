.class Lcom/redbox/android/utils/RedBoxOverlay$1;
.super Ljava/lang/Object;
.source "RedBoxOverlay.java"

# interfaces
.implements Lcom/redbox/android/adapter/DisableLocationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/utils/RedBoxOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/utils/RedBoxOverlay;


# direct methods
.method constructor <init>(Lcom/redbox/android/utils/RedBoxOverlay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/utils/RedBoxOverlay$1;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public locationUpdateTimeOut()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay$1;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/redbox/android/utils/RedBoxOverlay;->locationUpdate:Z

    .line 230
    const-string v0, "-------Location Updates Timedout-------"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay$1;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->mgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/redbox/android/utils/RedBoxOverlay$1;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v1, v1, Lcom/redbox/android/utils/RedBoxOverlay;->locListener:Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 235
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay$1;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 236
    sget-object v0, Lcom/redbox/android/utils/RedBoxOverlay;->uiListener:Lcom/redbox/android/utils/RBOverlayUiListener;

    invoke-interface {v0}, Lcom/redbox/android/utils/RBOverlayUiListener;->locationTimeout()V

    .line 240
    return-void
.end method

.method public locationUpdatesDisable()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "-------Location Updates Disabled-------"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay$1;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->mgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/redbox/android/utils/RedBoxOverlay$1;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v1, v1, Lcom/redbox/android/utils/RedBoxOverlay;->locListener:Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 224
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay$1;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->locTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 225
    return-void
.end method
