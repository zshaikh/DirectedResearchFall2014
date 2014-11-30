.class Lcom/dolphin/browser/androidwebkit/dm;
.super Ljava/lang/Object;
.source "MyWebViewWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/util/dh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/util/dh",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/MotionEvent;

.field final synthetic b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/dm;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    iput-object p2, p0, Lcom/dolphin/browser/androidwebkit/dm;->a:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/dm;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/dm;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1044
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/dm;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
