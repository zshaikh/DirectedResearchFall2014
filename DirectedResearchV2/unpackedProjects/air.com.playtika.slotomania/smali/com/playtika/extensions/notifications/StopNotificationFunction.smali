.class public Lcom/playtika/extensions/notifications/StopNotificationFunction;
.super Ljava/lang/Object;
.source "StopNotificationFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


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
    .locals 6
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 18
    .local v1, "activity":Landroid/app/Activity;
    const-string v5, "alarm"

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 19
    .local v2, "alarmMng":Landroid/app/AlarmManager;
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/notifications/LocalNotificationsContext;

    move-object v3, v0

    .line 20
    .local v3, "notificationContext":Lcom/playtika/extensions/notifications/LocalNotificationsContext;
    invoke-virtual {v3}, Lcom/playtika/extensions/notifications/LocalNotificationsContext;->getStartServicePendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 21
    .local v4, "operation":Landroid/app/PendingIntent;
    if-eqz v4, :cond_0

    .line 22
    invoke-virtual {v2, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 25
    :cond_0
    const/4 v5, 0x0

    return-object v5
.end method
