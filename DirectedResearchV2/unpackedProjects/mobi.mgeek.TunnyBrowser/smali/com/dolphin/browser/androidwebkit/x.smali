.class Lcom/dolphin/browser/androidwebkit/x;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;I)V
    .locals 0

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/x;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    iput p2, p0, Lcom/dolphin/browser/androidwebkit/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/x;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/androidwebkit/x;->a:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->c(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1377
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/x;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
