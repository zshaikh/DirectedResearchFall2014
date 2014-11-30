.class Lcom/redbox/android/activity/TermsActivity$TermsWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "TermsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/activity/TermsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TermsWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/TermsActivity;


# direct methods
.method private constructor <init>(Lcom/redbox/android/activity/TermsActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/redbox/android/activity/TermsActivity$TermsWebViewClient;->this$0:Lcom/redbox/android/activity/TermsActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/redbox/android/activity/TermsActivity;Lcom/redbox/android/activity/TermsActivity$TermsWebViewClient;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/redbox/android/activity/TermsActivity$TermsWebViewClient;-><init>(Lcom/redbox/android/activity/TermsActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x1

    return v0
.end method
