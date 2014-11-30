.class public abstract Lcom/dolphin/browser/addons/ak;
.super Landroid/os/Binder;
.source "ITitleBarExtension.java"

# interfaces
.implements Lcom/dolphin/browser/addons/aj;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/aj;
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
    const-string v0, "com.dolphin.browser.addons.ITitleBarExtension"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/dolphin/browser/addons/aj;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/dolphin/browser/addons/aj;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/dolphin/browser/addons/al;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/al;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v1, "com.dolphin.browser.addons.ITitleBarExtension"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.dolphin.browser.addons.ITitleBarExtension"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/ak;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {v1, p3, v0}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 55
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    :sswitch_2
    const-string v1, "com.dolphin.browser.addons.ITitleBarExtension"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/ak;->b()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    :sswitch_3
    const-string v1, "com.dolphin.browser.addons.ITitleBarExtension"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/addons/ak;->a(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
