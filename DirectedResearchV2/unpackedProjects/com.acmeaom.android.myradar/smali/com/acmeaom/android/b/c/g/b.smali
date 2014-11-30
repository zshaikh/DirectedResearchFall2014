.class public Lcom/acmeaom/android/b/c/g/b;
.super Lcom/acmeaom/android/a/a/b/ac;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/acmeaom/android/a/a/b/ac;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/b/e/a/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 27
    invoke-direct {p0}, Lcom/acmeaom/android/a/a/b/ac;-><init>()V

    .line 28
    if-nez p1, :cond_0

    .line 29
    const-string v0, "Can not create hurricane element with feature == %@"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/acmeaom/android/b/e/a/a;->b()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "id"

    invoke-direct {p0, v0, v1}, Lcom/acmeaom/android/b/c/g/b;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 35
    const-string v1, "Can not create hurricane element with id: %@ from info: %@"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 40
    :cond_1
    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/b;->a:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    if-nez v0, :cond_0

    .line 49
    const-string v0, ""

    .line 52
    :cond_0
    return-object v0
.end method
