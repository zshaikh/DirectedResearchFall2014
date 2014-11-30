.class Lcom/inmobi/androidsdk/ai/container/IMWebView$8;
.super Landroid/webkit/WebChromeClient;
.source "IMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/ai/container/IMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/ai/container/IMWebView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 1570
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView$8;)Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4

    .prologue
    const-string v3, "InMobiAndroidSDK_3.6.2"

    .line 1574
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IMWebView-> onJsAlert, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1579
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1580
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1581
    const v1, 0x104000a

    .line 1582
    new-instance v2, Lcom/inmobi/androidsdk/ai/container/IMWebView$8$1;

    invoke-direct {v2, p0, p4}, Lcom/inmobi/androidsdk/ai/container/IMWebView$8$1;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView$8;Landroid/webkit/JsResult;)V

    .line 1581
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1587
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1588
    :catch_0
    move-exception v0

    .line 1589
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v1, "webchrome client exception onJSAlert "

    invoke-static {v3, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .prologue
    .line 1595
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "onShowCustomView ******************************"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    :try_start_0
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1598
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/widget/FrameLayout;)V

    .line 1599
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0, p2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 1600
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->l(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1601
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/view/ViewGroup;)V

    .line 1602
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->n(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 1603
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->n(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    invoke-static {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/widget/VideoView;)V

    .line 1605
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1606
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->n(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1607
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->l(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->n(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 1608
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->q(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1610
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/widget/VideoView;

    move-result-object v0

    new-instance v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$8$2;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$8$2;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView$8;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1629
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1634
    :cond_0
    :goto_0
    return-void

    .line 1633
    :catch_0
    move-exception v0

    goto :goto_0
.end method
