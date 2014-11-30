.class public abstract Lcom/acmeaom/android/a/g/v;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static final a:Lcom/android/a/s;

.field protected static final b:Lcom/android/a/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "volley"

    invoke-static {v0}, Lcom/acmeaom/android/a/g/v;->b(Ljava/lang/String;)Lcom/android/a/s;

    move-result-object v0

    sput-object v0, Lcom/acmeaom/android/a/g/v;->b:Lcom/android/a/s;

    .line 31
    const-string v0, "volley-radar"

    sget-object v1, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/g/v;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/a/g/v;->a(Ljava/io/File;)V

    .line 32
    const-string v0, "volley-radar"

    invoke-static {v0}, Lcom/acmeaom/android/a/g/v;->b(Ljava/lang/String;)Lcom/android/a/s;

    move-result-object v0

    sput-object v0, Lcom/acmeaom/android/a/g/v;->a:Lcom/android/a/s;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/android/a/p;)V
    .locals 1

    .prologue
    .line 101
    invoke-static {p0}, Lcom/acmeaom/android/a/g/v;->b(Lcom/android/a/p;)Lcom/android/a/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/a/s;->a(Lcom/android/a/p;)Lcom/android/a/p;

    .line 102
    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 37
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 40
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    sget-object v1, Lcom/acmeaom/android/a/g/v;->b:Lcom/android/a/s;

    invoke-virtual {v1}, Lcom/android/a/s;->d()Lcom/android/a/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/a/b;->b(Ljava/lang/String;)V

    .line 85
    sget-object v1, Lcom/acmeaom/android/a/g/v;->a:Lcom/android/a/s;

    invoke-virtual {v1}, Lcom/android/a/s;->d()Lcom/android/a/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/a/b;->b(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private static b(Lcom/android/a/p;)Lcom/android/a/s;
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/a/p;->g()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, ".*(\\Qmesonet.agron.iastate.edu/cache/tile.py/1.0.0/nexrad-n0r-900913^i\\E|\\Qhdradcache.acmeaom.com/r\\E).*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/acmeaom/android/a/g/v;->a:Lcom/android/a/s;

    .line 96
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/acmeaom/android/a/g/v;->b:Lcom/android/a/s;

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Lcom/android/a/s;
    .locals 5

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating volley cache for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 48
    sget-object v2, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    .line 50
    const-string v0, "volley/0"

    .line 52
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v1, v3, :cond_1

    .line 60
    new-instance v0, Lcom/android/a/a/l;

    invoke-direct {v0}, Lcom/android/a/a/l;-><init>()V

    .line 67
    :goto_1
    invoke-static {p0, v2}, Lcom/acmeaom/android/a/g/v;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_0

    array-length v2, v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_0

    .line 70
    invoke-static {v1}, Lcom/acmeaom/android/a/g/v;->a(Ljava/io/File;)V

    .line 72
    :cond_0
    new-instance v2, Lcom/android/a/a/d;

    invoke-direct {v2, v1}, Lcom/android/a/a/d;-><init>(Ljava/io/File;)V

    .line 73
    new-instance v1, Lcom/android/a/s;

    new-instance v3, Lcom/android/a/a/a;

    invoke-direct {v3, v0}, Lcom/android/a/a/a;-><init>(Lcom/android/a/a/k;)V

    invoke-direct {v1, v2, v3}, Lcom/android/a/s;-><init>(Lcom/android/a/b;Lcom/android/a/j;)V

    .line 74
    invoke-virtual {v1}, Lcom/android/a/s;->a()V

    .line 75
    return-object v1

    .line 64
    :cond_1
    new-instance v1, Lcom/android/a/a/h;

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/a/a/h;-><init>(Lorg/apache/http/client/HttpClient;)V

    move-object v0, v1

    goto :goto_1

    .line 55
    :catch_0
    move-exception v1

    goto :goto_0
.end method
