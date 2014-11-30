.class public Ldolphin/webkit/WebView$WebViewTransport;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# instance fields
.field private mWebview:Ldolphin/webkit/WebView;

.field final synthetic this$0:Ldolphin/webkit/WebView;


# direct methods
.method public constructor <init>(Ldolphin/webkit/WebView;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Ldolphin/webkit/WebView$WebViewTransport;->this$0:Ldolphin/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getWebView()Ldolphin/webkit/WebView;
    .locals 1

    .prologue
    .line 442
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebView$WebViewTransport;->mWebview:Ldolphin/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWebView(Ldolphin/webkit/WebView;)V
    .locals 1

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ldolphin/webkit/WebView$WebViewTransport;->mWebview:Ldolphin/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
