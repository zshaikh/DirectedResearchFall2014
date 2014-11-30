.class public abstract Lcom/google/android/gms/internal/gj$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/gj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gj$a$a;
    }
.end annotation


# direct methods
.method public static J(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gj;
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.google.android.gms.location.internal.ICopresenceCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/google/android/gms/internal/gj;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/gj;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/gj$a$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gj$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "com.google.android.gms.location.internal.ICopresenceCallbacks"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.location.internal.ICopresenceCallbacks"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.location.internal.ICopresenceCallbacks"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gj$a;->I(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "com.google.android.gms.location.internal.ICopresenceCallbacks"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/gh;->CREATOR:Lcom/google/android/gms/internal/gi;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/gi;->ah(Landroid/os/Parcel;)Lcom/google/android/gms/internal/gh;

    move-result-object v1

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gj$a;->a(ILcom/google/android/gms/internal/gh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v1, v3

    goto :goto_2

    :sswitch_3
    const-string v0, "com.google.android.gms.location.internal.ICopresenceCallbacks"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/gh;->CREATOR:Lcom/google/android/gms/internal/gi;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/gi;->ah(Landroid/os/Parcel;)Lcom/google/android/gms/internal/gh;

    move-result-object v1

    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gj$a;->b(ILcom/google/android/gms/internal/gh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    goto :goto_0

    :cond_2
    move-object v1, v3

    goto :goto_3

    :sswitch_4
    const-string v0, "com.google.android.gms.location.internal.ICopresenceCallbacks"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gj$a;->a(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
