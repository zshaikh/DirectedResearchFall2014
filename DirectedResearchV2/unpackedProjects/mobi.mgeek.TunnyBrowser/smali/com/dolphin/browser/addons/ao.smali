.class Lcom/dolphin/browser/addons/ao;
.super Ljava/lang/Object;
.source "IWebBackForwardList.java"

# interfaces
.implements Lcom/dolphin/browser/addons/am;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/dolphin/browser/addons/ao;->a:Landroid/os/IBinder;

    .line 131
    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .prologue
    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 151
    :try_start_0
    const-string v0, "com.dolphin.browser.addons.IWebBackForwardList"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/dolphin/browser/addons/ao;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 153
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 154
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 157
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 158
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 160
    return v0

    .line 157
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 158
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(I)I
    .locals 5

    .prologue
    .line 193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 197
    :try_start_0
    const-string v0, "com.dolphin.browser.addons.IWebBackForwardList"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/addons/ao;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 200
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 201
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 204
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 207
    return v0

    .line 204
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/addons/ao;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public b()I
    .locals 5

    .prologue
    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 173
    :try_start_0
    const-string v0, "com.dolphin.browser.addons.IWebBackForwardList"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/addons/ao;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 175
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 176
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 179
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    return v0

    .line 179
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 224
    :try_start_0
    const-string v0, "com.dolphin.browser.addons.IWebBackForwardList"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object v0, p0, Lcom/dolphin/browser/addons/ao;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 227
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 228
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 231
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 234
    return-object v0

    .line 231
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 249
    :try_start_0
    const-string v0, "com.dolphin.browser.addons.IWebBackForwardList"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-object v0, p0, Lcom/dolphin/browser/addons/ao;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 252
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 253
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 256
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    return-object v0

    .line 256
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public d(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 274
    :try_start_0
    const-string v0, "com.dolphin.browser.addons.IWebBackForwardList"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-object v0, p0, Lcom/dolphin/browser/addons/ao;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 277
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 278
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 281
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 284
    return-object v0

    .line 281
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public e(I)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 299
    :try_start_0
    const-string v0, "com.dolphin.browser.addons.IWebBackForwardList"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-object v0, p0, Lcom/dolphin/browser/addons/ao;->a:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 302
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 303
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 314
    return-object v0

    .line 307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
