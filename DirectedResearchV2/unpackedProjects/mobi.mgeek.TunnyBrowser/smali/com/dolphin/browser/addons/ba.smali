.class Lcom/dolphin/browser/addons/ba;
.super Ljava/lang/Object;
.source "IWebViewPageExtension.java"

# interfaces
.implements Lcom/dolphin/browser/addons/ay;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/dolphin/browser/addons/ba;->a:Landroid/os/IBinder;

    .line 103
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/addons/as;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 123
    :try_start_0
    const-string v0, "com.dolphin.browser.addons.IWebViewPageExtension"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 124
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/dolphin/browser/addons/as;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 125
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/addons/ba;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 127
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Lcom/dolphin/browser/addons/as;Lcom/dolphin/browser/addons/aa;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 196
    :try_start_0
    const-string v2, "com.dolphin.browser.addons.IWebViewPageExtension"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 197
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/dolphin/browser/addons/as;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 198
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/dolphin/browser/addons/aa;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 199
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/dolphin/browser/addons/ba;->a:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 202
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 203
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 206
    :cond_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 207
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 209
    return v0

    :cond_2
    move-object v2, v1

    .line 197
    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 207
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/addons/ba;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public b(Lcom/dolphin/browser/addons/as;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 145
    :try_start_0
    const-string v0, "com.dolphin.browser.addons.IWebViewPageExtension"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 146
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/dolphin/browser/addons/as;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 147
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/dolphin/browser/addons/ba;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 149
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public c(Lcom/dolphin/browser/addons/as;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 167
    :try_start_0
    const-string v0, "com.dolphin.browser.addons.IWebViewPageExtension"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 168
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/dolphin/browser/addons/as;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 169
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/addons/ba;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 171
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 177
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
