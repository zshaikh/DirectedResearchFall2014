.class Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImplIceCreamSandwich;
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
    name = "NotificationCompatImplIceCreamSandwich"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/fusepowered/push/FuseNotificationCompat$Builder;)Landroid/app/Notification;
    .locals 13
    .parameter "b"

    .prologue
    .line 108
    iget-object v0, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v2, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    iget-object v5, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    iget v6, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mNumber:I

    iget-object v7, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    iget-object v8, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    iget-object v9, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    iget v10, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mProgressMax:I

    iget v11, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mProgress:I

    iget-boolean v12, p1, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->mProgressIndeterminate:Z

    invoke-static/range {v0 .. v12}, Lcom/fusepowered/push/FuseNotificationCompatIceCreamSandwich;->add(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
