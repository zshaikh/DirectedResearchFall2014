.class Lcom/dolphin/browser/addons/bt;
.super Ljava/lang/Object;
.source "WebViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/dolphin/browser/addons/WebViewImpl;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/WebViewImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/dolphin/browser/addons/bt;->f:Lcom/dolphin/browser/addons/WebViewImpl;

    iput-object p2, p0, Lcom/dolphin/browser/addons/bt;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/addons/bt;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dolphin/browser/addons/bt;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/dolphin/browser/addons/bt;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/dolphin/browser/addons/bt;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 259
    iget-object v0, p0, Lcom/dolphin/browser/addons/bt;->f:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-static {v0}, Lcom/dolphin/browser/addons/WebViewImpl;->a(Lcom/dolphin/browser/addons/WebViewImpl;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/addons/bt;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/addons/bt;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/addons/bt;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/dolphin/browser/addons/bt;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/dolphin/browser/addons/bt;->e:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/dolphin/browser/core/IWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method
