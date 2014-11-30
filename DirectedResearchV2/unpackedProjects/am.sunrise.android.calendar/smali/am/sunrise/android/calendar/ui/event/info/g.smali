.class final Lam/sunrise/android/calendar/ui/event/info/g;
.super Ljava/lang/Object;
.source "PersonInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lam/sunrise/android/calendar/ui/event/info/PersonInfo;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-direct {v0, p1}, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;
    .locals 1

    .prologue
    .line 93
    new-array v0, p1, [Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/info/g;->a(Landroid/os/Parcel;)Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/info/g;->a(I)[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    move-result-object v0

    return-object v0
.end method
