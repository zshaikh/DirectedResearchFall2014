.class public abstract Lcom/fusepowered/util/FuseAdCallback;
.super Lcom/fusepowered/util/FuseCallback;
.source "FuseAdCallback.java"

# interfaces
.implements Lcom/fusepowered/a1/IApplifierImpactListener;
.implements Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;
.implements Lcom/vungle/sdk/VunglePub$EventListener;


# instance fields
.field public ErrorCode:Lcom/fusepowered/util/FuseLoginError;

.field private adFetched:Z

.field private fuseApiAdBrowser:Lcom/fusepowered/activities/FuseApiBrowser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/fusepowered/util/FuseCallback;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/fusepowered/util/FuseAdCallback;->adFetched:Z

    .line 27
    iput-boolean v0, p0, Lcom/fusepowered/util/FuseAdCallback;->isClientRequestAd:Z

    .line 28
    return-void
.end method


# virtual methods
.method public accountLoginComplete(ILjava/lang/String;)V
    .locals 0
    .param p1, "accountType"    # I
    .param p2, "accountId"    # Ljava/lang/String;

    .prologue
    .line 127
    return-void
.end method

.method public adAvailabilityResponse(II)V
    .locals 0
    .param p1, "available"    # I
    .param p2, "error"    # I

    .prologue
    .line 151
    return-void
.end method

.method public abstract adClicked()V
.end method

.method public abstract adDisplayed()V
.end method

.method public abstract adWillClose()V
.end method

