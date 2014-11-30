.class final Lam/sunrise/android/calendar/ui/widgets/ab;
.super Ljava/lang/Object;
.source "NewTimePicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;
    .locals 2

    .prologue
    .line 296
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;-><init>(Landroid/os/Parcel;Lam/sunrise/android/calendar/ui/widgets/v;)V

    return-object v0
.end method

.method public a(I)[Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;
    .locals 1

    .prologue
    .line 300
    new-array v0, p1, [Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/ab;->a(Landroid/os/Parcel;)Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/ab;->a(I)[Lam/sunrise/android/calendar/ui/widgets/NewTimePicker$SavedState;

    move-result-object v0

    return-object v0
.end method
