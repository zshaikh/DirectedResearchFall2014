.class final Lam/sunrise/android/calendar/ui/event/info/e;
.super Ljava/lang/Object;
.source "LocationInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lam/sunrise/android/calendar/ui/event/info/LocationInfo;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    invoke-direct {v0, p1}, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lam/sunrise/android/calendar/ui/event/info/LocationInfo;
    .locals 1

    .prologue
    .line 101
    new-array v0, p1, [Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/info/e;->a(Landroid/os/Parcel;)Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/info/e;->a(I)[Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    move-result-object v0

    return-object v0
.end method
