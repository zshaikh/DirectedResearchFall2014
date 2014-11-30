.class public Lcom/acmeaom/android/a/i/e;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static b:Lcom/acmeaom/android/a/i/e;


# instance fields
.field public a:Lcom/acmeaom/android/a/i/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/acmeaom/android/a/i/e;

    invoke-direct {v0}, Lcom/acmeaom/android/a/i/e;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/i/e;->b:Lcom/acmeaom/android/a/i/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/acmeaom/android/a/i/e;
    .locals 2

    .prologue
    .line 10
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    sget-object v0, Lcom/acmeaom/android/a/i/e;->b:Lcom/acmeaom/android/a/i/e;

    sget-object v1, Lcom/acmeaom/android/a/i/p;->b:Lcom/acmeaom/android/a/i/p;

    iput-object v1, v0, Lcom/acmeaom/android/a/i/e;->a:Lcom/acmeaom/android/a/i/p;

    .line 15
    :goto_0
    sget-object v0, Lcom/acmeaom/android/a/i/e;->b:Lcom/acmeaom/android/a/i/e;

    return-object v0

    .line 13
    :cond_0
    sget-object v0, Lcom/acmeaom/android/a/i/e;->b:Lcom/acmeaom/android/a/i/e;

    sget-object v1, Lcom/acmeaom/android/a/i/p;->a:Lcom/acmeaom/android/a/i/p;

    iput-object v1, v0, Lcom/acmeaom/android/a/i/e;->a:Lcom/acmeaom/android/a/i/p;

    goto :goto_0
.end method
