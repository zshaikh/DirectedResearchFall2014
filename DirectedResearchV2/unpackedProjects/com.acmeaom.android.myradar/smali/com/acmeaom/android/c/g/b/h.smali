.class Lcom/acmeaom/android/c/g/b/h;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic c:Z


# instance fields
.field a:[F

.field b:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const-class v0, Lcom/acmeaom/android/c/g/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/acmeaom/android/c/g/b/h;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>([F[F)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    sget-boolean v0, Lcom/acmeaom/android/c/g/b/h;->c:Z

    if-nez v0, :cond_1

    array-length v0, p1

    if-ne v0, v1, :cond_0

    array-length v0, p2

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 126
    :cond_1
    iput-object p1, p0, Lcom/acmeaom/android/c/g/b/h;->a:[F

    .line 127
    iput-object p2, p0, Lcom/acmeaom/android/c/g/b/h;->b:[F

    .line 128
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 131
    const/16 v0, 0x10

    return v0
.end method


# virtual methods
.method a(Ljava/nio/FloatBuffer;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/h;->a:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 136
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/h;->b:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 137
    return-void
.end method
