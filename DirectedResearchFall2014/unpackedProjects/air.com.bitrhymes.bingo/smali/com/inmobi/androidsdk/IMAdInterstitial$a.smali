.class Lcom/inmobi/androidsdk/IMAdInterstitial$a;
.super Landroid/os/Handler;
.source "IMAdInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/IMAdInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/androidsdk/IMAdInterstitial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 1
    .parameter

    .prologue
    .line 568
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 569
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$a;->a:Ljava/lang/ref/WeakReference;

    .line 570
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/16 v5, 0x133

    const/16 v4, 0x132

    const/16 v3, 0x12f

    const/16 v6, 0x65

    const/4 v2, 0x0

    .line 575
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/IMAdInterstitial;

    .line 577
    if-eqz v0, :cond_0

    .line 578
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 580
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/inmobi/androidsdk/IMAdInterstitial$a;->removeMessages(I)V

    .line 582
    :try_start_0
    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->b(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 583
    new-instance v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->c(Lcom/inmobi/androidsdk/IMAdInterstitial;)Landroid/app/Activity;

    move-result-object v2

    .line 584
    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->d(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    .line 583
    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    .line 586
    :cond_1
    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->e(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/impl/IMAdUnit;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->b(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/impl/IMAdUnit;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 587
    :catch_0
    move-exception v1

    .line 589
    const-string v2, "InMobiAndroidSDK_3.6.2"

    const-string v3, "Error retrieving ad "

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 591
    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->INIT:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdInterstitial$State;)V

    .line 594
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 592
    invoke-static {v0, v6, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto :goto_0

    .line 598
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/inmobi/androidsdk/IMAdInterstitial$a;->removeMessages(I)V

    .line 599
    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->INIT:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdInterstitial$State;)V

    .line 600
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 601
    invoke-static {v0, v6, p0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto :goto_0

    .line 605
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/inmobi/androidsdk/IMAdInterstitial$a;->removeMessages(I)V

    .line 606
    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/IMAdInterstitial$a;->removeMessages(I)V

    .line 607
    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->INIT:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdInterstitial$State;)V

    .line 608
    invoke-static {v0, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    .line 610
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 609
    invoke-static {v0, v6, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto :goto_0

    .line 613
    :pswitch_3
    const/16 v1, 0x136

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial$a;->removeMessages(I)V

    .line 614
    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/IMAdInterstitial$a;->removeMessages(I)V

    .line 615
    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->INIT:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdInterstitial$State;)V

    .line 616
    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->b(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->cancelLoad()V

    .line 617
    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->b(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->stopLoading()V

    .line 618
    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->b(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->deinit()V

    .line 619
    invoke-static {v0, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    .line 621
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->AD_RENDERING_TIMEOUT:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 620
    invoke-static {v0, v6, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto/16 :goto_0

    .line 624
    :pswitch_4
    const/16 v1, 0x134

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial$a;->removeMessages(I)V

    .line 625
    const/16 v1, 0x135

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial$a;->removeMessages(I)V

    .line 626
    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->INIT:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdInterstitial$State;)V

    .line 627
    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->f(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->doCancel()V

    .line 629
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->AD_FETCH_TIMEOUT:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 628
    invoke-static {v0, v6, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto/16 :goto_0

    .line 633
    :pswitch_5
    invoke-virtual {p0, v5}, Lcom/inmobi/androidsdk/IMAdInterstitial$a;->removeMessages(I)V

    .line 634
    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->READY:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdInterstitial$State;)V

    .line 635
    const/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto/16 :goto_0

    .line 641
    :pswitch_6
    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->INIT:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdInterstitial$State;)V

    .line 642
    const/16 v1, 0x67

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 644
    invoke-static {v0, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    goto/16 :goto_0

    .line 649
    :pswitch_7
    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->ACTIVE:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdInterstitial$State;)V

    .line 650
    const/16 v1, 0x66

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto/16 :goto_0

    .line 578
    :pswitch_data_0
    .packed-switch 0x12f
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
