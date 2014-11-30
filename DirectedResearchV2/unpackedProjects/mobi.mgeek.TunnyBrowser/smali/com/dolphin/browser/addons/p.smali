.class public abstract Lcom/dolphin/browser/addons/p;
.super Landroid/os/Binder;
.source "IAddonConfig.java"

# interfaces
.implements Lcom/dolphin/browser/addons/o;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/o;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.dolphin.browser.addons.IAddonConfig"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/dolphin/browser/addons/o;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/dolphin/browser/addons/o;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/dolphin/browser/addons/q;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/q;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/p;->a()I

    move-result v0

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 51
    goto :goto_0

    .line 55
    :sswitch_2
    const-string v2, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/p;->b()Lcom/dolphin/browser/addons/l;

    move-result-object v2

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/dolphin/browser/addons/l;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 59
    goto :goto_0

    .line 63
    :sswitch_3
    const-string v2, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/p;->c()Lcom/dolphin/browser/addons/ay;

    move-result-object v2

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/dolphin/browser/addons/ay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 67
    goto :goto_0

    .line 71
    :sswitch_4
    const-string v2, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/p;->d()Lcom/dolphin/browser/addons/av;

    move-result-object v2

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/dolphin/browser/addons/av;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 75
    goto :goto_0

    .line 79
    :sswitch_5
    const-string v2, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/p;->e()Lcom/dolphin/browser/addons/r;

    move-result-object v2

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/dolphin/browser/addons/r;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 83
    goto :goto_0

    .line 87
    :sswitch_6
    const-string v2, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/p;->f()Lcom/dolphin/browser/addons/aj;

    move-result-object v2

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/dolphin/browser/addons/aj;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 91
    goto/16 :goto_0

    .line 95
    :sswitch_7
    const-string v2, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/p;->g()Lcom/dolphin/browser/addons/x;

    move-result-object v2

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/dolphin/browser/addons/x;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 99
    goto/16 :goto_0

    .line 103
    :sswitch_8
    const-string v0, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/addons/bg;->a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/bf;

    move-result-object v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/p;->a(Lcom/dolphin/browser/addons/bf;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 108
    goto/16 :goto_0

    .line 112
    :sswitch_9
    const-string v0, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/addons/bd;->a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/bc;

    move-result-object v0

    .line 115
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/p;->a(Lcom/dolphin/browser/addons/bc;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 117
    goto/16 :goto_0

    .line 121
    :sswitch_a
    const-string v0, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/addons/d;->a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/c;

    move-result-object v0

    .line 124
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/p;->a(Lcom/dolphin/browser/addons/c;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 126
    goto/16 :goto_0

    .line 130
    :sswitch_b
    const-string v0, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/p;->a(I)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 135
    goto/16 :goto_0

    .line 139
    :sswitch_c
    const-string v0, "com.dolphin.browser.addons.IAddonConfig"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/p;->h()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 142
    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
