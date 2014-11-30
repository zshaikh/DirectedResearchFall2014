.class public final Lcom/google/android/gms/internal/cl;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I

.field public static final e:[I

.field public static final f:[J

.field public static final g:[F

.field public static final h:[D

.field public static final i:[Z

.field public static final j:[Ljava/lang/String;

.field public static final k:[[B

.field public static final l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/cl;->a(II)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/cl;->a:I

    const/4 v0, 0x4

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/cl;->a(II)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/cl;->b:I

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/cl;->a(II)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/cl;->c:I

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/cl;->a(II)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/cl;->d:I

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/cl;->e:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/cl;->f:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/cl;->g:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/cl;->h:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/cl;->i:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/cl;->j:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/cl;->k:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/cl;->l:[B

    return-void
.end method

.method static a(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
