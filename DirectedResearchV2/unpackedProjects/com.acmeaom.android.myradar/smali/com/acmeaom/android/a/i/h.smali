.class public Lcom/acmeaom/android/a/i/h;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/acmeaom/android/a/i/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/acmeaom/android/a/i/h;->a:Z

    .line 7
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/i/h;->b:Ljava/lang/ThreadLocal;

    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/acmeaom/android/a/a/c/d;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/acmeaom/android/a/i/h;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/c/d;

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/n;)V
    .locals 2

    .prologue
    .line 21
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000

    invoke-static {p0, v0, v1}, Lcom/acmeaom/android/a/i/h;->a(Lcom/acmeaom/android/a/a/c/n;ZF)V

    .line 22
    return-void
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/n;ZF)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 12
    sget-boolean v1, Lcom/acmeaom/android/a/i/h;->a:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 13
    :cond_0
    iget v1, p0, Lcom/acmeaom/android/a/a/c/n;->a:F

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iget v2, p0, Lcom/acmeaom/android/a/a/c/n;->b:F

    mul-float/2addr v2, p2

    float-to-int v2, v2

    const/4 v6, 0x0

    move v4, v3

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lcom/acmeaom/android/a/a/c/d;->a(Ljava/lang/Object;IIIILcom/acmeaom/android/a/a/c/c;I)Lcom/acmeaom/android/a/a/c/d;

    move-result-object v0

    .line 15
    invoke-static {v0, p2, p2}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;FF)V

    .line 17
    sget-object v1, Lcom/acmeaom/android/a/i/h;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public static b()Lcom/acmeaom/android/a/i/i;
    .locals 2

    .prologue
    .line 29
    new-instance v1, Lcom/acmeaom/android/a/i/i;

    sget-object v0, Lcom/acmeaom/android/a/i/h;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/c/d;

    invoke-direct {v1, v0}, Lcom/acmeaom/android/a/i/i;-><init>(Lcom/acmeaom/android/a/a/c/d;)V

    return-object v1
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/acmeaom/android/a/i/h;->b:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 34
    return-void
.end method
