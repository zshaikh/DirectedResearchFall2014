.class Lcom/google/android/gms/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ap;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/b/m;


# instance fields
.field private c:Lcom/google/android/gms/a/a/b;

.field private d:J

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/m;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/m;->e:Landroid/content/Context;

    return-void
.end method

.method private a()Lcom/google/android/gms/a/a/b;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/b/m;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/a/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/a/a/b;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/f; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/e; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "IllegalStateException getting Ad Id Info"

    invoke-static {v1}, Lcom/google/android/gms/b/n;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "GooglePlayServicesRepairableException getting Ad Id Info"

    invoke-static {v1}, Lcom/google/android/gms/b/n;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v1, "IOException getting Ad Id Info"

    invoke-static {v1}, Lcom/google/android/gms/b/n;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v1, "GooglePlayServicesNotAvailableException getting Ad Id Info"

    invoke-static {v1}, Lcom/google/android/gms/b/n;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_4
    move-exception v1

    const-string v1, "Unknown exception. Could not get the ad Id."

    invoke-static {v1}, Lcom/google/android/gms/b/n;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/b/ap;
    .locals 2

    sget-object v0, Lcom/google/android/gms/b/m;->b:Lcom/google/android/gms/b/m;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/b/m;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/b/m;->b:Lcom/google/android/gms/b/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/b/m;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/b/m;->b:Lcom/google/android/gms/b/m;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/b/m;->b:Lcom/google/android/gms/b/m;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/b/m;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/b/m;->a()Lcom/google/android/gms/a/a/b;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/b/m;->c:Lcom/google/android/gms/a/a/b;

    iput-wide v0, p0, Lcom/google/android/gms/b/m;->d:J

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/m;->c:Lcom/google/android/gms/a/a/b;

    if-eqz v0, :cond_3

    const-string v0, "&adid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/m;->c:Lcom/google/android/gms/a/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "&ate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/b/m;->c:Lcom/google/android/gms/a/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/a/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    goto :goto_0

    :cond_2
    const-string v0, "0"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
