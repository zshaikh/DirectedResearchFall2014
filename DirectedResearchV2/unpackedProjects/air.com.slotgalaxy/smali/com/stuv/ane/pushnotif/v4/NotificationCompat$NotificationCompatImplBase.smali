.class Lcom/stuv/ane/pushnotif/v4/NotificationCompat$NotificationCompatImplBase;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Lcom/stuv/ane/pushnotif/v4/NotificationCompat$NotificationCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stuv/ane/pushnotif/v4/NotificationCompat;
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
.method public build(Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 5
    .param p1, "b"    # Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;

    .prologue
    .line 87
    iget-object v0, p1, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 88
    .local v0, "result":Landroid/app/Notification;
    iget-object v1, p1, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 89
    iget-object v3, p1, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 88
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 91
    iget v1, p1, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Builder;->mPriority:I

    if-lez v1, :cond_0

    .line 92
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 94
    :cond_0
    return-object v0
.end method
