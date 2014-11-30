.class Lcom/dolphin/browser/androidwebkit/di;
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
.field final synthetic a:I

.field final synthetic b:Landroid/view/KeyEvent;

.field final synthetic c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;ILandroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/di;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    iput p2, p0, Lcom/dolphin/browser/androidwebkit/di;->a:I

    iput-object p3, p0, Lcom/dolphin/browser/androidwebkit/di;->b:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/di;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/androidwebkit/di;->a:I

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/di;->b:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1001
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/di;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
