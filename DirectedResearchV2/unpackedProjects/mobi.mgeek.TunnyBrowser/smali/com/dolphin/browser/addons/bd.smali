.class public abstract Lcom/dolphin/browser/addons/bd;
.super Landroid/os/Binder;
.source "TabManager.java"

# interfaces
.implements Lcom/dolphin/browser/addons/bc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.dolphin.browser.addons.TabManager"

    invoke-virtual {p0, p0, v0}, Lcom/dolphin/browser/addons/bd;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/bc;
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
    const-string v0, "com.dolphin.browser.addons.TabManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/dolphin/browser/addons/bc;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/dolphin/browser/addons/bc;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/dolphin/browser/addons/be;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/be;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "com.dolphin.browser.addons.TabManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.dolphin.browser.addons.TabManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 52
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/dolphin/browser/addons/bd;->a(Ljava/lang/String;Z)Lcom/dolphin/browser/addons/ag;

    move-result-object v0

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/dolphin/browser/addons/ag;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 54
    goto :goto_2

    .line 59
    :sswitch_2
    const-string v0, "com.dolphin.browser.addons.TabManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/bd;->a(I)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    :sswitch_3
    const-string v0, "com.dolphin.browser.addons.TabManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/bd;->a()Lcom/dolphin/browser/addons/ag;

    move-result-object v0

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/dolphin/browser/addons/ag;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 76
    :sswitch_4
    const-string v0, "com.dolphin.browser.addons.TabManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/bd;->b(I)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    :sswitch_5
    const-string v0, "com.dolphin.browser.addons.TabManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/bd;->c(I)Lcom/dolphin/browser/addons/ag;

    move-result-object v0

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/dolphin/browser/addons/ag;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 95
    :sswitch_6
    const-string v0, "com.dolphin.browser.addons.TabManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/bd;->b()[I

    move-result-object v0

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 103
    :sswitch_7
    const-string v0, "com.dolphin.browser.addons.TabManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/addons/at;->a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/as;

    move-result-object v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/bd;->a(Lcom/dolphin/browser/addons/as;)Lcom/dolphin/browser/addons/ag;

    move-result-object v0

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/dolphin/browser/addons/ag;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 113
    :sswitch_8
    const-string v0, "com.dolphin.browser.addons.TabManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/bd;->d(I)Lcom/dolphin/browser/addons/as;

    move-result-object v0

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/dolphin/browser/addons/as;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 123
    :sswitch_9
    const-string v0, "com.dolphin.browser.addons.TabManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/bd;->e(I)Lcom/dolphin/browser/addons/ag;

    move-result-object v0

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/dolphin/browser/addons/ag;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
