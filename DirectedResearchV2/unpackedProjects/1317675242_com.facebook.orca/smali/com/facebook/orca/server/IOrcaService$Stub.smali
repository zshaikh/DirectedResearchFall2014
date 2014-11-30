.class public abstract Lcom/facebook/orca/server/IOrcaService$Stub;
.super Landroid/os/Binder;
.source "IOrcaService.java"

# interfaces
.implements Lcom/facebook/orca/server/IOrcaService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.facebook.orca.server.IOrcaService"

    invoke-virtual {p0, p0, v0}, Lcom/facebook/orca/server/IOrcaService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/facebook/orca/server/IOrcaService;
    .locals 3

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_0
    return-object v1

    .line 31
    :cond_0
    const-string v1, "com.facebook.orca.server.IOrcaService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/facebook/orca/server/IOrcaService;

    if-eqz v2, :cond_1

    .line 33
    move-object v0, v1

    check-cast v0, Lcom/facebook/orca/server/IOrcaService;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    .line 35
    :cond_1
    new-instance v1, Lcom/facebook/orca/server/IOrcaService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/facebook/orca/server/IOrcaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.facebook.orca.server.IOrcaService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.facebook.orca.server.IOrcaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 62
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/server/IOrcaService$Stub;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    .line 65
    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 69
    :sswitch_2
    const-string v0, "com.facebook.orca.server.IOrcaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/server/ICompletionHandler$Stub;->a(Landroid/os/IBinder;)Lcom/facebook/orca/server/ICompletionHandler;

    move-result-object v1

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/server/IOrcaService$Stub;->a(Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z

    move-result v0

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v0, :cond_1

    move v0, v2

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 77
    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
