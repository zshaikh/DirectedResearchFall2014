.class public final Lcom/google/android/gms/internal/bj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/c;


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

    new-instance v0, Lcom/google/android/gms/internal/c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bj;->CREATOR:Lcom/google/android/gms/internal/c;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/bj;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/bj;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/bj;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bj;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/bj;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/bj;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/bj;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/bj;->h:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/bj;Landroid/os/Parcel;I)V

    return-void
.end method
