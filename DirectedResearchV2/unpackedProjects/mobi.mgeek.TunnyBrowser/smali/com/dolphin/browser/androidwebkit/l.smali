.class Lcom/dolphin/browser/androidwebkit/l;
.super Ljava/lang/Object;
.source "MyWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dolphin/browser/androidwebkit/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/k;I)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/l;->b:Lcom/dolphin/browser/androidwebkit/k;

    iput p2, p0, Lcom/dolphin/browser/androidwebkit/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/l;->b:Lcom/dolphin/browser/androidwebkit/k;

    iget-object v0, v0, Lcom/dolphin/browser/androidwebkit/k;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->b(Lcom/dolphin/browser/androidwebkit/MyWebView;)Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/l;->b:Lcom/dolphin/browser/androidwebkit/k;

    iget-object v1, v1, Lcom/dolphin/browser/androidwebkit/k;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    iget-object v1, v1, Lcom/dolphin/browser/androidwebkit/MyWebView;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    iget v2, p0, Lcom/dolphin/browser/androidwebkit/l;->a:I

    iget-object v3, p0, Lcom/dolphin/browser/androidwebkit/l;->b:Lcom/dolphin/browser/androidwebkit/k;

    iget-object v3, v3, Lcom/dolphin/browser/androidwebkit/k;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->c(Lcom/dolphin/browser/androidwebkit/MyWebView;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/dolphin/browser/core/IWebView$SelectTextListener;->onSelectTextButtonClicked(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;)V

    .line 194
    return-void
.end method
