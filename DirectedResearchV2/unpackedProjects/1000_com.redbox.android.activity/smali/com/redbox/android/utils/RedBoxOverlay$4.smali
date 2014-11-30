.class Lcom/redbox/android/utils/RedBoxOverlay$4;
.super Ljava/lang/Object;
.source "RedBoxOverlay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/utils/RedBoxOverlay;->getLocation(Landroid/location/LocationManager;Ljava/lang/String;Ljava/lang/String;I)V
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
    iput-object p1, p0, Lcom/redbox/android/utils/RedBoxOverlay$4;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 168
    .line 169
    const-string v0, "-----------------Aborted the progress-----------------"

    .line 168
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/redbox/android/http/ConnectionManager;->getInstance()Lcom/redbox/android/http/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/http/ConnectionManager;->shutDown()V

    .line 171
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay$4;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/redbox/android/utils/RedBoxOverlay;->locationUpdate:Z

    .line 172
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay$4;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->locTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 173
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay$4;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->mgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/redbox/android/utils/RedBoxOverlay$4;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v1, v1, Lcom/redbox/android/utils/RedBoxOverlay;->locListener:Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 174
    return-void
.end method