.method public callback()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public chatListError(Lcom/fusepowered/util/FuseChatError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseChatError;

    .prologue
    .line 102
    return-void
.end method

.method public chatListReceived(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p2, "fuse_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/ChatMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "chatMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/ChatMessage;>;"
    return-void
.end method

.method public displayAd()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/util/FuseAdCallback;->adFetched:Z

    .line 38
    return-void
.end method

.method public friendAccepted(Ljava/lang/String;Lcom/fusepowered/util/FuseAcceptFriendError;)V
    .locals 0
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/util/FuseAcceptFriendError;

    .prologue
    .line 77
    return-void
.end method

.method public friendAdded(Ljava/lang/String;Lcom/fusepowered/util/FuseAddFriendError;)V
    .locals 0
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/util/FuseAddFriendError;

    .prologue
    .line 69
    return-void
.end method

.method public friendRejected(Ljava/lang/String;Lcom/fusepowered/util/FuseRejectFriendError;)V
    .locals 0
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/util/FuseRejectFriendError;

    .prologue
    .line 81
    return-void
.end method

.method public friendRemoved(Ljava/lang/String;Lcom/fusepowered/util/FuseRemoveFriendError;)V
    .locals 0
    .param p1, "fuse_id"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/fusepowered/util/FuseRemoveFriendError;

    .prologue
    .line 73
    return-void
.end method

.method public friendsListError(Lcom/fusepowered/util/FuseFriendsListError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseFriendsListError;

    .prologue
    .line 94
    return-void
.end method

.method public friendsListUpdated(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "friendsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    return-void
.end method

.method public friendsMigrated(Ljava/lang/String;Lcom/fusepowered/util/FuseMigrateFriendsError;)V
    .locals 0
    .param p1, "fuseId"    # Ljava/lang/String;
    .param p2, "migrateFriendsError"    # Lcom/fusepowered/util/FuseMigrateFriendsError;

    .prologue
    .line 86
    return-void
.end method

.method public gameConfigurationReceived()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public incentiveActionCompletedStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 106
    return-void
.end method

.method public isAdFetched()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/fusepowered/util/FuseAdCallback;->adFetched:Z

    return v0
.end method

.method public mailAcknowledged(ILjava/lang/String;I)V
    .locals 0
    .param p1, "messageId"    # I
    .param p2, "fuse_id"    # Ljava/lang/String;
    .param p3, "requestID"    # I

    .prologue
    .line 143
    return-void
.end method

.method public mailError(Lcom/fusepowered/util/FuseMailError;I)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseMailError;
    .param p2, "requestID"    # I

    .prologue
    .line 147
    return-void
.end method

.method public mailListError(Lcom/fusepowered/util/FuseMailError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseMailError;

    .prologue
    .line 139
    return-void
.end method

.method public mailListReceived(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p2, "fuse_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Mail;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "mailMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Mail;>;"
    return-void
.end method

.method public notificationAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 114
    return-void
.end method

.method public onCampaignsAvailable()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public onCampaignsFetchFailed()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public onImpactClose()V
    .locals 1

    .prologue
    .line 196
    sget-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->showingApplifier:Z

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->showingApplifier:Z

    .line 199
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->adDismiss()V

    .line 200
    invoke-virtual {p0}, Lcom/fusepowered/util/FuseAdCallback;->adWillClose()V

    .line 203
    :cond_0
    return-void
.end method

.method public onImpactOpen()V
    .locals 0

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/fusepowered/util/FuseAdCallback;->adDisplayed()V

    .line 206
    return-void
.end method

.method public onInterstitialClicked(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V
    .locals 2
    .param p1, "arg0"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .prologue
    .line 156
    const-string v0, "MOPUB_AKIL"

    const-string v1, "Ad Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/fusepowered/util/FuseAdCallback;->adClicked()V

    .line 159
    return-void
.end method

.method public onInterstitialDismissed(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V
    .locals 2
    .param p1, "arg0"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .prologue
    .line 164
    const-string v0, "MOPUB_AKIL"

    const-string v1, "Ad Dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->adDismiss()V

    .line 166
    invoke-virtual {p0}, Lcom/fusepowered/util/FuseAdCallback;->adWillClose()V

    .line 167
    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->load()V

    .line 168
    return-void
.end method

.method public onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubInterstitial;Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
    .locals 2
    .param p1, "arg0"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial;
    .param p2, "arg1"    # Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .prologue
    .line 173
    const-string v0, "MOPUB_AKIL"

    const-string v1, "Ad Load failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public onInterstitialLoaded(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V
    .locals 2
    .param p1, "arg0"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .prologue
    .line 179
    const-string v0, "MOPUB_AKIL"

    const-string v1, "Ad Loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method public onInterstitialShown(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V
    .locals 2
    .param p1, "arg0"    # Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .prologue
    .line 186
    const-string v0, "MOPUB_AKIL"

    const-string v1, "Ad Shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/fusepowered/util/FuseAdCallback;->adDisplayed()V

    .line 189
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "rewardItemKey"    # Ljava/lang/String;
    .param p2, "skipped"    # Z

    .prologue
    .line 214
    return-void
.end method

.method public onVideoStarted()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onVungleAdEnd()V
    .locals 0

    .prologue
    .line 228
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->adDismiss()V

    .line 229
    invoke-virtual {p0}, Lcom/fusepowered/util/FuseAdCallback;->adWillClose()V

    .line 230
    return-void
.end method

.method public onVungleAdStart()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public onVungleView(DD)V
    .locals 0
    .param p1, "watchedSeconds"    # D
    .param p3, "totalAdSeconds"    # D

    .prologue
    .line 238
    return-void
.end method

.method public rewardRedeemed(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "incentiveId"    # I
    .param p2, "amount"    # I
    .param p3, "rewardItemId"    # Ljava/lang/String;
    .param p4, "rewardItemName"    # Ljava/lang/String;

    .prologue
    .line 131
    return-void
.end method

.method public sessionLoginError(Lcom/fusepowered/util/FuseLoginError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/util/FuseLoginError;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/fusepowered/util/FuseAdCallback;->ErrorCode:Lcom/fusepowered/util/FuseLoginError;

    .line 119
    return-void
.end method

.method public sessionStartReceived()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public setAdFetched(Z)V
    .locals 0
    .param p1, "adFetched"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/fusepowered/util/FuseAdCallback;->adFetched:Z

    .line 48
    return-void
.end method

.method public setFuseApiAdBrowser(Lcom/fusepowered/activities/FuseApiBrowser;)V
    .locals 0
    .param p1, "fuseApiAdBrowser"    # Lcom/fusepowered/activities/FuseApiBrowser;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fusepowered/util/FuseAdCallback;->fuseApiAdBrowser:Lcom/fusepowered/activities/FuseApiBrowser;

    .line 44
    return-void
.end method

.method public timeUpdated(I)V
    .locals 0
    .param p1, "timestamp"    # I

    .prologue
    .line 123
    return-void
.end method
