.class public Lcom/chartboost/sdk/impl/v$a;
.super Lcom/chartboost/sdk/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public c:Landroid/webkit/WebView;

.field final synthetic d:Lcom/chartboost/sdk/impl/v;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/v;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v$a;->d:Lcom/chartboost/sdk/impl/v;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/b$b;-><init>(Lcom/chartboost/sdk/b;Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/v$a;->setFocusable(Z)V

    .line 34
    new-instance v0, Lcom/chartboost/sdk/impl/v$b;

    invoke-direct {v0, p1, p2}, Lcom/chartboost/sdk/impl/v$b;-><init>(Lcom/chartboost/sdk/impl/v;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->c:Landroid/webkit/WebView;

    .line 35
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/chartboost/sdk/impl/v$c;

    invoke-direct {v1, p1, p1}, Lcom/chartboost/sdk/impl/v$c;-><init>(Lcom/chartboost/sdk/impl/v;Lcom/chartboost/sdk/impl/v;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->c:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/v$a;->addView(Landroid/view/View;)V

    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a;->c:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    return-void
.end method
