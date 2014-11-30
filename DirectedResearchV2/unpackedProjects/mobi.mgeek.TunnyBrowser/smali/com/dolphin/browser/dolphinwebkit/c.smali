.class Lcom/dolphin/browser/dolphinwebkit/c;
.super Ljava/lang/Object;
.source "MyPictureListener.java"

# interfaces
.implements Ldolphin/webkit/WebView$PictureListener;


# instance fields
.field private final a:Lcom/dolphin/browser/core/IWebView$PictureListener;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/core/IWebView$PictureListener;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/c;->a:Lcom/dolphin/browser/core/IWebView$PictureListener;

    .line 27
    return-void
.end method


# virtual methods
.method public onNewPicture(Ldolphin/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/c;->a:Lcom/dolphin/browser/core/IWebView$PictureListener;

    check-cast p1, Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebView$PictureListener;->onNewPicture(Lcom/dolphin/browser/core/IWebView;Landroid/graphics/Picture;)V

    .line 33
    return-void
.end method
