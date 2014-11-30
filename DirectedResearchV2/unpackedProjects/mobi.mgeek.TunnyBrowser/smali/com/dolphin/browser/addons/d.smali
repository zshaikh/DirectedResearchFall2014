.class public abstract Lcom/dolphin/browser/addons/d;
.super Landroid/os/Binder;
.source "BrowserUtil.java"

# interfaces
.implements Lcom/dolphin/browser/addons/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p0, p0, v0}, Lcom/dolphin/browser/addons/d;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/c;
    .locals 2

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/dolphin/browser/addons/c;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/dolphin/browser/addons/c;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/dolphin/browser/addons/e;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/e;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 55
    invoke-virtual {p0, v2, v3}, Lcom/dolphin/browser/addons/d;->a(J)Lcom/dolphin/browser/addons/BookmarkTreeNode;

    move-result-object v0

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {v0, p3, v1}, Lcom/dolphin/browser/addons/BookmarkTreeNode;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v0, v1

    .line 64
    goto :goto_0

    .line 62
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 68
    :sswitch_2
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 71
    invoke-virtual {p0, v2, v3}, Lcom/dolphin/browser/addons/d;->b(J)Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v0, v1

    .line 74
    goto :goto_0

    .line 78
    :sswitch_3
    const-string v2, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    sget-object v0, Lcom/dolphin/browser/addons/BookmarkTreeNode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/BookmarkTreeNode;

    .line 86
    :cond_1
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/d;->a(Lcom/dolphin/browser/addons/BookmarkTreeNode;)J

    move-result-wide v2

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v1

    .line 89
    goto :goto_0

    .line 93
    :sswitch_4
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 98
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/dolphin/browser/addons/d;->a(JJ)J

    move-result-wide v2

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v1

    .line 101
    goto :goto_0

    .line 105
    :sswitch_5
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 108
    invoke-virtual {p0, v2, v3}, Lcom/dolphin/browser/addons/d;->c(J)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 110
    goto/16 :goto_0

    .line 114
    :sswitch_6
    const-string v2, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    sget-object v0, Lcom/dolphin/browser/addons/BookmarkTreeNode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/BookmarkTreeNode;

    .line 122
    :cond_2
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/d;->b(Lcom/dolphin/browser/addons/BookmarkTreeNode;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 124
    goto/16 :goto_0

    .line 128
    :sswitch_7
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {p0, v0, v2}, Lcom/dolphin/browser/addons/d;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v0, v1

    .line 136
    goto/16 :goto_0

    .line 140
    :sswitch_8
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {p0, v0, v2}, Lcom/dolphin/browser/addons/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 147
    goto/16 :goto_0

    .line 151
    :sswitch_9
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {p0, v0, v2}, Lcom/dolphin/browser/addons/d;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 158
    goto/16 :goto_0

    .line 162
    :sswitch_a
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {p0, v0, v2}, Lcom/dolphin/browser/addons/d;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v0, v1

    .line 170
    goto/16 :goto_0

    .line 174
    :sswitch_b
    const-string v2, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    sget-object v0, Lcom/dolphin/browser/addons/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/DownloadInfo;

    .line 182
    :cond_3
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/d;->a(Lcom/dolphin/browser/addons/DownloadInfo;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 184
    goto/16 :goto_0

    .line 188
    :sswitch_c
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/addons/v;->a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/u;

    move-result-object v0

    .line 191
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/d;->a(Lcom/dolphin/browser/addons/u;)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 193
    goto/16 :goto_0

    .line 197
    :sswitch_d
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/addons/v;->a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/u;

    move-result-object v0

    .line 200
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/d;->b(Lcom/dolphin/browser/addons/u;)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 202
    goto/16 :goto_0

    .line 206
    :sswitch_e
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/addons/v;->a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/u;

    move-result-object v0

    .line 209
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/d;->c(Lcom/dolphin/browser/addons/u;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 211
    goto/16 :goto_0

    .line 215
    :sswitch_f
    const-string v0, "com.dolphin.browser.addons.BrowserUtil"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/addons/v;->a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/u;

    move-result-object v0

    .line 218
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/d;->d(Lcom/dolphin/browser/addons/u;)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 220
    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
