.class public final Lcom/google/android/gms/internal/bn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/e;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/e;

    invoke-direct {v0}, Lcom/google/android/gms/internal/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bn;->CREATOR:Lcom/google/android/gms/internal/e;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/bn;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/bn;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/bn;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bn;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/bn;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/bn;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/bn;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/bn;->h:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/e;->a(Lcom/google/android/gms/internal/bn;Landroid/os/Parcel;I)V

    return-void
.end method
