.class public Lcom/acmeaom/android/a/a/b/r;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/acmeaom/android/a/a/b/r;->a:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/acmeaom/android/a/a/b/r;->b:Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lcom/acmeaom/android/a/a/b/r;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/acmeaom/android/a/a/b/r;

    invoke-direct {v0, p0, p1}, Lcom/acmeaom/android/a/a/b/r;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
