.class Lcom/stuv/ane/trialpay/TrialPayActivity$1;
.super Landroid/webkit/WebViewClient;
.source "TrialPayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/trialpay/TrialPayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stuv/ane/trialpay/TrialPayActivity;


# direct methods
.method constructor <init>(Lcom/stuv/ane/trialpay/TrialPayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stuv/ane/trialpay/TrialPayActivity$1;->this$0:Lcom/stuv/ane/trialpay/TrialPayActivity;

    .line 87
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v1, "http:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 99
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 93
    :cond_1
    const-string v1, "tpbow"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 96
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/stuv/ane/trialpay/TrialPayActivity$1;->this$0:Lcom/stuv/ane/trialpay/TrialPayActivity;

    invoke-virtual {v1, v0}, Lcom/stuv/ane/trialpay/TrialPayActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
