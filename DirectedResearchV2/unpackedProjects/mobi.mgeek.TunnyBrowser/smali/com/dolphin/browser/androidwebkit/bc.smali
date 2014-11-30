.class Lcom/dolphin/browser/androidwebkit/bc;
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/graphics/Rect;

.field final synthetic d:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;IILandroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 1794
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/bc;->d:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    iput p2, p0, Lcom/dolphin/browser/androidwebkit/bc;->a:I

    iput p3, p0, Lcom/dolphin/browser/androidwebkit/bc;->b:I

    iput-object p4, p0, Lcom/dolphin/browser/androidwebkit/bc;->c:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/bc;->d:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/androidwebkit/bc;->a:I

    iget v2, p0, Lcom/dolphin/browser/androidwebkit/bc;->b:I

    iget-object v3, p0, Lcom/dolphin/browser/androidwebkit/bc;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1794
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/bc;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
