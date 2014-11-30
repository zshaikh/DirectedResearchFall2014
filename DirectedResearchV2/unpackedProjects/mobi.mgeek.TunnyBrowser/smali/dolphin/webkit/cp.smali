.class Ldolphin/webkit/cp;
.super Ljava/lang/Object;
.source "GLWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldolphin/webkit/GLWebView;


# direct methods
.method constructor <init>(Ldolphin/webkit/GLWebView;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Ldolphin/webkit/cp;->a:Ldolphin/webkit/GLWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Ldolphin/webkit/cp;->a:Ldolphin/webkit/GLWebView;

    # getter for: Ldolphin/webkit/GLWebView;->mProvider:Ldolphin/webkit/WebViewClassic;
    invoke-static {v0}, Ldolphin/webkit/GLWebView;->access$2200(Ldolphin/webkit/GLWebView;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/cp;->a:Ldolphin/webkit/GLWebView;

    # getter for: Ldolphin/webkit/GLWebView;->mPendingRect:Landroid/graphics/Rect;
    invoke-static {v1}, Ldolphin/webkit/GLWebView;->access$2400(Ldolphin/webkit/GLWebView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->d(Landroid/graphics/Rect;)V

    .line 729
    iget-object v0, p0, Ldolphin/webkit/cp;->a:Ldolphin/webkit/GLWebView;

    # getter for: Ldolphin/webkit/GLWebView;->mPendingRect:Landroid/graphics/Rect;
    invoke-static {v0}, Ldolphin/webkit/GLWebView;->access$2400(Ldolphin/webkit/GLWebView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 730
    iget-object v0, p0, Ldolphin/webkit/cp;->a:Ldolphin/webkit/GLWebView;

    const/4 v1, 0x0

    # setter for: Ldolphin/webkit/GLWebView;->mHasPendingRect:Z
    invoke-static {v0, v1}, Ldolphin/webkit/GLWebView;->access$2502(Ldolphin/webkit/GLWebView;Z)Z

    .line 731
    return-void
.end method
