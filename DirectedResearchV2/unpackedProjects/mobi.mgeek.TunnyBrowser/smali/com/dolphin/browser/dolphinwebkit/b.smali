.class Lcom/dolphin/browser/dolphinwebkit/b;
.super Ljava/lang/Object;
.source "MyDownloadListener.java"

# interfaces
.implements Ldolphin/webkit/DownloadListener;


# instance fields
.field private final a:Lcom/dolphin/browser/core/IWebViewCallback;

.field private final b:Lcom/dolphin/browser/core/IWebView;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IWebViewCallback;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/dolphin/browser/dolphinwebkit/b;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    .line 41
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/b;->b:Lcom/dolphin/browser/core/IWebView;

    .line 42
    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/b;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/b;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/b;->b:Lcom/dolphin/browser/core/IWebView;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/dolphin/browser/core/IWebViewCallback;->onDownloadStart(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 52
    :cond_0
    return-void
.end method
