.class public final Lcom/google/android/gms/internal/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/co;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:[Lcom/google/android/gms/internal/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/co;

    invoke-direct {v0}, Lcom/google/android/gms/internal/co;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/x;->CREATOR:Lcom/google/android/gms/internal/co;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v3, 0x0

    const/4 v1, 0x2

    const-string v2, "interstitial_mb"

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v4, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/x;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/x;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/x;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/x;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/x;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/x;->d:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/x;->e:Z

    iput p6, p0, Lcom/google/android/gms/internal/x;->f:I

    iput p7, p0, Lcom/google/android/gms/internal/x;->g:I

    iput-object p8, p0, Lcom/google/android/gms/internal/x;->h:[Lcom/google/android/gms/internal/x;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/co;->a(Lcom/google/android/gms/internal/x;Landroid/os/Parcel;I)V

    return-void
.end method
