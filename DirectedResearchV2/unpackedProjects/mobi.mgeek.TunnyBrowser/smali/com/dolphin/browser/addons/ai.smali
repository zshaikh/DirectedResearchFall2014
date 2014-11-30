.class Lcom/dolphin/browser/addons/ai;
.super Ljava/lang/Object;
.source "ITab.java"

# interfaces
.implements Lcom/dolphin/browser/addons/ag;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/dolphin/browser/addons/ai;->a:Landroid/os/IBinder;

    .line 89
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 107
    :try_start_0
    const-string v4, "com.dolphin.browser.addons.ITab"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 108
    iget-object v4, p0, Lcom/dolphin/browser/addons/ai;->a:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 109
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 110
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 114
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 116
    return v0

    :cond_0
    move v0, v1

    .line 110
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 114
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/addons/ai;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public b()Lcom/dolphin/browser/addons/ag;
    .locals 5

    .prologue
    .line 125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 129
    :try_start_0
    const-string v0, "com.dolphin.browser.addons.ITab"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/addons/ai;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 131
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 132
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/addons/ah;->a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 135
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 138
    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public c()Lcom/dolphin/browser/addons/as;
    .locals 5

    .prologue
    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 152
    :try_start_0
    const-string v0, "com.dolphin.browser.addons.ITab"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/addons/ai;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 154
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 155
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/addons/at;->a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/as;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 158
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 159
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 161
    return-object v0

    .line 158
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 159
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public d()I
    .locals 5

    .prologue
    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 172
    :try_start_0
    const-string v0, "com.dolphin.browser.addons.ITab"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/dolphin/browser/addons/ai;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 174
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 175
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 178
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    return v0

    .line 178
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
