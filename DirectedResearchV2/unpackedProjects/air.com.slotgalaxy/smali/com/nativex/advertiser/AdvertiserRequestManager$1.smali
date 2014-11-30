.class final Lcom/nativex/advertiser/AdvertiserRequestManager$1;
.super Ljava/lang/Object;
.source "AdvertiserRequestManager.java"

# interfaces
.implements Lcom/nativex/common/OnRequestCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/advertiser/AdvertiserRequestManager;->actionTaken(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(ZLcom/nativex/common/Response;)V
    .locals 5
    .param p1, "succeded"    # Z
    .param p2, "response"    # Lcom/nativex/common/Response;

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getListener()Lcom/nativex/advertiser/AdvertiserListener;

    move-result-object v1

    .line 63
    .local v1, "listener":Lcom/nativex/advertiser/AdvertiserListener;
    if-eqz p1, :cond_1

    .line 64
    :try_start_0
    invoke-virtual {p2}, Lcom/nativex/common/Response;->getResponse()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/nativex/common/Response;->getResponse()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/nativex/common/SharedPreferenceManager;->storeFirstRun(Z)V

    .line 66
    if-eqz v1, :cond_0

    .line 67
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nativex/advertiser/AdvertiserListener;->onActionComplete(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AdvertiserRequestManager: Unexpected exception caught in actionTaken() requestCompleted"

    invoke-static {v2}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz v1, :cond_0

    .line 77
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nativex/advertiser/AdvertiserListener;->onActionComplete(Ljava/lang/Boolean;)V

    goto :goto_0
.end method
