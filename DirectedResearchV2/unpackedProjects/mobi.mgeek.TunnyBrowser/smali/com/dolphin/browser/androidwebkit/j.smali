.class Lcom/dolphin/browser/androidwebkit/j;
.super Ljava/lang/Object;
.source "MyWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/androidwebkit/u;

.field final synthetic b:Lcom/dolphin/browser/androidwebkit/MyWebView;

.field final synthetic c:Lcom/dolphin/browser/androidwebkit/MyWebView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebView;Lcom/dolphin/browser/androidwebkit/u;Lcom/dolphin/browser/androidwebkit/MyWebView;)V
    .locals 0

    .prologue
    .line 1917
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/j;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    iput-object p2, p0, Lcom/dolphin/browser/androidwebkit/j;->a:Lcom/dolphin/browser/androidwebkit/u;

    iput-object p3, p0, Lcom/dolphin/browser/androidwebkit/j;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/j;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->o(Lcom/dolphin/browser/androidwebkit/MyWebView;)[Ljava/lang/String;

    move-result-object v0

    .line 1922
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/j;->c:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->p(Lcom/dolphin/browser/androidwebkit/MyWebView;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1923
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/j;->a:Lcom/dolphin/browser/androidwebkit/u;

    if-eqz v2, :cond_0

    .line 1924
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/j;->a:Lcom/dolphin/browser/androidwebkit/u;

    iget-object v3, p0, Lcom/dolphin/browser/androidwebkit/j;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v2, v3, v1}, Lcom/dolphin/browser/androidwebkit/u;->a(Landroid/webkit/WebView;Z)V

    .line 1925
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/j;->a:Lcom/dolphin/browser/androidwebkit/u;

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/j;->b:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/androidwebkit/u;->a(Landroid/webkit/WebView;[Ljava/lang/String;)V

    .line 1927
    :cond_0
    return-void
.end method
