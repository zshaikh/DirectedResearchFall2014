.class Lcom/dolphin/browser/androidwebkit/b;
.super Ljava/lang/Object;
.source "MyPictureListener.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# instance fields
.field private final a:Lcom/dolphin/browser/core/IWebView$PictureListener;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/core/IWebView$PictureListener;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/b;->a:Lcom/dolphin/browser/core/IWebView$PictureListener;

    .line 28
    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/b;->a:Lcom/dolphin/browser/core/IWebView$PictureListener;

    invoke-static {p1}, Lcom/dolphin/browser/core/WebViewFactory;->getIWebViewFromView(Landroid/view/View;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebView$PictureListener;->onNewPicture(Lcom/dolphin/browser/core/IWebView;Landroid/graphics/Picture;)V

    .line 33
    return-void
.end method
