.class public Lcom/bitrhymes/chartboost/ChartboostListener;
.super Ljava/lang/Object;
.source "ChartboostListener.java"

# interfaces
.implements Lcom/chartboost/sdk/ChartboostDelegate;


# static fields
.field private static final TAG:Ljava/lang/String;

.field static context:Lcom/adobe/fre/FREContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/chartboost/sdk/ChartboostDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/adobe/fre/FREContext;)V
    .locals 0
    .parameter "contextObj"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sput-object p1, Lcom/bitrhymes/chartboost/ChartboostListener;->context:Lcom/adobe/fre/FREContext;

    .line 16
    return-void
.end method


# virtual methods
.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 20
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    const-string v1, "didCacheInterstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "CB_CACHE_INTERSTITIAL_EVENT"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    return-void
.end method

.method public didCacheMoreApps()V
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    const-string v1, "didCacheMoreApps"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "CB_CACHEMORE_INTERSTITIAL_EVENT"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 38
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    const-string v1, "didClickInterstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public didClickMoreApps()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    const-string v1, "didClickMoreApps"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 56
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    const-string v1, "didCloseInterstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public didCloseMoreApps()V
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    const-string v1, "didCloseMoreApps"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 74
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    const-string v1, "didDismissInterstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public didDismissMoreApps()V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    const-string v1, "didDismissMoreApps "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 92
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    const-string v1, " didFailToLoadInterstitial "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "CB_SHOW_INTERSTITIAL_EVENT"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public didFailToLoadMoreApps()V
    .locals 3

    .prologue
    .line 101
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    const-string v1, "didFailToLoadMoreApps "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "CB_SHOWMORE_INTERSTITIAL_EVENT"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public didFailToLoadUrl(Ljava/lang/String;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 110
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    const-string v1, "didFailToLoadUrl "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "ERROR_EVENT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public didShowInterstitial(Ljava/lang/String;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 119
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    const-string v1, " didShowInterstitial "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "CB_SHOW_INTERSTITIAL_EVENT"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method

.method public didShowMoreApps()V
    .locals 3

    .prologue
    .line 128
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    const-string v1, " didShowMoreApps "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "CB_SHOWMORE_INTERSTITIAL_EVENT"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method

.method public shouldDisplayInterstitial(Ljava/lang/String;)Z
    .locals 3
    .parameter "arg0"

    .prologue
    .line 137
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " shouldDisplayInterstitial "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayLoadingViewForMoreApps()Z
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    const-string v1, " shouldDisplayLoadingViewForMoreApps "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayMoreApps()Z
    .locals 2

    .prologue
    .line 149
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    const-string v1, " shouldDisplayMoreApps "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitial(Ljava/lang/String;)Z
    .locals 3
    .parameter "arg0"

    .prologue
    .line 155
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " shouldRequestInterstitial "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitialsInFirstSession()Z
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    const-string v1, " shouldRequestInterstitialsInFirstSession "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestMoreApps()Z
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/bitrhymes/chartboost/ChartboostListener;->TAG:Ljava/lang/String;

    const-string v1, " shouldRequestMoreApps "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x1

    return v0
.end method
