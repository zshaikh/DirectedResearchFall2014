.class Lcom/dolphin/browser/addons/z;
.super Ljava/lang/Object;
.source "IDownloadExtension.java"

# interfaces
.implements Lcom/dolphin/browser/addons/x;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/dolphin/browser/addons/z;->a:Landroid/os/IBinder;

    .line 91
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/addons/DownloadInfo;)V
    .locals 5

    .prologue
    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 143
    :try_start_0
    const-string v0, "com.dolphin.browser.addons.IDownloadExtension"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 144
    if-eqz p1, :cond_0

    .line 145
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/dolphin/browser/addons/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/addons/z;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 152
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 158
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 118
    :try_start_0
    const-string v4, "com.dolphin.browser.addons.IDownloadExtension"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 124
    iget-object v4, p0, Lcom/dolphin/browser/addons/z;->a:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 125
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 126
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 132
    return v0

    :cond_0
    move v0, v1

    .line 126
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/addons/z;->a:Landroid/os/IBinder;

    return-object v0
.end method
