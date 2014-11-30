.class public abstract Lcom/dolphin/browser/addons/s;
.super Landroid/os/Binder;
.source "IBrowserExtension.java"

# interfaces
.implements Lcom/dolphin/browser/addons/r;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/r;
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
    const-string v0, "com.dolphin.browser.addons.IBrowserExtension"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/dolphin/browser/addons/r;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/dolphin/browser/addons/r;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/dolphin/browser/addons/t;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/t;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v1, "com.dolphin.browser.addons.IBrowserExtension"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v1, "com.dolphin.browser.addons.IBrowserExtension"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/s;->a()V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    :sswitch_2
    const-string v1, "com.dolphin.browser.addons.IBrowserExtension"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/s;->b()V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
