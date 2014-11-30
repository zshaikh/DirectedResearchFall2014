.class public Lcom/acmeaom/android/a/a/e/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic e:Z


# instance fields
.field public final a:Lcom/acmeaom/android/a/a/e/c;

.field public final b:Lcom/acmeaom/android/a/a/b/c;

.field public final c:Lcom/acmeaom/android/a/a/c/i;

.field public final d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/acmeaom/android/a/a/e/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/acmeaom/android/a/a/e/b;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/acmeaom/android/a/a/e/c;Lcom/acmeaom/android/a/a/b/c;Lcom/acmeaom/android/a/a/c/i;Ljava/util/HashMap;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-boolean v0, Lcom/acmeaom/android/a/a/e/b;->e:Z

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_0
    sget-boolean v0, Lcom/acmeaom/android/a/a/e/b;->e:Z

    if-nez v0, :cond_1

    invoke-static {v1, v1}, Lcom/acmeaom/android/a/a/b/c;->a(II)Lcom/acmeaom/android/a/a/b/c;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/acmeaom/android/a/a/b/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 20
    :cond_1
    iput-object p1, p0, Lcom/acmeaom/android/a/a/e/b;->a:Lcom/acmeaom/android/a/a/e/c;

    .line 21
    iput-object p2, p0, Lcom/acmeaom/android/a/a/e/b;->b:Lcom/acmeaom/android/a/a/b/c;

    .line 22
    iput-object p3, p0, Lcom/acmeaom/android/a/a/e/b;->c:Lcom/acmeaom/android/a/a/c/i;

    .line 23
    iput-object p4, p0, Lcom/acmeaom/android/a/a/e/b;->d:Ljava/util/HashMap;

    .line 24
    return-void
.end method

.method public static a(Lcom/acmeaom/android/a/a/e/c;Lcom/acmeaom/android/a/a/b/c;Lcom/acmeaom/android/a/a/c/i;Ljava/util/HashMap;)Lcom/acmeaom/android/a/a/e/b;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/acmeaom/android/a/a/e/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/acmeaom/android/a/a/e/b;-><init>(Lcom/acmeaom/android/a/a/e/c;Lcom/acmeaom/android/a/a/b/c;Lcom/acmeaom/android/a/a/c/i;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/e/b;Lcom/acmeaom/android/a/a/c/d;)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p1, p0}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/e/b;)V

    .line 36
    return-void
.end method
