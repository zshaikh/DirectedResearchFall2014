.class public final Lcom/google/android/gms/internal/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/a;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:Ljava/lang/String;

.field public final m:I

.field public final n:I

.field public final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ai;->CREATOR:Lcom/google/android/gms/internal/a;

    return-void
.end method

.method constructor <init>(IIIIIIIIILjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ai;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/ai;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/ai;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/ai;->d:I

    iput p5, p0, Lcom/google/android/gms/internal/ai;->e:I

    iput p6, p0, Lcom/google/android/gms/internal/ai;->f:I

    iput p7, p0, Lcom/google/android/gms/internal/ai;->g:I

    iput p8, p0, Lcom/google/android/gms/internal/ai;->h:I

    iput p9, p0, Lcom/google/android/gms/internal/ai;->i:I

    iput-object p10, p0, Lcom/google/android/gms/internal/ai;->j:Ljava/lang/String;

    iput p11, p0, Lcom/google/android/gms/internal/ai;->k:I

    iput-object p12, p0, Lcom/google/android/gms/internal/ai;->l:Ljava/lang/String;

    iput p13, p0, Lcom/google/android/gms/internal/ai;->m:I

    iput p14, p0, Lcom/google/android/gms/internal/ai;->n:I

    iput-object p15, p0, Lcom/google/android/gms/internal/ai;->o:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/a;->a(Lcom/google/android/gms/internal/ai;Landroid/os/Parcel;I)V

    return-void
.end method