.class public final Lcom/google/android/gms/internal/cb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/h;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;

.field public final e:I

.field public final f:Ljava/util/List;

.field public final g:J

.field public final h:Z

.field public final i:J

.field public final j:Ljava/util/List;

.field public final k:J

.field public final l:I

.field public final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/h;

    invoke-direct {v0}, Lcom/google/android/gms/internal/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cb;->CREATOR:Lcom/google/android/gms/internal/h;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/cb;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/cb;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/cb;->c:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/cb;->d:Ljava/util/List;

    iput p5, p0, Lcom/google/android/gms/internal/cb;->e:I

    if-eqz p6, :cond_1

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/cb;->f:Ljava/util/List;

    iput-wide p7, p0, Lcom/google/android/gms/internal/cb;->g:J

    iput-boolean p9, p0, Lcom/google/android/gms/internal/cb;->h:Z

    iput-wide p10, p0, Lcom/google/android/gms/internal/cb;->i:J

    if-eqz p12, :cond_2

    invoke-static {p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/internal/cb;->j:Ljava/util/List;

    iput-wide p13, p0, Lcom/google/android/gms/internal/cb;->k:J

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/internal/cb;->l:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/cb;->m:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/h;->a(Lcom/google/android/gms/internal/cb;Landroid/os/Parcel;I)V

    return-void
.end method
