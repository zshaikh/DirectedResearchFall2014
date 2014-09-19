.class Lcom/inmobi/androidsdk/ai/container/IMWebView$4;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Landroid/os/Bundle;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/ai/container/IMWebView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$4;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 3073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)V
    .locals 3
    .parameter

    .prologue
    .line 3086
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$4;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d(Lcom/inmobi/androidsdk/ai/container/IMWebView;Z)V

    .line 3090
    :try_start_0
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3089
    check-cast v0, Landroid/view/ViewGroup;

    .line 3091
    if-eqz v0, :cond_0

    .line 3092
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3094
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setBackGroundLayout(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3101
    :goto_0
    monitor-enter p0

    .line 3106
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$4;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3107
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v0

    .line 3108
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$4;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    .line 3107
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3109
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$4;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)V

    .line 3101
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3111
    return-void

    .line 3096
    :catch_0
    move-exception v0

    .line 3097
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Problem removing the video framelayout or relativelayout depending on video startstyle"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3101
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onError(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 3080
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$4;->onComplete(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)V

    .line 3081
    return-void
.end method

.method public onPrepared(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 3076
    return-void
.end method
