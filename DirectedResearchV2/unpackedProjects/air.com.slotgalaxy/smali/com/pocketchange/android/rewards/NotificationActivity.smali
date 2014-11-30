.class public Lcom/pocketchange/android/rewards/NotificationActivity;
.super Lcom/pocketchange/android/rewards/RewardsActivity;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x0

    const-wide/32 v1, 0xdbba0

    invoke-direct {p0, v0, v1, v2}, Lcom/pocketchange/android/rewards/RewardsActivity;-><init>(ZJ)V

    .line 13
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->finish()V

    .line 33
    iget-object v0, p0, Lcom/pocketchange/android/rewards/NotificationActivity;->mSingleton:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton;->onNotificationClosed()V

    .line 34
    return-void
.end method

.method protected onLoadingCancelled()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->onLoadingCancelled()V

    .line 27
    iget-object v0, p0, Lcom/pocketchange/android/rewards/NotificationActivity;->mSingleton:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton;->onNotificationCancelled()V

    .line 28
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->onStart()V

    .line 18
    iget-boolean v0, p0, Lcom/pocketchange/android/rewards/NotificationActivity;->a:Z

    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pocketchange/android/rewards/NotificationActivity;->a:Z

    .line 20
    iget-object v0, p0, Lcom/pocketchange/android/rewards/NotificationActivity;->mSingleton:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/NotificationActivity;->getInitialUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/PCSingleton;->onNotificationDisplayed(Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method
