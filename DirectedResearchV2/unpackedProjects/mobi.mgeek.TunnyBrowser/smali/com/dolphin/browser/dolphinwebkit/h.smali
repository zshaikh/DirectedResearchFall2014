.class Lcom/dolphin/browser/dolphinwebkit/h;
.super Lcom/dolphin/browser/dolphinwebkit/j;
.source "MyWebViewClient.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/h;->b:Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;

    iput-object p2, p0, Lcom/dolphin/browser/dolphinwebkit/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dolphin/browser/dolphinwebkit/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldolphin/webkit/WebView;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/h;->b:Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;

    # getter for: Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;
    invoke-static {v0}, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->access$000(Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;)Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/h;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onSaveUsernamePassword(Ljava/lang/String;[Ljava/lang/String;)V

    .line 168
    return-void
.end method
