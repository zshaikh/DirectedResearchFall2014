.class Lcom/dolphin/browser/androidwebkit/s;
.super Lcom/dolphin/browser/androidwebkit/u;
.source "MyWebViewClient.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/androidwebkit/r;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/r;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/s;->b:Lcom/dolphin/browser/androidwebkit/r;

    iput-object p2, p0, Lcom/dolphin/browser/androidwebkit/s;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/s;->b:Lcom/dolphin/browser/androidwebkit/r;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/r;->a(Lcom/dolphin/browser/androidwebkit/r;)Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/s;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onSaveUsernamePassword(Ljava/lang/String;[Ljava/lang/String;)V

    .line 115
    return-void
.end method
