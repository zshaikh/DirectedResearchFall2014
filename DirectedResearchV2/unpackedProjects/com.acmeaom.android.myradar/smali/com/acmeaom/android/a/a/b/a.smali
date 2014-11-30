.class public Lcom/acmeaom/android/a/a/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/acmeaom/android/a/a/b/a;->a:Ljava/lang/Object;

    .line 13
    iput-object p2, p0, Lcom/acmeaom/android/a/a/b/a;->b:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/acmeaom/android/a/a/b/a;->c:Ljava/util/HashMap;

    .line 15
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)Lcom/acmeaom/android/a/a/b/a;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/acmeaom/android/a/a/b/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/acmeaom/android/a/a/b/a;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V

    return-object v0
.end method
