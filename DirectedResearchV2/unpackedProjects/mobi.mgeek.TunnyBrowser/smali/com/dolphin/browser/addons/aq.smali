.class public abstract Lcom/dolphin/browser/addons/aq;
.super Landroid/os/Binder;
.source "IWebSettings.java"

# interfaces
.implements Lcom/dolphin/browser/addons/ap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p0, p0, v0}, Lcom/dolphin/browser/addons/aq;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/ap;
    .locals 2

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-string v0, "com.dolphin.browser.addons.IWebSettings"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/dolphin/browser/addons/ap;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Lcom/dolphin/browser/addons/ap;

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/dolphin/browser/addons/ar;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/ar;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 47
    sparse-switch p1, :sswitch_data_0

    .line 259
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 51
    :sswitch_0
    const-string v0, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :sswitch_1
    const-string v2, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 59
    :cond_0
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/aq;->a(Z)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    :sswitch_2
    const-string v2, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/aq;->a()Z

    move-result v2

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    :sswitch_3
    const-string v2, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 76
    :cond_2
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/aq;->b(Z)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    :sswitch_4
    const-string v2, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/aq;->b()Z

    move-result v2

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    :sswitch_5
    const-string v2, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 93
    :cond_4
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/aq;->c(Z)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 99
    :sswitch_6
    const-string v2, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/aq;->c()Z

    move-result v2

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 107
    :sswitch_7
    const-string v0, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/aq;->a(I)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 116
    :sswitch_8
    const-string v0, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/aq;->d()I

    move-result v0

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 124
    :sswitch_9
    const-string v2, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 127
    :cond_6
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/aq;->d(Z)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 133
    :sswitch_a
    const-string v2, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/aq;->e()Z

    move-result v2

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v2, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 141
    :sswitch_b
    const-string v2, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    .line 144
    :cond_8
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/aq;->e(Z)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 150
    :sswitch_c
    const-string v2, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/aq;->f()Z

    move-result v2

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v2, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 158
    :sswitch_d
    const-string v2, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    .line 161
    :cond_a
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/aq;->f(Z)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 167
    :sswitch_e
    const-string v2, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/aq;->g()Z

    move-result v2

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v2, :cond_b

    move v0, v1

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    :sswitch_f
    const-string v2, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    .line 178
    :cond_c
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/aq;->g(Z)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 184
    :sswitch_10
    const-string v2, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/aq;->h()Z

    move-result v2

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v2, :cond_d

    move v0, v1

    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 192
    :sswitch_11
    const-string v2, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    move v0, v1

    .line 195
    :cond_e
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/aq;->h(Z)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 201
    :sswitch_12
    const-string v2, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/aq;->i()Z

    move-result v2

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v2, :cond_f

    move v0, v1

    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 209
    :sswitch_13
    const-string v2, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    move v0, v1

    .line 212
    :cond_10
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/aq;->i(Z)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 218
    :sswitch_14
    const-string v2, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/aq;->j()Z

    move-result v2

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v2, :cond_11

    move v0, v1

    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 226
    :sswitch_15
    const-string v0, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/aq;->a(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 235
    :sswitch_16
    const-string v0, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/aq;->k()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    :sswitch_17
    const-string v0, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/aq;->b(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 252
    :sswitch_18
    const-string v0, "com.dolphin.browser.addons.IWebSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/aq;->l()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 47
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
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
