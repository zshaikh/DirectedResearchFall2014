.class Lcom/inmobi/androidsdk/IMAdView$3;
.super Ljava/lang/Object;
.source "IMAdView.java"

# interfaces
.implements Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;


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
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    .line 1289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyResult(ILjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1294
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>> Got HTTP REQUEST callback. Status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1295
    const-string v2, " ,data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1294
    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    if-nez p1, :cond_1

    .line 1298
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    check-cast p2, Lcom/inmobi/androidsdk/impl/IMAdUnit;

    invoke-static {v0, p2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;Lcom/inmobi/androidsdk/impl/IMAdUnit;)V

    .line 1299
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->j(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/IMAdView$a;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView$a;->sendEmptyMessage(I)Z

    .line 1305
    :cond_0
    :goto_0
    return-void

    .line 1300
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->j(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/IMAdView$a;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1302
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1303
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
