.class public Lcom/bitrhymes/PlayHavenAndroidLib/ShowNotificationPH;
.super Ljava/lang/Object;
.source "ShowNotificationPH.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field context:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .parameter "arg0"
    .parameter "args"

    .prologue
    const-string v5, "PlayhavenEXt"

    .line 17
    const-string v3, "PlayhavenEXt"

    const-string v3, "RequestForApp"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iput-object p1, p0, Lcom/bitrhymes/PlayHavenAndroidLib/ShowNotificationPH;->context:Lcom/adobe/fre/FREContext;

    .line 22
    :try_start_0
    const-string v3, "PlayhavenEXt"

    const-string v4, "RequestForApp : not fail "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, place:Ljava/lang/String;
    new-instance v1, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;

    iget-object v3, p0, Lcom/bitrhymes/PlayHavenAndroidLib/ShowNotificationPH;->context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v3}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    .local v1, notifyView:Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;
    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->refresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v1           #notifyView:Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;
    .end local v2           #place:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 30
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 31
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    const-string v3, "PlayhavenEXt"

    const-string v3, "RequestForApp : fail "

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v3, p0, Lcom/bitrhymes/PlayHavenAndroidLib/ShowNotificationPH;->context:Lcom/adobe/fre/FREContext;

    const-string v4, "ERROR_EVENT"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
