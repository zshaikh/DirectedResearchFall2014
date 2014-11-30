.class public Lcom/acmeaom/android/a/a/b/ah;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/acmeaom/android/a/a/b/ah;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/acmeaom/android/a/a/b/af;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/af;->a()I

    move-result v0

    .line 30
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/af;->b()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 51
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 52
    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/acmeaom/android/a/a/b/aa;

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    check-cast v0, Lcom/acmeaom/android/a/a/b/aa;

    iget-object v0, v0, Lcom/acmeaom/android/a/a/b/aa;->a:Ljava/lang/Number;

    :goto_1
    aput-object v0, v2, v1

    .line 51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 52
    :cond_0
    aget-object v0, p1, v1

    goto :goto_1

    .line 55
    :cond_1
    const-string v0, "%@"

    const-string v1, "%s"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/acmeaom/android/a/a/b/aa;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/acmeaom/android/a/a/b/aa;

    iget-object v1, p0, Lcom/acmeaom/android/a/a/b/ah;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/b/aa;-><init>(Ljava/lang/Float;)V

    return-object v0
.end method
