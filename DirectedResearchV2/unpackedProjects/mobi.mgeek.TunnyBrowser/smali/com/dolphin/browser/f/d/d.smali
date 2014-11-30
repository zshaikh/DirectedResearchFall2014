.class public Lcom/dolphin/browser/f/d/d;
.super Ljava/lang/Object;
.source "TopSitesManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/f/d/d;


# instance fields
.field private b:Lcom/dolphin/browser/f/d/g;

.field private c:Lcom/dolphin/browser/f/d/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/f/d/d;->a:Lcom/dolphin/browser/f/d/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/dolphin/browser/f/d/g;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/f/d/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/f/d/d;->b:Lcom/dolphin/browser/f/d/g;

    .line 37
    return-void
.end method

.method public static a()Lcom/dolphin/browser/f/d/d;
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcom/dolphin/browser/f/d/d;->a:Lcom/dolphin/browser/f/d/d;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/dolphin/browser/f/d/d;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/f/d/d;->a:Lcom/dolphin/browser/f/d/d;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/dolphin/browser/f/d/d;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dolphin/browser/f/d/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/f/d/d;->a:Lcom/dolphin/browser/f/d/d;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/dolphin/browser/f/d/d;->a:Lcom/dolphin/browser/f/d/d;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/dolphin/browser/f/d/d;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/dolphin/browser/f/d/d;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/dolphin/browser/f/d/a;->a()Lcom/dolphin/browser/f/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/f/d/d;->b:Lcom/dolphin/browser/f/d/g;

    invoke-virtual {v1}, Lcom/dolphin/browser/f/d/g;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/f/d/a;->a(J)Lcom/dolphin/browser/f/d/c;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/dolphin/browser/f/d/d;->b:Lcom/dolphin/browser/f/d/g;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/f/d/g;->a(Lcom/dolphin/browser/f/d/c;)V

    .line 86
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/dolphin/browser/f/d/b;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/f/d/d;->b:Lcom/dolphin/browser/f/d/g;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/f/d/g;->a(Ljava/lang/String;)Lcom/dolphin/browser/f/d/b;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 41
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "topsite.json"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/dolphin/browser/f/d/c;

    invoke-direct {v0}, Lcom/dolphin/browser/f/d/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/d/c;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/f/d/c;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/dolphin/browser/f/d/d;->b:Lcom/dolphin/browser/f/d/g;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/f/d/g;->a(Lcom/dolphin/browser/f/d/c;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 48
    :catch_1
    move-exception v0

    .line 49
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/f/d/d;->c:Lcom/dolphin/browser/f/d/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/f/d/d;->c:Lcom/dolphin/browser/f/d/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/d/f;->e()Lcom/dolphin/browser/util/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    new-instance v0, Lcom/dolphin/browser/f/d/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/f/d/f;-><init>(Lcom/dolphin/browser/f/d/d;Lcom/dolphin/browser/f/d/e;)V

    iput-object v0, p0, Lcom/dolphin/browser/f/d/d;->c:Lcom/dolphin/browser/f/d/f;

    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/f/d/d;->c:Lcom/dolphin/browser/f/d/f;

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 60
    :cond_1
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/f/d/d;->b:Lcom/dolphin/browser/f/d/g;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/f/d/g;->a(J)V

    .line 94
    return-void
.end method
