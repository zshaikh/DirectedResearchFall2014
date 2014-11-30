.class final Lam/sunrise/android/calendar/ui/settings/c;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    invoke-direct {v0, p1}, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;
    .locals 1

    .prologue
    .line 56
    new-array v0, p1, [Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/settings/c;->a(Landroid/os/Parcel;)Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/settings/c;->a(I)[Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    move-result-object v0

    return-object v0
.end method
