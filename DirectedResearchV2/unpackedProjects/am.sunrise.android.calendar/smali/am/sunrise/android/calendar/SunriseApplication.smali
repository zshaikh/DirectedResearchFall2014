.class public Lam/sunrise/android/calendar/SunriseApplication;
.super Lam/sunrise/android/calendar/a;
.source "SunriseApplication.java"


# static fields
.field private static a:Lam/sunrise/android/calendar/SunriseApplication;

.field private static b:Lcom/google/android/gms/b/g;

.field private static c:Ljava/lang/Object;

.field private static d:Lcom/b/a/ae;

.field private static f:Ljava/lang/Object;

.field private static volatile g:Z


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    sput-object v1, Lam/sunrise/android/calendar/SunriseApplication;->a:Lam/sunrise/android/calendar/SunriseApplication;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lam/sunrise/android/calendar/SunriseApplication;->c:Ljava/lang/Object;

    .line 46
    sput-object v1, Lam/sunrise/android/calendar/SunriseApplication;->d:Lcom/b/a/ae;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lam/sunrise/android/calendar/SunriseApplication;->f:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lam/sunrise/android/calendar/SunriseApplication;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lam/sunrise/android/calendar/a;-><init>()V

    .line 350
    return-void
.end method

.method public static a()Lam/sunrise/android/calendar/SunriseApplication;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lam/sunrise/android/calendar/SunriseApplication;->a:Lam/sunrise/android/calendar/SunriseApplication;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 58
    sget-object v1, Lam/sunrise/android/calendar/SunriseApplication;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-boolean v0, Lam/sunrise/android/calendar/SunriseApplication;->g:Z

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lam/sunrise/android/calendar/SunriseApplication;->g:Z

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a/d;->a(Landroid/content/Context;)V

    .line 63
    :cond_0
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 182
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 184
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 185
    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lam/sunrise/android/calendar/SunriseApplication;->a(Ljava/io/File;)Z

    move-result v3

    .line 186
    if-nez v3, :cond_0

    .line 191
    :goto_1
    return v1

    .line 184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_1
.end method

.method public static b()Lcom/b/a/ae;
    .locals 2

    .prologue
    .line 134
    sget-object v1, Lam/sunrise/android/calendar/SunriseApplication;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-object v0, Lam/sunrise/android/calendar/SunriseApplication;->d:Lcom/b/a/ae;

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->e()V

    .line 138
    :cond_0
    sget-object v0, Lam/sunrise/android/calendar/SunriseApplication;->d:Lcom/b/a/ae;

    monitor-exit v1

    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/io/File;

    const-string v2, "picasso-cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 174
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 175
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lam/sunrise/android/calendar/SunriseApplication;->a(Ljava/io/File;)Z

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 179
    return-void
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 143
    sget-object v1, Lam/sunrise/android/calendar/SunriseApplication;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    sget-object v0, Lam/sunrise/android/calendar/SunriseApplication;->d:Lcom/b/a/ae;

    invoke-virtual {v0}, Lcom/b/a/ae;->a()V

    .line 145
    sget-object v0, Lam/sunrise/android/calendar/SunriseApplication;->a:Lam/sunrise/android/calendar/SunriseApplication;

    invoke-static {v0}, Lam/sunrise/android/calendar/SunriseApplication;->b(Landroid/content/Context;)V

    .line 146
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->e()V

    .line 147
    monitor-exit v1

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static e()V
    .locals 3

    .prologue
    .line 151
    new-instance v0, Lcom/b/a/ag;

    sget-object v1, Lam/sunrise/android/calendar/SunriseApplication;->a:Lam/sunrise/android/calendar/SunriseApplication;

    invoke-direct {v0, v1}, Lcom/b/a/ag;-><init>(Landroid/content/Context;)V

    .line 157
    new-instance v1, Lam/sunrise/android/calendar/i;

    sget-object v2, Lam/sunrise/android/calendar/SunriseApplication;->a:Lam/sunrise/android/calendar/SunriseApplication;

    invoke-direct {v1, v2}, Lam/sunrise/android/calendar/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/b/a/ag;->a(Lcom/b/a/t;)Lcom/b/a/ag;

    .line 158
    invoke-virtual {v0}, Lcom/b/a/ag;->a()Lcom/b/a/ae;

    move-result-object v0

    sput-object v0, Lam/sunrise/android/calendar/SunriseApplication;->d:Lcom/b/a/ae;

    .line 159
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lam/sunrise/android/calendar/SunriseApplication;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/SunriseApplication;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lam/sunrise/android/calendar/a;->onCreate()V

    .line 69
    sput-object p0, Lam/sunrise/android/calendar/SunriseApplication;->a:Lam/sunrise/android/calendar/SunriseApplication;

    .line 71
    invoke-static {p0}, Lam/sunrise/android/calendar/analytics/f;->a(Landroid/content/Context;)V

    .line 73
    invoke-static {p0}, Lcom/google/android/gms/b/a;->a(Landroid/content/Context;)Lcom/google/android/gms/b/a;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p0}, Lcom/google/android/gms/b/a;->a(Landroid/app/Application;)V

    .line 75
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/a;->a(I)V

    .line 118
    const-string v1, "UA-38171425-5"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/a;->a(Ljava/lang/String;)Lcom/google/android/gms/b/g;

    move-result-object v0

    sput-object v0, Lam/sunrise/android/calendar/SunriseApplication;->b:Lcom/google/android/gms/b/g;

    .line 119
    sget-object v0, Lam/sunrise/android/calendar/SunriseApplication;->b:Lcom/google/android/gms/b/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/g;->a(Z)V

    .line 121
    invoke-static {p0}, Lam/sunrise/android/calendar/SunriseApplication;->a(Landroid/content/Context;)V

    .line 123
    new-instance v0, Lam/sunrise/android/calendar/h;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/h;-><init>(Lam/sunrise/android/calendar/SunriseApplication;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/h;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 126
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    .line 127
    return-void
.end method
