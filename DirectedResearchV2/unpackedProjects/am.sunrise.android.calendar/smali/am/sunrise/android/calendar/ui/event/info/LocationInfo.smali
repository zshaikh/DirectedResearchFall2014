.class public Lam/sunrise/android/calendar/ui/event/info/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:D

.field public g:D

.field public h:Ljava/lang/String;

.field public i:D

.field public j:D

.field public k:D

.field public l:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lam/sunrise/android/calendar/ui/event/info/e;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/event/info/e;-><init>()V

    sput-object v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->b:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->c:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->d:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->e:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->i:D

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->j:D

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->k:D

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->l:D

    .line 93
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 39
    instance-of v1, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    if-nez v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    check-cast p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    .line 45
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    iget-object v2, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->b:Ljava/lang/String;

    iget-object v2, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->c:Ljava/lang/String;

    iget-object v2, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->d:Ljava/lang/String;

    iget-object v2, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->e:Ljava/lang/String;

    iget-object v2, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    iget-wide v3, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    iget-wide v3, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    iget-object v2, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->i:D

    iget-wide v3, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->i:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->j:D

    iget-wide v3, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->j:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->k:D

    iget-wide v3, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->k:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->l:D

    iget-wide v3, p1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->l:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-wide v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 72
    iget-wide v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 73
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-wide v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->i:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 75
    iget-wide v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->j:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 76
    iget-wide v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->k:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 77
    iget-wide v0, p0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->l:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 78
    return-void
.end method
