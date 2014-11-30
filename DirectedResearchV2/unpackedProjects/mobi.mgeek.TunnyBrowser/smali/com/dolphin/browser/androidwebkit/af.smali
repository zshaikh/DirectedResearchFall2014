.class Lcom/dolphin/browser/androidwebkit/af;
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
        "Landroid/view/View;",
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
    .line 1460
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/af;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    iput-boolean p2, p0, Lcom/dolphin/browser/androidwebkit/af;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 2

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/af;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dolphin/browser/androidwebkit/af;->a:Z

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1460
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/af;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
