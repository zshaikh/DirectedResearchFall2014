.class Lcom/inmobi/activity/AdCreativeTesting$1;
.super Ljava/lang/Object;
.source "AdCreativeTesting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/activity/AdCreativeTesting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/activity/AdCreativeTesting;


# direct methods
.method constructor <init>(Lcom/inmobi/activity/AdCreativeTesting;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/activity/AdCreativeTesting$1;->a:Lcom/inmobi/activity/AdCreativeTesting;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting$1;->a:Lcom/inmobi/activity/AdCreativeTesting;

    invoke-static {v0}, Lcom/inmobi/activity/AdCreativeTesting;->b(Lcom/inmobi/activity/AdCreativeTesting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting$1;->a:Lcom/inmobi/activity/AdCreativeTesting;

    const-string v1, "Please enter a valid url"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/inmobi/activity/AdCreativeTesting$1;->a:Lcom/inmobi/activity/AdCreativeTesting;

    invoke-static {v1}, Lcom/inmobi/activity/AdCreativeTesting;->c(Lcom/inmobi/activity/AdCreativeTesting;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 81
    :try_start_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 82
    iget-object v2, p0, Lcom/inmobi/activity/AdCreativeTesting$1;->a:Lcom/inmobi/activity/AdCreativeTesting;

    invoke-static {v2}, Lcom/inmobi/activity/AdCreativeTesting;->d(Lcom/inmobi/activity/AdCreativeTesting;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/inmobi/activity/AdCreativeTesting$1;->a:Lcom/inmobi/activity/AdCreativeTesting;

    invoke-static {v3}, Lcom/inmobi/activity/AdCreativeTesting;->e(Lcom/inmobi/activity/AdCreativeTesting;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 83
    iget-object v3, p0, Lcom/inmobi/activity/AdCreativeTesting$1;->a:Lcom/inmobi/activity/AdCreativeTesting;

    invoke-static {v3}, Lcom/inmobi/activity/AdCreativeTesting;->f(Lcom/inmobi/activity/AdCreativeTesting;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/inmobi/activity/AdCreativeTesting$1;->a:Lcom/inmobi/activity/AdCreativeTesting;

    invoke-static {v4}, Lcom/inmobi/activity/AdCreativeTesting;->e(Lcom/inmobi/activity/AdCreativeTesting;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 81
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 84
    iget-object v2, p0, Lcom/inmobi/activity/AdCreativeTesting$1;->a:Lcom/inmobi/activity/AdCreativeTesting;

    invoke-static {v2}, Lcom/inmobi/activity/AdCreativeTesting;->g(Lcom/inmobi/activity/AdCreativeTesting;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->reinitializeExpandProperties()V

    .line 86
    iget-object v2, p0, Lcom/inmobi/activity/AdCreativeTesting$1;->a:Lcom/inmobi/activity/AdCreativeTesting;

    invoke-static {v2}, Lcom/inmobi/activity/AdCreativeTesting;->g(Lcom/inmobi/activity/AdCreativeTesting;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->loadUrl(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting$1;->a:Lcom/inmobi/activity/AdCreativeTesting;

    invoke-static {v0}, Lcom/inmobi/activity/AdCreativeTesting;->g(Lcom/inmobi/activity/AdCreativeTesting;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting$1;->a:Lcom/inmobi/activity/AdCreativeTesting;

    invoke-static {v0}, Lcom/inmobi/activity/AdCreativeTesting;->h(Lcom/inmobi/activity/AdCreativeTesting;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/inmobi/activity/AdCreativeTesting$1;->a:Lcom/inmobi/activity/AdCreativeTesting;

    invoke-static {v2}, Lcom/inmobi/activity/AdCreativeTesting;->g(Lcom/inmobi/activity/AdCreativeTesting;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting$1;->a:Lcom/inmobi/activity/AdCreativeTesting;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inmobi/activity/AdCreativeTesting;->a(Lcom/inmobi/activity/AdCreativeTesting;Z)V

    .line 91
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting$1;->a:Lcom/inmobi/activity/AdCreativeTesting;

    invoke-static {v0}, Lcom/inmobi/activity/AdCreativeTesting;->b(Lcom/inmobi/activity/AdCreativeTesting;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting$1;->a:Lcom/inmobi/activity/AdCreativeTesting;

    invoke-static {v0}, Lcom/inmobi/activity/AdCreativeTesting;->i(Lcom/inmobi/activity/AdCreativeTesting;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/inmobi/activity/AdCreativeTesting$1;->a:Lcom/inmobi/activity/AdCreativeTesting;

    invoke-static {v0}, Lcom/inmobi/activity/AdCreativeTesting;->j(Lcom/inmobi/activity/AdCreativeTesting;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method
