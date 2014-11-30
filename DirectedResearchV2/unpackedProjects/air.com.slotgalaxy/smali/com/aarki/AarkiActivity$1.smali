.class final Lcom/aarki/AarkiActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aarki/AarkiActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/aarki/AarkiActivity;


# direct methods
.method constructor <init>(Lcom/aarki/AarkiActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/aarki/AarkiActivity$1;->a:Lcom/aarki/AarkiActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 110
    if-eqz p2, :cond_1

    const-string v0, "data:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 111
    :goto_0
    if-eqz v0, :cond_0

    .line 112
    const-string v1, "var hydraUrlParams = { platform: \'android\', version: \'%s\' };"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "2.8"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/aarki/AarkiActivity$1;->a:Lcom/aarki/AarkiActivity;

    invoke-static {v1, v4}, Lcom/aarki/AarkiActivity;->a(Lcom/aarki/AarkiActivity;Z)Z

    .line 116
    iget-object v1, p0, Lcom/aarki/AarkiActivity$1;->a:Lcom/aarki/AarkiActivity;

    invoke-virtual {v1}, Lcom/aarki/AarkiActivity;->a()V

    .line 120
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loaded page with URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string v0, "data"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    return-void

    :cond_1
    move v0, v4

    .line 110
    goto :goto_0

    :cond_2
    move-object v0, p2

    .line 120
    goto :goto_1
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error loading URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/aarki/AarkiActivity$1;->a:Lcom/aarki/AarkiActivity;

    invoke-virtual {v0, p2}, Lcom/aarki/AarkiActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
