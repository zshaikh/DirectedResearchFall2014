.class Lcom/dolphin/browser/addons/ce;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dolphin/browser/addons/WebViewImpl;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/WebViewImpl;I)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/dolphin/browser/addons/ce;->b:Lcom/dolphin/browser/addons/WebViewImpl;

    iput p2, p0, Lcom/dolphin/browser/addons/ce;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/addons/ce;->b:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-static {v0}, Lcom/dolphin/browser/addons/WebViewImpl;->a(Lcom/dolphin/browser/addons/WebViewImpl;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/addons/ce;->a:I

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->canGoBackOrForward(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/ce;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
