.class Lcom/dolphin/browser/androidwebkit/cm;
.super Ljava/lang/Object;
.source "MyWebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/cm;->a:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/cm;->a:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->resumeTimers()V

    .line 770
    return-void
.end method
