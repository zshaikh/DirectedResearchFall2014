.class public Lmobi/mgeek/util/CrashReporter/o;
.super Ljava/lang/Object;
.source "DolphinWebkitBugReporter.java"


# static fields
.field private static a:Lmobi/mgeek/util/CrashReporter/o;


# instance fields
.field private b:Lmobi/mgeek/util/CrashReporter/d;

.field private c:Landroid/content/Context;

.field private d:Landroid/content/SharedPreferences;

.field private e:Ljava/text/SimpleDateFormat;

.field private f:Lcom/dolphin/browser/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/util/f",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/l;->b()Lmobi/mgeek/util/CrashReporter/d;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->b:Lmobi/mgeek/util/CrashReporter/d;

    .line 64
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->b:Lmobi/mgeek/util/CrashReporter/d;

    invoke-virtual {v0}, Lmobi/mgeek/util/CrashReporter/d;->k()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->c:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->c:Landroid/content/Context;

    const-string v1, "bugreport"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->d:Landroid/content/SharedPreferences;

    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->e:Ljava/text/SimpleDateFormat;

    .line 67
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/util/CrashReporter/o;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static a()Lmobi/mgeek/util/CrashReporter/o;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lmobi/mgeek/util/CrashReporter/o;->a:Lmobi/mgeek/util/CrashReporter/o;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lmobi/mgeek/util/CrashReporter/o;

    invoke-direct {v0}, Lmobi/mgeek/util/CrashReporter/o;-><init>()V

    sput-object v0, Lmobi/mgeek/util/CrashReporter/o;->a:Lmobi/mgeek/util/CrashReporter/o;

    .line 55
    :cond_0
    sget-object v0, Lmobi/mgeek/util/CrashReporter/o;->a:Lmobi/mgeek/util/CrashReporter/o;

    return-object v0
.end method

.method private a(J)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lrt"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/util/CrashReporter/o;J)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/util/CrashReporter/o;->a(J)V

    return-void
.end method

.method static synthetic a(Lmobi/mgeek/util/CrashReporter/o;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lmobi/mgeek/util/CrashReporter/o;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lmobi/mgeek/util/CrashReporter/o;)Lmobi/mgeek/util/CrashReporter/d;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->b:Lmobi/mgeek/util/CrashReporter/d;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->b:Lmobi/mgeek/util/CrashReporter/d;

    .line 219
    const/16 v1, 0x3e9

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/util/CrashReporter/d;->a(I[Ljava/lang/Object;)V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/util/CrashReporter/d;->a(J)V

    .line 221
    invoke-virtual {v0}, Lmobi/mgeek/util/CrashReporter/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->c:Landroid/content/Context;

    invoke-static {v0, v4, v4, p1, v3}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 224
    :cond_0
    return-void
.end method

.method static synthetic c(Lmobi/mgeek/util/CrashReporter/o;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->e:Ljava/text/SimpleDateFormat;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lmobi/mgeek/util/CrashReporter/q;

    invoke-direct {v0, p0, p1}, Lmobi/mgeek/util/CrashReporter/q;-><init>(Lmobi/mgeek/util/CrashReporter/o;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmobi/mgeek/util/CrashReporter/o;->a(Lmobi/mgeek/util/CrashReporter/t;)V

    .line 206
    return-void
.end method

.method public a(Lmobi/mgeek/util/CrashReporter/t;)V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->f:Lcom/dolphin/browser/util/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->f:Lcom/dolphin/browser/util/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/f;->e()Lcom/dolphin/browser/util/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    if-eq v0, v1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->c:Landroid/content/Context;

    const-string v1, "android.permission.READ_LOGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-string v1, "logcat -d -s -v time libc:F"

    .line 178
    const-string v0, "Fatal signal"

    .line 184
    :goto_1
    new-instance v2, Lmobi/mgeek/util/CrashReporter/p;

    invoke-direct {v2, p0, v1, v0, p1}, Lmobi/mgeek/util/CrashReporter/p;-><init>(Lmobi/mgeek/util/CrashReporter/o;Ljava/lang/String;Ljava/lang/String;Lmobi/mgeek/util/CrashReporter/t;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->f:Lcom/dolphin/browser/util/f;

    goto :goto_0

    .line 180
    :cond_1
    const-string v1, "logcat -d -v time DEBUG:I *:S"

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmobi/mgeek/util/CrashReporter/o;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " <<<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-direct {p0, p2}, Lmobi/mgeek/util/CrashReporter/o;->b(Ljava/lang/String;)V

    .line 212
    :cond_0
    return-void
.end method

.method public b()J
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->d:Landroid/content/SharedPreferences;

    const-string v1, "lrt"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->f:Lcom/dolphin/browser/util/f;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->f:Lcom/dolphin/browser/util/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/f;->b(Z)Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/o;->f:Lcom/dolphin/browser/util/f;

    .line 107
    :cond_0
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/u;->b()V

    .line 108
    return-void
.end method
