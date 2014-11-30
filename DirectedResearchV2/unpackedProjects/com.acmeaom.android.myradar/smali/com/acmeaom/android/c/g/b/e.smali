.class Lcom/acmeaom/android/c/g/b/e;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic c:Z


# instance fields
.field final a:[F

.field final b:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const-class v0, Lcom/acmeaom/android/c/g/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/acmeaom/android/c/g/b/e;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>([F[F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/e;->a:[F

    .line 146
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/e;->b:[F

    .line 149
    sget-boolean v0, Lcom/acmeaom/android/c/g/b/e;->c:Z

    if-nez v0, :cond_1

    array-length v0, p1

    if-ne v0, v1, :cond_0

    array-length v0, p2

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/e;->a:[F

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/e;->b:[F

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    return-void
.end method

.method static a()I
    .locals 1

    .prologue
    .line 155
    const/16 v0, 0x10

    return v0
.end method


# virtual methods
.method a(Ljava/nio/FloatBuffer;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/e;->a:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 160
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/e;->b:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 161
    return-void
.end method
