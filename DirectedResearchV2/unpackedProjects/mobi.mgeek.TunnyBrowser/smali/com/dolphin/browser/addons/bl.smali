.class Lcom/dolphin/browser/addons/bl;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/addons/WebViewImpl;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/WebViewImpl;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/dolphin/browser/addons/bl;->a:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/addons/bl;->a:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-static {v0}, Lcom/dolphin/browser/addons/WebViewImpl;->a(Lcom/dolphin/browser/addons/WebViewImpl;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/bl;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
