.class Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$2;
.super Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$OnLoadCompleteListener;
.source "BridgeMMMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->playSound(Ljava/io/File;)Lcom/fusepowered/m1/android/MMJSResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;Landroid/media/SoundPool;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 858
    iput-object p1, p0, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$2;->this$0:Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;

    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$OnLoadCompleteListener;-><init>(Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;Landroid/media/SoundPool;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 9
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    .line 862
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$2;->this$0:Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;

    #getter for: Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->contextRef:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->access$200(Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    .line 865
    .local v8, context:Landroid/content/Context;
    if-eqz v8, :cond_0

    .line 867
    const-string v0, "audio"

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    .line 868
    .local v7, audioManager:Landroid/media/AudioManager;
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    add-float/2addr v0, v1

    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 869
    .local v2, streamVolume:F
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move-object v0, p1

    move v1, p2

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    .end local v2           #streamVolume:F
    .end local v7           #audioManager:Landroid/media/AudioManager;
    .end local v8           #context:Landroid/content/Context;
    :cond_0
    monitor-exit p0

    return-void

    .line 862
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
