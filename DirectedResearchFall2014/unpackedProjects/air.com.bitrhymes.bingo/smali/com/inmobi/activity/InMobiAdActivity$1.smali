.class Lcom/inmobi/activity/InMobiAdActivity$1;
.super Ljava/lang/Object;
.source "InMobiAdActivity.java"

# interfaces
.implements Lcom/inmobi/androidsdk/IMAdListener;


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
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/activity/InMobiAdActivity$1;->a:Lcom/inmobi/activity/InMobiAdActivity;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdRequestCompleted(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 3
    .parameter

    .prologue
    .line 138
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiAdActivity-> onAdRequestCompleted, adView: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity$1;->a:Lcom/inmobi/activity/InMobiAdActivity;

    const-string v1, "onAdRequestCompleted"

    .line 142
    const/4 v2, 0x0

    .line 141
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 143
    return-void
.end method

.method public onAdRequestFailed(Lcom/inmobi/androidsdk/IMAdView;Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 128
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiAdActivity-> onAdRequestFailed, adView: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    const-string v2, " errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity$1;->a:Lcom/inmobi/activity/InMobiAdActivity;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdRequestFailed....errorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    const/4 v2, 0x0

    .line 131
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 134
    return-void
.end method

.method public onDismissAdScreen(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 3
    .parameter

    .prologue
    .line 120
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiAdActivity-> onDismissAdScreen, adView: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity$1;->a:Lcom/inmobi/activity/InMobiAdActivity;

    const-string v1, "onDismissAdScreen"

    .line 123
    const/4 v2, 0x0

    .line 122
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 124
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 3
    .parameter

    .prologue
    .line 147
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiAdActivity-> onLeaveApplication, adView: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity$1;->a:Lcom/inmobi/activity/InMobiAdActivity;

    const-string v1, "onLeaveApplication"

    .line 151
    const/4 v2, 0x0

    .line 150
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 153
    return-void
.end method

.method public onShowAdScreen(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 3
    .parameter

    .prologue
    .line 112
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiAdActivity-> onShowAdScreen, adView: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity$1;->a:Lcom/inmobi/activity/InMobiAdActivity;

    const-string v1, "onShowAdScreen"

    .line 115
    const/4 v2, 0x0

    .line 114
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 116
    return-void
.end method
