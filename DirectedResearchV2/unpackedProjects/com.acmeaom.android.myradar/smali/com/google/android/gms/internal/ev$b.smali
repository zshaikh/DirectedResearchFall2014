.class public Lcom/google/android/gms/internal/ev$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/am;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Lcom/google/android/gms/internal/es$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/am;

    invoke-direct {v0}, Lcom/google/android/gms/internal/am;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ev$b;->CREATOR:Lcom/google/android/gms/internal/am;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/es$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ev$b;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ev$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ev$b;->c:Lcom/google/android/gms/internal/es$a;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/es$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ev$b;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ev$b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ev$b;->c:Lcom/google/android/gms/internal/es$a;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ev$b;->CREATOR:Lcom/google/android/gms/internal/am;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ev$b;->CREATOR:Lcom/google/android/gms/internal/am;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/am;->a(Lcom/google/android/gms/internal/ev$b;Landroid/os/Parcel;I)V

    return-void
.end method
