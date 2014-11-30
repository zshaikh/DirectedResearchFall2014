.class public Lcom/acmeaom/android/a/i/j;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Lcom/acmeaom/android/a/i/j;


# instance fields
.field private b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/acmeaom/android/a/i/j;

    invoke-direct {v0}, Lcom/acmeaom/android/a/i/j;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/i/j;->a:Lcom/acmeaom/android/a/i/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/acmeaom/android/a/i/k;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/a/i/k;-><init>(Lcom/acmeaom/android/a/i/j;)V

    iput-object v0, p0, Lcom/acmeaom/android/a/i/j;->b:Ljava/util/HashMap;

    .line 14
    return-void
.end method

.method public static a()Lcom/acmeaom/android/a/i/j;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/acmeaom/android/a/i/j;->a:Lcom/acmeaom/android/a/i/j;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/acmeaom/android/a/i/t;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/acmeaom/android/a/i/j;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 26
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/i/t;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    :goto_0
    return-object v0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    .line 32
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :catch_1
    move-exception v0

    .line 30
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
