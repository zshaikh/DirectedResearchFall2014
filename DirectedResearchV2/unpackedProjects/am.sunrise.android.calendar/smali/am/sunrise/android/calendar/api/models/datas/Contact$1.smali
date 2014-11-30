.class final Lam/sunrise/android/calendar/api/models/datas/Contact$1;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lam/sunrise/android/calendar/api/models/datas/Contact;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-direct {v0, p1}, Lam/sunrise/android/calendar/api/models/datas/Contact;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/api/models/datas/Contact$1;->createFromParcel(Landroid/os/Parcel;)Lam/sunrise/android/calendar/api/models/datas/Contact;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lam/sunrise/android/calendar/api/models/datas/Contact;
    .locals 1

    .prologue
    .line 114
    new-array v0, p1, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/api/models/datas/Contact$1;->newArray(I)[Lam/sunrise/android/calendar/api/models/datas/Contact;

    move-result-object v0

    return-object v0
.end method
