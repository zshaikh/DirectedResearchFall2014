.class Lcom/inmobi/androidsdk/IMAdView$4;
.super Ljava/lang/Object;
.source "IMAdView.java"

# interfaces
.implements Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/IMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMAdView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView$4;->a:Lcom/inmobi/androidsdk/IMAdView;

    .line 1346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissAdScreen()V
    .locals 3

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$4;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 1377
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 1365
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "Error loading ad "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$4;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->j(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/IMAdView$a;

    move-result-object v0

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView$a;->sendEmptyMessage(I)Z

    .line 1367
    return-void
.end method

.method public onExpand()V
    .locals 3

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$4;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 1356
    return-void
.end method

.method public onExpandClose()V
    .locals 3

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$4;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 1351
    return-void
.end method

.method public onLeaveApplication()V
    .locals 3

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$4;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 1361
    return-void
.end method

.method public onShowAdScreen()V
    .locals 3

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$4;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 1372
    return-void
.end method
