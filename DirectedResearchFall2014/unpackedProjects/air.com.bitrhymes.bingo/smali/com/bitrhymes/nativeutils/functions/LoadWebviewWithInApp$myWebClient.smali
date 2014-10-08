.class public Lcom/bitrhymes/nativeutils/functions/LoadWebviewWithInApp$myWebClient;
.super Landroid/webkit/WebViewClient;
.source "LoadWebviewWithInApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bitrhymes/nativeutils/functions/LoadWebviewWithInApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "myWebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitrhymes/nativeutils/functions/LoadWebviewWithInApp;


# direct methods
.method public constructor <init>(Lcom/bitrhymes/nativeutils/functions/LoadWebviewWithInApp;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/bitrhymes/nativeutils/functions/LoadWebviewWithInApp$myWebClient;->this$0:Lcom/bitrhymes/nativeutils/functions/LoadWebviewWithInApp;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 49
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x1

    return v0
.end method
