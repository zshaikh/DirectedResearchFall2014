.class Lcom/fusepowered/m1/android/VideoPlayerActivity$VideoRedirectionListener;
.super Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoRedirectionListener"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/VideoPlayerActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/android/VideoPlayerActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/fusepowered/m1/android/VideoPlayerActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;-><init>()V

    .line 110
    if-eqz p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/VideoPlayerActivity$VideoRedirectionListener;->activityRef:Ljava/lang/ref/WeakReference;

    .line 113
    iget-object v0, p1, Lcom/fusepowered/m1/android/VideoPlayerActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p1, Lcom/fusepowered/m1/android/VideoPlayerActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    iget-wide v0, v0, Lcom/fusepowered/m1/android/MMActivity;->creatorAdImplInternalId:J

    iput-wide v0, p0, Lcom/fusepowered/m1/android/VideoPlayerActivity$VideoRedirectionListener;->creatorAdImplInternalId:J

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdProperties()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Lcom/fusepowered/m1/android/VideoPlayerActivity$VideoRedirectionListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/VideoPlayerActivity;

    .line 158
    .local v0, "activity":Lcom/fusepowered/m1/android/VideoPlayerActivity;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/fusepowered/m1/android/VideoPlayerActivity;->adProperties:Lcom/fusepowered/m1/android/AdProperties;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, v0, Lcom/fusepowered/m1/android/VideoPlayerActivity;->adProperties:Lcom/fusepowered/m1/android/AdProperties;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/AdProperties;->getAdProperties()Lorg/json/JSONObject;

    move-result-object v1

    .line 160
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOverlaySettings()Lcom/fusepowered/m1/android/OverlaySettings;
    .locals 3

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, "settings":Lcom/fusepowered/m1/android/OverlaySettings;
    iget-object v2, p0, Lcom/fusepowered/m1/android/VideoPlayerActivity$VideoRedirectionListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/VideoPlayerActivity;

    .line 146
    .local v0, "activity":Lcom/fusepowered/m1/android/VideoPlayerActivity;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/fusepowered/m1/android/VideoPlayerActivity;->lastOverlayOrientation:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 148
    new-instance v1, Lcom/fusepowered/m1/android/OverlaySettings;

    .end local v1    # "settings":Lcom/fusepowered/m1/android/OverlaySettings;
    invoke-direct {v1}, Lcom/fusepowered/m1/android/OverlaySettings;-><init>()V

    .line 149
    .restart local v1    # "settings":Lcom/fusepowered/m1/android/OverlaySettings;
    iget-object v2, v0, Lcom/fusepowered/m1/android/VideoPlayerActivity;->lastOverlayOrientation:Ljava/lang/String;

    iput-object v2, v1, Lcom/fusepowered/m1/android/OverlaySettings;->orientation:Ljava/lang/String;

    .line 151
    :cond_0
    return-object v1
.end method

.method public isHandlingMMVideo(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/fusepowered/m1/android/VideoPlayerActivity$VideoRedirectionListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/VideoPlayerActivity;

    .line 122
    .local v0, "activity":Lcom/fusepowered/m1/android/VideoPlayerActivity;
    if-eqz v0, :cond_0

    .line 124
    new-instance v1, Lcom/fusepowered/m1/android/VideoPlayerActivity$VideoRedirectionListener$1;

    invoke-direct {v1, p0, v0}, Lcom/fusepowered/m1/android/VideoPlayerActivity$VideoRedirectionListener$1;-><init>(Lcom/fusepowered/m1/android/VideoPlayerActivity$VideoRedirectionListener;Lcom/fusepowered/m1/android/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    if-eqz p1, :cond_0

    # invokes: Lcom/fusepowered/m1/android/VideoPlayerActivity;->isActionable(Landroid/net/Uri;)Z
    invoke-static {v0, p1}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->access$000(Lcom/fusepowered/m1/android/VideoPlayerActivity;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->processVideoPlayerUri(Ljava/lang/String;)V

    .line 135
    const/4 v1, 0x1

    .line 138
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
