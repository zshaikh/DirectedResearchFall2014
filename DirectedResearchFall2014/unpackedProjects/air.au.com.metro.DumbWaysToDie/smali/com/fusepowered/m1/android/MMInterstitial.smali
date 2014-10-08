.class public final Lcom/fusepowered/m1/android/MMInterstitial;
.super Ljava/lang/Object;
.source "MMInterstitial.java"

# interfaces
.implements Lcom/fusepowered/m1/android/MMAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/android/MMInterstitial$MMInterstitialAdImpl;
    }
.end annotation


# instance fields
.field adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

.field externalId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/fusepowered/m1/android/MMInterstitial$MMInterstitialAdImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/m1/android/MMInterstitial$MMInterstitialAdImpl;-><init>(Lcom/fusepowered/m1/android/MMInterstitial;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    .line 18
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    const-string v1, "i"

    iput-object v1, v0, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private fetchInternal()V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMInterstitial;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "Ad already fetched and ready for display..."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    new-instance v1, Lcom/fusepowered/m1/android/MMException;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/fusepowered/m1/android/MMException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/MMSDK$Event;->requestFailed(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/MMException;)V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v0, "Fetching new ad..."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->requestAd()V

    goto :goto_0
.end method


# virtual methods
.method public display()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/MMInterstitial;->display(Z)Z

    move-result v0

    return v0
.end method

.method public display(Z)Z
    .locals 4
    .param p1, "throwError"    # Z

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-static {}, Lcom/fusepowered/m1/android/MMSDK;->isUiThread()Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;)V

    move v2, v3

    .line 154
    :goto_0
    return v2

    .line 139
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMInterstitial;->displayInternal()I

    move-result v1

    .local v1, "error":I
    if-eqz v1, :cond_2

    .line 141
    if-eqz p1, :cond_2

    .line 143
    new-instance v2, Lcom/fusepowered/m1/android/MMException;

    invoke-direct {v2, v1}, Lcom/fusepowered/m1/android/MMException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1    # "error":I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_1

    .line 150
    new-instance v2, Lcom/fusepowered/m1/android/MMException;

    invoke-direct {v2, v0}, Lcom/fusepowered/m1/android/MMException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :cond_1
    move v2, v3

    .line 152
    goto :goto_0

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "error":I
    :cond_2
    if-nez v1, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method displayInternal()I
    .locals 5

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMAdImplController;->assignAdViewController(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 162
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v1, v2}, Lcom/fusepowered/m1/android/MMAdImplController;->display(Lcom/fusepowered/m1/android/MMAdImpl;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 171
    :goto_0
    return v1

    .line 166
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "There was an exception displaying a cached ad. %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v1, 0x64

    goto :goto_0
.end method

.method public fetch()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->requestListener:Lcom/fusepowered/m1/android/RequestListener;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImpl;->requestListener:Lcom/fusepowered/m1/android/RequestListener;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/m1/android/MMInterstitial;->fetch(Lcom/fusepowered/m1/android/MMRequest;Lcom/fusepowered/m1/android/RequestListener;)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMInterstitial;->fetchInternal()V

    goto :goto_0
.end method

.method public fetch(Lcom/fusepowered/m1/android/MMRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/fusepowered/m1/android/MMRequest;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->requestListener:Lcom/fusepowered/m1/android/RequestListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->requestListener:Lcom/fusepowered/m1/android/RequestListener;

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/m1/android/MMInterstitial;->fetch(Lcom/fusepowered/m1/android/MMRequest;Lcom/fusepowered/m1/android/RequestListener;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMInterstitial;->fetchInternal()V

    goto :goto_0
.end method

.method public fetch(Lcom/fusepowered/m1/android/MMRequest;Lcom/fusepowered/m1/android/RequestListener;)V
    .locals 1
    .param p1, "request"    # Lcom/fusepowered/m1/android/MMRequest;
    .param p2, "listener"    # Lcom/fusepowered/m1/android/RequestListener;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iput-object p1, v0, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    .line 65
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iput-object p2, v0, Lcom/fusepowered/m1/android/MMAdImpl;->requestListener:Lcom/fusepowered/m1/android/RequestListener;

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMInterstitial;->fetchInternal()V

    .line 68
    return-void
.end method

.method public getApid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getApid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoresDensityScaling()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getIgnoresDensityScaling()Z

    move-result v0

    return v0
.end method

.method public getListener()Lcom/fusepowered/m1/android/RequestListener;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getListener()Lcom/fusepowered/m1/android/RequestListener;

    move-result-object v0

    return-object v0
.end method

.method public getMMRequest()Lcom/fusepowered/m1/android/MMRequest;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getMMRequest()Lcom/fusepowered/m1/android/MMRequest;

    move-result-object v0

    return-object v0
.end method

.method public isAdAvailable()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 90
    invoke-static {}, Lcom/fusepowered/m1/android/MMSDK;->isUiThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;)V

    move v1, v4

    .line 108
    :goto_0
    return v1

    .line 98
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMAdImplController;->assignAdViewController(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 99
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v1, v2}, Lcom/fusepowered/m1/android/MMAdImplController;->isAdAvailable(Lcom/fusepowered/m1/android/MMAdImpl;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "There was an exception checking for a cached ad. %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v1, v4

    .line 108
    goto :goto_0
.end method

.method public setApid(Ljava/lang/String;)V
    .locals 1
    .param p1, "apid"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMAdImpl;->setApid(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public setIgnoresDensityScaling(Z)V
    .locals 1
    .param p1, "ignoresDensityScaling"    # Z

    .prologue
    .line 216
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMAdImpl;->setIgnoresDensityScaling(Z)V

    .line 217
    return-void
.end method

.method public setListener(Lcom/fusepowered/m1/android/RequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fusepowered/m1/android/RequestListener;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMAdImpl;->setListener(Lcom/fusepowered/m1/android/RequestListener;)V

    .line 205
    return-void
.end method

.method public setMMRequest(Lcom/fusepowered/m1/android/MMRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/fusepowered/m1/android/MMRequest;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMInterstitial;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMAdImpl;->setMMRequest(Lcom/fusepowered/m1/android/MMRequest;)V

    .line 229
    return-void
.end method
