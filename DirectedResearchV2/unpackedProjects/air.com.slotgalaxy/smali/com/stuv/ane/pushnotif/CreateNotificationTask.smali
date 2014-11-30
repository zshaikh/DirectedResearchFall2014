.class public Lcom/stuv/ane/pushnotif/CreateNotificationTask;
.super Landroid/os/AsyncTask;
.source "CreateNotificationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/net/URL;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private _bitmap:Landroid/graphics/Bitmap;

.field private _contentView:Landroid/widget/RemoteViews;

.field private _customLayoutImageContainer:I

.field private _nm:Landroid/app/NotificationManager;

.field private _notif:Landroid/app/Notification;

.field private _notifyId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/net/URL;)Ljava/lang/Long;
    .locals 4
    .param p1, "urls"    # [Ljava/net/URL;

    .prologue
    .line 36
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 37
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 38
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 39
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 40
    .local v2, "input":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/stuv/ane/pushnotif/CreateNotificationTask;->_bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "input":Ljava/io/InputStream;
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 41
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 42
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/stuv/ane/pushnotif/CreateNotificationTask;->doInBackground([Ljava/net/URL;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/CreateNotificationTask;->_contentView:Landroid/widget/RemoteViews;

    iget v1, p0, Lcom/stuv/ane/pushnotif/CreateNotificationTask;->_customLayoutImageContainer:I

    iget-object v2, p0, Lcom/stuv/ane/pushnotif/CreateNotificationTask;->_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 50
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/CreateNotificationTask;->_notif:Landroid/app/Notification;

    iget-object v1, p0, Lcom/stuv/ane/pushnotif/CreateNotificationTask;->_contentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 51
    iget-object v0, p0, Lcom/stuv/ane/pushnotif/CreateNotificationTask;->_nm:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/stuv/ane/pushnotif/CreateNotificationTask;->_notifyId:I

    iget-object v2, p0, Lcom/stuv/ane/pushnotif/CreateNotificationTask;->_notif:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 52
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/stuv/ane/pushnotif/CreateNotificationTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method public setParams(IILandroid/app/NotificationManager;Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "customLayoutImageContainer"    # I
    .param p2, "notifyId"    # I
    .param p3, "_notifMan"    # Landroid/app/NotificationManager;
    .param p4, "notif"    # Landroid/app/Notification;
    .param p5, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 25
    iput p1, p0, Lcom/stuv/ane/pushnotif/CreateNotificationTask;->_customLayoutImageContainer:I

    .line 26
    iput p2, p0, Lcom/stuv/ane/pushnotif/CreateNotificationTask;->_notifyId:I

    .line 27
    iput-object p4, p0, Lcom/stuv/ane/pushnotif/CreateNotificationTask;->_notif:Landroid/app/Notification;

    .line 28
    iput-object p3, p0, Lcom/stuv/ane/pushnotif/CreateNotificationTask;->_nm:Landroid/app/NotificationManager;

    .line 29
    iput-object p5, p0, Lcom/stuv/ane/pushnotif/CreateNotificationTask;->_contentView:Landroid/widget/RemoteViews;

    .line 30
    return-void
.end method
