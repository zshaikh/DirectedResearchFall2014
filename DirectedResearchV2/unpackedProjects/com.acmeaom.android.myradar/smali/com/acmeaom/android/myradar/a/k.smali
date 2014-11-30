.class public Lcom/acmeaom/android/myradar/a/k;
.super Lcom/android/vending/billing/q;
.source "ProGuard"


# static fields
.field private static final a:[B

.field private static b:Lcom/google/android/b/a/a;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/acmeaom/android/myradar/a/k;->a:[B

    return-void

    :array_0
    .array-data 1
        0x47t
        0x5ct
        -0x7et
        0x4dt
        -0x2dt
        -0xdt
        -0x16t
        -0x75t
        0x1bt
        -0x63t
        -0x1ct
        0x1dt
        0x78t
        -0xft
        0x13t
        -0x21t
        -0x34t
        -0x14t
        0x2ct
        -0x22t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/vending/billing/q;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;[B)Lcom/google/android/b/a/a;
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lcom/acmeaom/android/myradar/a/k;->b:Lcom/google/android/b/a/a;

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/acmeaom/android/myradar/a/k;->c:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/google/android/b/a/a;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/acmeaom/android/myradar/a/k;->c:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/b/a/a;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/acmeaom/android/myradar/a/k;->b:Lcom/google/android/b/a/a;

    .line 28
    :cond_0
    sget-object v0, Lcom/acmeaom/android/myradar/a/k;->b:Lcom/google/android/b/a/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/acmeaom/android/myradar/a/k;->a:[B

    invoke-static {p0, v0}, Lcom/acmeaom/android/myradar/a/k;->a(Landroid/content/Context;[B)Lcom/google/android/b/a/a;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/acmeaom/android/myradar/a/k;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcom/acmeaom/android/myradar/a/k;->a:[B

    invoke-static {p0, v0}, Lcom/acmeaom/android/myradar/a/k;->a(Landroid/content/Context;[B)Lcom/google/android/b/a/a;

    move-result-object v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/acmeaom/android/myradar/a/k;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid obfuscated data or key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/b/a/b;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->d(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    goto :goto_0
.end method
