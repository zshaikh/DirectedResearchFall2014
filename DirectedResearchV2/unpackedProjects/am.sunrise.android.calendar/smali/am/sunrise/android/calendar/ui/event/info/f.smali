.class final Lam/sunrise/android/calendar/ui/event/info/f;
.super Ljava/lang/Object;
.source "OccurrenceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    invoke-direct {v0, p1}, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;
    .locals 1

    .prologue
    .line 66
    new-array v0, p1, [Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/info/f;->a(Landroid/os/Parcel;)Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/info/f;->a(I)[Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    move-result-object v0

    return-object v0
.end method
