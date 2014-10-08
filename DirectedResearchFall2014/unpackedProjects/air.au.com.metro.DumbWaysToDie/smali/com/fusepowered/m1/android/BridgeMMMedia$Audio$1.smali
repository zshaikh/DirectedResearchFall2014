.class Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$1;
.super Ljava/lang/Object;
.source "BridgeMMMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$1;->this$0:Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 830
    iget-object v3, p0, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$1;->this$0:Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;

    # getter for: Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->access$100(Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 832
    iget-object v3, p0, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$1;->this$0:Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;

    # getter for: Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->access$100(Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 834
    iget-object v3, p0, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$1;->this$0:Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;

    # getter for: Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->access$100(Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 835
    .local v0, "currentPositionMillis":I
    iget-object v3, p0, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$1;->this$0:Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;

    iget-object v3, v3, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->periodicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_0

    .line 837
    iget-object v3, p0, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$1;->this$0:Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;

    iget-object v3, v3, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->periodicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$PeriodicListener;

    .line 839
    .local v2, "listener":Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$PeriodicListener;
    invoke-interface {v2, v0}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$PeriodicListener;->onUpdate(I)V

    goto :goto_0

    .line 843
    .end local v0    # "currentPositionMillis":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$PeriodicListener;
    :cond_0
    const-wide/16 v3, 0x1f4

    invoke-static {p0, v3, v4}, Lcom/fusepowered/m1/android/MMSDK;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 845
    :cond_1
    return-void
.end method
