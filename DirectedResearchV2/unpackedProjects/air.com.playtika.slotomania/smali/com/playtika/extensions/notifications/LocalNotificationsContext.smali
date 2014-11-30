.class public Lcom/playtika/extensions/notifications/LocalNotificationsContext;
.super Lcom/adobe/fre/FREContext;
.source "LocalNotificationsContext.java"


# static fields
.field public static final COLLECT_BONUS_NOTIFICATION_ID:I = 0x0

.field public static final EXTRA_CLASS:Ljava/lang/String; = "extra_class"

.field public static final EXTRA_CONTENT_TEXT:Ljava/lang/String; = "extra_content_text"

.field public static final EXTRA_ICON_ID:Ljava/lang/String; = "extra_icon_id"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "extra_title"


# instance fields
.field private startServicePendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v0, "functionsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "showNotificationAfter"

    new-instance v2, Lcom/playtika/extensions/notifications/ShowNotificationAfterFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/notifications/ShowNotificationAfterFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "stopNotificationService"

    new-instance v2, Lcom/playtika/extensions/notifications/StopNotificationFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/notifications/StopNotificationFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-object v0
.end method

.method public getStartServicePendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/playtika/extensions/notifications/LocalNotificationsContext;->startServicePendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public setStartServicePendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/playtika/extensions/notifications/LocalNotificationsContext;->startServicePendingIntent:Landroid/app/PendingIntent;

    .line 41
    return-void
.end method
