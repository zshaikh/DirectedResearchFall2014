.class Lcom/dolphin/browser/androidwebkit/bu;
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
.field final synthetic a:Z

.field final synthetic b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Z)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/bu;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    iput-boolean p2, p0, Lcom/dolphin/browser/androidwebkit/bu;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/bu;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dolphin/browser/androidwebkit/bu;->a:Z

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->pageDown(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/bu;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
