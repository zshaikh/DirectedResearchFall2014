.class Lcom/acmeaom/android/c/g/c/g;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:[F

.field private final c:[F

.field private final d:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/acmeaom/android/c/g/c/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/acmeaom/android/c/g/c/g;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([F[F[F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/acmeaom/android/c/g/c/g;->b:[F

    .line 76
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/acmeaom/android/c/g/c/g;->c:[F

    .line 77
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/acmeaom/android/c/g/c/g;->d:[F

    .line 80
    sget-boolean v0, Lcom/acmeaom/android/c/g/c/g;->a:Z

    if-nez v0, :cond_1

    array-length v0, p1

    if-ne v0, v1, :cond_0

    array-length v0, p2

    if-ne v0, v1, :cond_0

    array-length v0, p3

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/g;->b:[F

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/g;->c:[F

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/g;->d:[F

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x18

    return v0
.end method

.method public static a([Lcom/acmeaom/android/c/g/c/g;)Ljava/nio/FloatBuffer;
    .locals 4

    .prologue
    .line 91
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 92
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 93
    invoke-direct {v3, v1}, Lcom/acmeaom/android/c/g/c/g;->a(Ljava/nio/FloatBuffer;)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-object v1
.end method

.method private a(Ljava/nio/FloatBuffer;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/g;->b:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 100
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/g;->c:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 101
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/g;->d:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/c/g/c/g;)[F
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/g;->b:[F

    return-object v0
.end method

.method static synthetic b(Lcom/acmeaom/android/c/g/c/g;)[F
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/g;->c:[F

    return-object v0
.end method

.method static synthetic c(Lcom/acmeaom/android/c/g/c/g;)[F
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/g;->d:[F

    return-object v0
.end method
