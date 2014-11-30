.class public final Lcom/google/android/gms/internal/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/cn;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Landroid/os/Bundle;

.field public final d:I

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:I

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Lcom/google/android/gms/internal/ai;

.field public final k:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/v;->CREATOR:Lcom/google/android/gms/internal/cn;

    return-void
.end method

.method constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ai;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/v;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/v;->b:J

    iput-object p4, p0, Lcom/google/android/gms/internal/v;->c:Landroid/os/Bundle;

    iput p5, p0, Lcom/google/android/gms/internal/v;->d:I

    iput-object p6, p0, Lcom/google/android/gms/internal/v;->e:Ljava/util/List;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/v;->f:Z

    iput p8, p0, Lcom/google/android/gms/internal/v;->g:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/v;->h:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/v;->i:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/v;->j:Lcom/google/android/gms/internal/ai;

    iput-object p12, p0, Lcom/google/android/gms/internal/v;->k:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cn;->a(Lcom/google/android/gms/internal/v;Landroid/os/Parcel;I)V

    return-void
.end method
