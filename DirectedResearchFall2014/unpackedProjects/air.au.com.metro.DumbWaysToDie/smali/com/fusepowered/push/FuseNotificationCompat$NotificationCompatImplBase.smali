.class Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImplBase;
.super Ljava/lang/Object;
.source "FuseNotificationCompat.java"

# interfaces
.implements Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/push/FuseNotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/fusepowered/push/FuseNotificationCompat$Builder;)Landroid/app/Notification;
    .locals 5
    .parameter "b"

    .prologue
    .line 87
    iget-object v0, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 88
    .local v0, result:Landroid/app/Notification;
    iget-object v1, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 91
    iget v1, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mPriority:I

    if-lez v1, :cond_0

    .line 92
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 94
    :cond_0
    return-object v0
.end method
