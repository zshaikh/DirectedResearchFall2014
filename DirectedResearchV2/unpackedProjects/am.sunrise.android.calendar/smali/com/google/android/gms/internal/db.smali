.class public final Lcom/google/android/gms/internal/db;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/l;


# instance fields
.field public final a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/l;

    invoke-direct {v0}, Lcom/google/android/gms/internal/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/db;->CREATOR:Lcom/google/android/gms/internal/l;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/db;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/db;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/db;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/db;->d:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/db;->e:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/l;->a(Lcom/google/android/gms/internal/db;Landroid/os/Parcel;I)V

    return-void
.end method
