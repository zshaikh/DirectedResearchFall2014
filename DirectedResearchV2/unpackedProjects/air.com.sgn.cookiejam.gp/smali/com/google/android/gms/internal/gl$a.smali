.class public abstract Lcom/google/android/gms/internal/gl$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/gl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gl$a$a;
    }
.end annotation


# direct methods
.method public static L(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gl;
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/google/android/gms/internal/gl;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/gl;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/gl$a$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gl$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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

    const/4 v4, 0x0

    const/4 v6, 0x1

    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/go;->CREATOR:Lcom/google/android/gms/internal/gp;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gk$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gk;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/gl$a;->a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/gk;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto :goto_0

    :cond_0
    move-object v0, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gk$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gk;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/gl$a;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/gk;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto :goto_0

    :cond_1
    move-object v0, v4

    goto :goto_2

    :sswitch_3
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gk$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gk;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/gl$a;->a([Ljava/lang/String;Lcom/google/android/gms/internal/gk;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto :goto_0

    :sswitch_4
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gk$a;->K(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gk;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gl$a;->a(Lcom/google/android/gms/internal/gk;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v3, v6

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_3
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/gl$a;->a(JZLandroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_3
    move-object v0, v4

    goto :goto_3

    :sswitch_6
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gl$a;->removeActivityUpdates(Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_4
    move-object v0, v4

    goto :goto_4

    :sswitch_7
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gl$a;->dH()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v6}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    move v0, v6

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :sswitch_8
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/LocationRequestCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/LocationRequestCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/c$a;->I(Landroid/os/IBinder;)Lcom/google/android/gms/location/c;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gl$a;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/c;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_6
    move-object v0, v4

    goto :goto_6

    :sswitch_9
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/LocationRequestCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/LocationRequestCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    move-object v1, v0

    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_8
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gl$a;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_7
    move-object v1, v4

    goto :goto_7

    :cond_8
    move-object v0, v4

    goto :goto_8

    :sswitch_a
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/c$a;->I(Landroid/os/IBinder;)Lcom/google/android/gms/location/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gl$a;->a(Lcom/google/android/gms/location/c;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gl$a;->a(Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_9
    move-object v0, v4

    goto :goto_9

    :sswitch_c
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v6

    :goto_a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gl$a;->setMockMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_a
    move v0, v3

    goto :goto_a

    :sswitch_d
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gl$a;->setMockLocation(Landroid/location/Location;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_b
    move-object v0, v4

    goto :goto_b

    :sswitch_e
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngBoundsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    move-object v1, v0

    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/android/gms/internal/gt;->CREATOR:Lcom/google/android/gms/internal/gu;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/gu;->aj(Landroid/os/Parcel;)Lcom/google/android/gms/internal/gt;

    move-result-object v0

    move-object v3, v0

    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/android/gms/internal/hi;->CREATOR:Lcom/google/android/gms/internal/hj;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/hj;->aq(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hi;

    move-result-object v0

    move-object v4, v0

    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gz$a;->N(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gz;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/gl$a;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILcom/google/android/gms/internal/gt;Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/gz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_d
    move-object v1, v4

    goto :goto_c

    :cond_e
    move-object v3, v4

    goto :goto_d

    :sswitch_f
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/google/android/gms/internal/hi;->CREATOR:Lcom/google/android/gms/internal/hj;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/hj;->aq(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hi;

    move-result-object v1

    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gz$a;->N(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gz;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/gl$a;->a(Ljava/lang/String;Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/gz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_f
    move-object v1, v4

    goto :goto_e

    :sswitch_10
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/gt;->CREATOR:Lcom/google/android/gms/internal/gu;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/gu;->aj(Landroid/os/Parcel;)Lcom/google/android/gms/internal/gt;

    move-result-object v1

    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/google/android/gms/internal/hi;->CREATOR:Lcom/google/android/gms/internal/hj;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/hj;->aq(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hi;

    move-result-object v2

    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/gz$a;->N(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gz;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/gl$a;->a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/internal/gt;Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/gz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_10
    move-object v0, v4

    goto :goto_f

    :cond_11
    move-object v1, v4

    goto :goto_10

    :cond_12
    move-object v2, v4

    goto :goto_11

    :sswitch_11
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/google/android/gms/internal/gt;->CREATOR:Lcom/google/android/gms/internal/gu;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/gu;->aj(Landroid/os/Parcel;)Lcom/google/android/gms/internal/gt;

    move-result-object v0

    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/google/android/gms/internal/hi;->CREATOR:Lcom/google/android/gms/internal/hj;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/hj;->aq(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hi;

    move-result-object v1

    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gz$a;->N(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gz;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/gl$a;->a(Lcom/google/android/gms/internal/gt;Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/gz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_13
    move-object v0, v4

    goto :goto_12

    :cond_14
    move-object v1, v4

    goto :goto_13

    :sswitch_12
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/google/android/gms/internal/gv;->CREATOR:Lcom/google/android/gms/internal/gw;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/gw;->ak(Landroid/os/Parcel;)Lcom/google/android/gms/internal/gv;

    move-result-object v0

    move-object v1, v0

    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/google/android/gms/internal/hi;->CREATOR:Lcom/google/android/gms/internal/hj;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/hj;->aq(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hi;

    move-result-object v0

    move-object v2, v0

    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_16
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/gl$a;->a(Lcom/google/android/gms/internal/gv;Lcom/google/android/gms/internal/hi;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_15
    move-object v1, v4

    goto :goto_14

    :cond_16
    move-object v2, v4

    goto :goto_15

    :cond_17
    move-object v0, v4

    goto :goto_16

    :sswitch_13
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/google/android/gms/internal/hi;->CREATOR:Lcom/google/android/gms/internal/hj;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/hj;->aq(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hi;

    move-result-object v0

    move-object v1, v0

    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_18
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gl$a;->a(Lcom/google/android/gms/internal/hi;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_18
    move-object v1, v4

    goto :goto_17

    :cond_19
    move-object v0, v4

    goto :goto_18

    :sswitch_14
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/LocationRequestCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/LocationRequestCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/c$a;->I(Landroid/os/IBinder;)Lcom/google/android/gms/location/c;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/gl$a;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/c;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_1a
    move-object v0, v4

    goto :goto_19

    :sswitch_15
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gl$a;->an(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1b

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v6}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1a
    move v0, v6

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    :sswitch_16
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/hd$a;->CREATOR:Lcom/google/android/gms/internal/ha;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gl$a;->a(Ljava/util/List;)V

    move v0, v6

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/google/android/gms/internal/hi;->CREATOR:Lcom/google/android/gms/internal/hj;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/hj;->aq(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hi;

    move-result-object v2

    :goto_1b
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/gl$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/hi;)V

    move v0, v6

    goto/16 :goto_0

    :cond_1c
    move-object v2, v4

    goto :goto_1b

    :sswitch_18
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gl$a;->a(Landroid/location/Location;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_1d
    move-object v0, v4

    goto :goto_1c

    :sswitch_19
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/google/android/gms/location/a;->CREATOR:Lcom/google/android/gms/location/b;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/location/b;->ae(Landroid/os/Parcel;)Lcom/google/android/gms/location/a;

    move-result-object v1

    :goto_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gj$a;->J(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gj;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/gl$a;->a(Ljava/lang/String;Lcom/google/android/gms/location/a;Lcom/google/android/gms/internal/gj;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_1e
    move-object v1, v4

    goto :goto_1d

    :sswitch_1a
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/google/android/gms/internal/gh;->CREATOR:Lcom/google/android/gms/internal/gi;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/gi;->ah(Landroid/os/Parcel;)Lcom/google/android/gms/internal/gh;

    move-result-object v1

    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gj$a;->J(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gj;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/gl$a;->a(Ljava/lang/String;Lcom/google/android/gms/internal/gh;Lcom/google/android/gms/internal/gj;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_1f
    move-object v1, v4

    goto :goto_1e

    :sswitch_1b
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gj$a;->J(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gj;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gl$a;->a(Ljava/lang/String;Lcom/google/android/gms/internal/gj;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Lcom/google/android/gms/location/f;->CREATOR:Lcom/google/android/gms/location/g;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/location/g;->ag(Landroid/os/Parcel;)Lcom/google/android/gms/location/f;

    move-result-object v1

    :goto_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gj$a;->J(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gj;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/gl$a;->a(Ljava/lang/String;Lcom/google/android/gms/location/f;Lcom/google/android/gms/internal/gj;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_20
    move-object v1, v4

    goto :goto_1f

    :sswitch_1d
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lcom/google/android/gms/location/f;->CREATOR:Lcom/google/android/gms/location/g;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/location/g;->ag(Landroid/os/Parcel;)Lcom/google/android/gms/location/f;

    move-result-object v1

    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gj$a;->J(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gj;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/gl$a;->b(Ljava/lang/String;Lcom/google/android/gms/location/f;Lcom/google/android/gms/internal/gj;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_21
    move-object v1, v4

    goto :goto_20

    :sswitch_1e
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    move v1, v6

    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gj$a;->J(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gj;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/gl$a;->a(Ljava/lang/String;ZLcom/google/android/gms/internal/gj;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :cond_22
    move v1, v3

    goto :goto_21

    :sswitch_1f
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gj$a;->J(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gj;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gl$a;->b(Ljava/lang/String;Lcom/google/android/gms/internal/gj;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gl$a;->ao(Ljava/lang/String;)Lcom/google/android/gms/location/d;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_23

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v6}, Lcom/google/android/gms/location/d;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_22
    move v0, v6

    goto/16 :goto_0

    :cond_23
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

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
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x18 -> :sswitch_16
        0x19 -> :sswitch_17
        0x1a -> :sswitch_18
        0x1b -> :sswitch_19
        0x1c -> :sswitch_1a
        0x1d -> :sswitch_1b
        0x1e -> :sswitch_1c
        0x1f -> :sswitch_1d
        0x20 -> :sswitch_1e
        0x21 -> :sswitch_1f
        0x22 -> :sswitch_20
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
