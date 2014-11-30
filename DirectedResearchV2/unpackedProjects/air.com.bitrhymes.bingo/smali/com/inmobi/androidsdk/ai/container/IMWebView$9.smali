.class Lcom/inmobi/androidsdk/ai/container/IMWebView$9;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/ai/container/IMWebView;
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

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$9;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 1637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 1642
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 1643
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$9;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->n(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1644
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$9;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->r(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    .line 1645
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$9;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->l(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$9;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1651
    :goto_0
    return-void

    .line 1647
    :catch_0
    move-exception v0

    .line 1649
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Media Player onCompletion"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
