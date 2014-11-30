.class Lcom/pocketchange/android/app/HardwareAcceleratedActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->setHardwareAccelerationEnabled(ZLorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/pocketchange/android/app/HardwareAcceleratedActivity;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/app/HardwareAcceleratedActivity;Z)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/pocketchange/android/app/HardwareAcceleratedActivity$1;->b:Lcom/pocketchange/android/app/HardwareAcceleratedActivity;

    iput-boolean p2, p0, Lcom/pocketchange/android/app/HardwareAcceleratedActivity$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/pocketchange/android/app/HardwareAcceleratedActivity$1;->b:Lcom/pocketchange/android/app/HardwareAcceleratedActivity;

    invoke-virtual {v0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pocketchange/android/app/HardwareAcceleratedActivity$1;->b:Lcom/pocketchange/android/app/HardwareAcceleratedActivity;

    invoke-static {v0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->a(Lcom/pocketchange/android/app/HardwareAcceleratedActivity;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/pocketchange/android/app/HardwareAcceleratedActivity$1;->a:Z

    if-eq v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/pocketchange/android/app/HardwareAcceleratedActivity$1;->b:Lcom/pocketchange/android/app/HardwareAcceleratedActivity;

    iget-boolean v1, p0, Lcom/pocketchange/android/app/HardwareAcceleratedActivity$1;->a:Z

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->onHardwareAccelerationStateChangeRequested(Z)V

    .line 121
    :cond_0
    return-void
.end method
