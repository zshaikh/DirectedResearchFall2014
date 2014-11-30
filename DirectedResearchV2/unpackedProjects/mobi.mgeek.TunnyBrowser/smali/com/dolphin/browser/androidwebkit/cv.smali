.class Lcom/dolphin/browser/androidwebkit/cv;
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
        "Lcom/dolphin/browser/core/IWebBackForwardList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V
    .locals 0

    .prologue
    .line 862
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/cv;->a:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/cv;->a:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->c()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 862
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/cv;->a()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    return-object v0
.end method
