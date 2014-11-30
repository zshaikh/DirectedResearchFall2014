.class public Lcom/bitrhymes/admobext/ShowInterstitialAd;
.super Ljava/lang/Object;
.source "ShowInterstitialAd.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field private interstitial:Lcom/google/ads/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const-string v7, "ERROR_EVENT"

    const-string v6, ","

    .line 20
    :try_start_0
    invoke-static {p1}, Lcom/bitrhymes/admobext/AdMobContext;->setFREContext(Lcom/adobe/fre/FREContext;)V

    .line 21
    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "admobId":Ljava/lang/String;
    new-instance v4, Lcom/google/ads/InterstitialAd;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/google/ads/InterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/bitrhymes/admobext/ShowInterstitialAd;->interstitial:Lcom/google/ads/InterstitialAd;

    .line 24
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 25
    .local v0, "adRequest":Lcom/google/ads/AdRequest;
    const-string v4, "6957C567D0FBC01297253A353BB5BD71"

    invoke-virtual {v0, v4}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 26
    const-string v4, "F96E255C0D171F0D5FCF0B49304EB66A"

    invoke-virtual {v0, v4}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 27
    new-instance v3, Lcom/bitrhymes/admobext/AdMobExtAdListener;

    iget-object v4, p0, Lcom/bitrhymes/admobext/ShowInterstitialAd;->interstitial:Lcom/google/ads/InterstitialAd;

    invoke-direct {v3, p1, v4}, Lcom/bitrhymes/admobext/AdMobExtAdListener;-><init>(Lcom/adobe/fre/FREContext;Lcom/google/ads/InterstitialAd;)V

    .line 28
    .local v3, "listObj":Lcom/bitrhymes/admobext/AdMobExtAdListener;
    iget-object v4, p0, Lcom/bitrhymes/admobext/ShowInterstitialAd;->interstitial:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v4, v3}, Lcom/google/ads/InterstitialAd;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 29
    iget-object v4, p0, Lcom/bitrhymes/admobext/ShowInterstitialAd;->interstitial:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v4, v0}, Lcom/google/ads/InterstitialAd;->loadAd(Lcom/google/ads/AdRequest;)V
    :try_end_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_2

    .line 38
    .end local v0    # "adRequest":Lcom/google/ads/AdRequest;
    .end local v1    # "admobId":Ljava/lang/String;
    .end local v3    # "listObj":Lcom/bitrhymes/admobext/AdMobExtAdListener;
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 31
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 32
    .local v2, "e":Lcom/adobe/fre/FRETypeMismatchException;
    const-string v4, "ERROR_EVENT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/adobe/fre/FRETypeMismatchException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/adobe/fre/FRETypeMismatchException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/adobe/fre/FRETypeMismatchException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/bitrhymes/admobext/AppConstants;->getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v7, v4}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    .end local v2    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 34
    .local v2, "e":Lcom/adobe/fre/FREInvalidObjectException;
    const-string v4, "ERROR_EVENT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/adobe/fre/FREInvalidObjectException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/adobe/fre/FREInvalidObjectException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/adobe/fre/FREInvalidObjectException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/bitrhymes/admobext/AppConstants;->getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v7, v4}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    .end local v2    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 36
    .local v2, "e":Lcom/adobe/fre/FREWrongThreadException;
    const-string v4, "ERROR_EVENT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/adobe/fre/FREWrongThreadException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/adobe/fre/FREWrongThreadException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/adobe/fre/FREWrongThreadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/bitrhymes/admobext/AppConstants;->getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v7, v4}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
