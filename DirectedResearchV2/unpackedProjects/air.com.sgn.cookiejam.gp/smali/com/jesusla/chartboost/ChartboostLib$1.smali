.class Lcom/jesusla/chartboost/ChartboostLib$1;
.super Lcom/chartboost/sdk/ChartBoostDelegate;
.source "ChartboostLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jesusla/chartboost/ChartboostLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jesusla/chartboost/ChartboostLib;


# direct methods
.method constructor <init>(Lcom/jesusla/chartboost/ChartboostLib;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/jesusla/chartboost/ChartboostLib$1;->this$0:Lcom/jesusla/chartboost/ChartboostLib;

    invoke-direct {p0}, Lcom/chartboost/sdk/ChartBoostDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public didClickInterstitial(Landroid/view/View;)V
    .locals 6
    .param p1, "interstitialView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 161
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib$1;->this$0:Lcom/jesusla/chartboost/ChartboostLib;

    const-string v1, "interstitialEvent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "INTERSTITIAL_CLICKED"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "unknown"

    aput-object v4, v2, v3

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/jesusla/chartboost/ChartboostLib;->asyncFlashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public didClickMoreApps(Landroid/view/View;)V
    .locals 3
    .param p1, "moreAppsView"    # Landroid/view/View;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib$1;->this$0:Lcom/jesusla/chartboost/ChartboostLib;

    const-string v1, "MORE_APPS_CLICKED"

    const-string v2, "MORE_APPS"

    invoke-virtual {v0, v1, v2}, Lcom/jesusla/chartboost/ChartboostLib;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public didCloseInterstitial(Landroid/view/View;)V
    .locals 6
    .param p1, "interstitialView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 171
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib$1;->this$0:Lcom/jesusla/chartboost/ChartboostLib;

    const-string v1, "interstitialEvent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "INTERSTITIAL_CLOSED"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "unknown"

    aput-object v4, v2, v3

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/jesusla/chartboost/ChartboostLib;->asyncFlashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public didCloseMoreApps(Landroid/view/View;)V
    .locals 3
    .param p1, "moreAppsView"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib$1;->this$0:Lcom/jesusla/chartboost/ChartboostLib;

    const-string v1, "MORE_APPS_CLOSED"

    const-string v2, "MORE_APPS"

    invoke-virtual {v0, v1, v2}, Lcom/jesusla/chartboost/ChartboostLib;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public didDismissInterstitial(Landroid/view/View;)V
    .locals 6
    .param p1, "interstitialView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 181
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib$1;->this$0:Lcom/jesusla/chartboost/ChartboostLib;

    const-string v1, "interstitialEvent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "INTERSTITIAL_DISMISSED"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "unknown"

    aput-object v4, v2, v3

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/jesusla/chartboost/ChartboostLib;->asyncFlashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public didDismissMoreApps(Landroid/view/View;)V
    .locals 3
    .param p1, "moreAppsView"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib$1;->this$0:Lcom/jesusla/chartboost/ChartboostLib;

    const-string v1, "MORE_APPS_DISMISSED"

    const-string v2, "MORE_APPS"

    invoke-virtual {v0, v1, v2}, Lcom/jesusla/chartboost/ChartboostLib;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public didFailToLoadInterstitial()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 191
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib$1;->this$0:Lcom/jesusla/chartboost/ChartboostLib;

    const-string v1, "interstitialEvent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "INTERSTITIAL_FAILED"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "unknown"

    aput-object v4, v2, v3

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/jesusla/chartboost/ChartboostLib;->asyncFlashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method public didFailToLoadMoreApps()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib$1;->this$0:Lcom/jesusla/chartboost/ChartboostLib;

    const-string v1, "MORE_APPS_FAILED"

    const-string v2, "MORE_APPS"

    invoke-virtual {v0, v1, v2}, Lcom/jesusla/chartboost/ChartboostLib;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public shouldDisplayInterstitial(Landroid/view/View;)Z
    .locals 1
    .param p1, "interstitialView"    # Landroid/view/View;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib$1;->this$0:Lcom/jesusla/chartboost/ChartboostLib;

    # getter for: Lcom/jesusla/chartboost/ChartboostLib;->mayDisplayInterstitial:Z
    invoke-static {v0}, Lcom/jesusla/chartboost/ChartboostLib;->access$000(Lcom/jesusla/chartboost/ChartboostLib;)Z

    move-result v0

    return v0
.end method

.method public shouldDisplayLoadingViewForMoreApps()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib$1;->this$0:Lcom/jesusla/chartboost/ChartboostLib;

    # getter for: Lcom/jesusla/chartboost/ChartboostLib;->mayDisplayLoadingViewForMoreApps:Z
    invoke-static {v0}, Lcom/jesusla/chartboost/ChartboostLib;->access$100(Lcom/jesusla/chartboost/ChartboostLib;)Z

    move-result v0

    return v0
.end method

.method public shouldDisplayMoreApps(Landroid/view/View;)Z
    .locals 1
    .param p1, "moreAppsView"    # Landroid/view/View;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib$1;->this$0:Lcom/jesusla/chartboost/ChartboostLib;

    # getter for: Lcom/jesusla/chartboost/ChartboostLib;->mayDisplayMoreApps:Z
    invoke-static {v0}, Lcom/jesusla/chartboost/ChartboostLib;->access$200(Lcom/jesusla/chartboost/ChartboostLib;)Z

    move-result v0

    return v0
.end method

.method public shouldRequestInterstitial()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib$1;->this$0:Lcom/jesusla/chartboost/ChartboostLib;

    # getter for: Lcom/jesusla/chartboost/ChartboostLib;->mayRequestInterstitial:Z
    invoke-static {v0}, Lcom/jesusla/chartboost/ChartboostLib;->access$300(Lcom/jesusla/chartboost/ChartboostLib;)Z

    move-result v0

    return v0
.end method

.method public shouldRequestMoreApps()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib$1;->this$0:Lcom/jesusla/chartboost/ChartboostLib;

    # getter for: Lcom/jesusla/chartboost/ChartboostLib;->mayRequestMoreApps:Z
    invoke-static {v0}, Lcom/jesusla/chartboost/ChartboostLib;->access$400(Lcom/jesusla/chartboost/ChartboostLib;)Z

    move-result v0

    return v0
.end method
