.class Lcom/inmobi/activity/InMobiAdActivity$2;
.super Ljava/lang/Object;
.source "InMobiAdActivity.java"

# interfaces
.implements Lcom/inmobi/androidsdk/IMAdInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/activity/InMobiAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/activity/InMobiAdActivity;


# direct methods
.method constructor <init>(Lcom/inmobi/activity/InMobiAdActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/activity/InMobiAdActivity$2;->a:Lcom/inmobi/activity/InMobiAdActivity;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdRequestFailed(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 3

    .prologue
    .line 180
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiAdActivity-> onAdRequestFailed, adInterstitial: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity$2;->a:Lcom/inmobi/activity/InMobiAdActivity;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interstitial Ad failed to load. Errorcode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    const/4 v2, 0x0

    .line 183
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    return-void
.end method

.method public onAdRequestLoaded(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 3

    .prologue
    .line 190
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiAdActivity-> onAdRequestLoaded, adInterstitial: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity$2;->a:Lcom/inmobi/activity/InMobiAdActivity;

    const-string v1, "onAdRequestLoaded"

    .line 194
    const/4 v2, 0x0

    .line 193
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 195
    return-void
.end method

.method public onDismissAdScreen(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 3

    .prologue
    .line 169
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiAdActivity-> onDismissAdScreen, adInterstitial: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity$2;->a:Lcom/inmobi/activity/InMobiAdActivity;

    const-string v1, "onDismissAdScreen"

    .line 173
    const/4 v2, 0x0

    .line 172
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 175
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 3

    .prologue
    .line 199
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiAdActivity-> onLeaveApplication, adInterstitial: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity$2;->a:Lcom/inmobi/activity/InMobiAdActivity;

    const-string v1, "onLeaveApplication"

    .line 203
    const/4 v2, 0x0

    .line 202
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    return-void
.end method

.method public onShowAdScreen(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 3

    .prologue
    .line 160
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiAdActivity-> onShowAdScreen, adInterstitial: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity$2;->a:Lcom/inmobi/activity/InMobiAdActivity;

    const-string v1, "onShowAdScreen"

    .line 164
    const/4 v2, 0x0

    .line 163
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 165
    return-void
.end method
