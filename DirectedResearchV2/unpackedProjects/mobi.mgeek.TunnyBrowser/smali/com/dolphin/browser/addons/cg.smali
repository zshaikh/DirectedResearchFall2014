.class Lcom/dolphin/browser/addons/cg;
.super Ljava/lang/Object;
.source "WebViewImpl.java"

# interfaces
.implements Lcom/dolphin/browser/util/dh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/util/dh",
        "<",
        "Lcom/dolphin/browser/addons/am;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/addons/WebViewImpl;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/WebViewImpl;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/dolphin/browser/addons/cg;->a:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/addons/am;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/dolphin/browser/addons/bi;

    iget-object v1, p0, Lcom/dolphin/browser/addons/cg;->a:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-static {v1}, Lcom/dolphin/browser/addons/WebViewImpl;->a(Lcom/dolphin/browser/addons/WebViewImpl;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v1

    invoke-interface {v1}, Lcom/dolphin/browser/core/IWebView;->copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/addons/bi;-><init>(Lcom/dolphin/browser/core/IWebBackForwardList;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/cg;->a()Lcom/dolphin/browser/addons/am;

    move-result-object v0

    return-object v0
.end method
