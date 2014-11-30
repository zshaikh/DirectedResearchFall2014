.class Lcom/dolphin/browser/addons/ac;
.super Ljava/lang/Object;
.source "IHttpAuthHandler.java"

# interfaces
.implements Lcom/dolphin/browser/addons/aa;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/dolphin/browser/addons/ac;->a:Landroid/os/IBinder;

    .line 86
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 131
    :try_start_0
    const-string v0, "com.dolphin.browser.addons.IHttpAuthHandler"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/addons/ac;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 133
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 139
    return-void

    .line 136
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 111
    :try_start_0
    const-string v0, "com.dolphin.browser.addons.IHttpAuthHandler"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/addons/ac;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 115
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 121
    return-void

    .line 118
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/addons/ac;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public b()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 150
    :try_start_0
    const-string v3, "com.dolphin.browser.addons.IHttpAuthHandler"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 151
    iget-object v3, p0, Lcom/dolphin/browser/addons/ac;->a:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 152
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 153
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 156
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 159
    return v0

    .line 156
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
