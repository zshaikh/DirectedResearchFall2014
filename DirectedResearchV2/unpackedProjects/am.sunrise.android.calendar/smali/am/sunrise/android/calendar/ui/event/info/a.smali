.class final Lam/sunrise/android/calendar/ui/event/info/a;
.super Ljava/lang/Object;
.source "EventInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lam/sunrise/android/calendar/ui/event/info/EventInfo;
    .locals 1

    .prologue
    .line 240
    new-instance v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-direct {v0, p1}, Lam/sunrise/android/calendar/ui/event/info/EventInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lam/sunrise/android/calendar/ui/event/info/EventInfo;
    .locals 1

    .prologue
    .line 244
    new-array v0, p1, [Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/info/a;->a(Landroid/os/Parcel;)Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/info/a;->a(I)[Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    move-result-object v0

    return-object v0
.end method
