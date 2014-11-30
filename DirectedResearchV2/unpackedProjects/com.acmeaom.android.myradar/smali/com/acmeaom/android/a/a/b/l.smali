.class public Lcom/acmeaom/android/a/a/b/l;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Lcom/acmeaom/android/a/a/b/l;

.field private static final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/acmeaom/android/a/a/b/l;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/l;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/a/b/l;->a:Lcom/acmeaom/android/a/a/b/l;

    .line 10
    new-instance v0, Lcom/acmeaom/android/a/a/b/m;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/m;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/a/b/l;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/acmeaom/android/a/a/b/l;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static a()Lcom/acmeaom/android/a/a/b/l;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/acmeaom/android/a/a/b/l;->a:Lcom/acmeaom/android/a/a/b/l;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 28
    if-eqz p1, :cond_0

    sget-object v0, Lcom/acmeaom/android/a/a/b/l;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
