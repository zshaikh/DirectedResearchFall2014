.class public abstract Lcom/dolphin/browser/addons/an;
.super Landroid/os/Binder;
.source "IWebBackForwardList.java"

# interfaces
.implements Lcom/dolphin/browser/addons/am;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.dolphin.browser.addons.IWebBackForwardList"

    invoke-virtual {p0, p0, v0}, Lcom/dolphin/browser/addons/an;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/am;
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
    const-string v0, "com.dolphin.browser.addons.IWebBackForwardList"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/dolphin/browser/addons/am;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/dolphin/browser/addons/am;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/dolphin/browser/addons/ao;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/ao;-><init>(Landroid/os/IBinder;)V

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
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v1, "com.dolphin.browser.addons.IWebBackForwardList"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v1, "com.dolphin.browser.addons.IWebBackForwardList"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/an;->a()I

    move-result v1

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    :sswitch_2
    const-string v1, "com.dolphin.browser.addons.IWebBackForwardList"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/an;->b()I

    move-result v1

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    :sswitch_3
    const-string v1, "com.dolphin.browser.addons.IWebBackForwardList"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 71
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/addons/an;->a(I)I

    move-result v1

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    :sswitch_4
    const-string v1, "com.dolphin.browser.addons.IWebBackForwardList"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 81
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/addons/an;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :sswitch_5
    const-string v1, "com.dolphin.browser.addons.IWebBackForwardList"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/addons/an;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :sswitch_6
    const-string v1, "com.dolphin.browser.addons.IWebBackForwardList"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/addons/an;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :sswitch_7
    const-string v1, "com.dolphin.browser.addons.IWebBackForwardList"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/addons/an;->e(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {v1, p3, v0}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 118
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
