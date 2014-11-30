.class public Lcom/a/b;
.super Ljava/lang/Object;
.source "UserConfig.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/a/b;->a:Ljava/lang/String;

    .line 18
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/a/b;->b:Ljava/lang/String;

    .line 19
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/a/b;->c:J

    .line 22
    iput-object p1, p0, Lcom/a/b;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/a/b;->b:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/a/b;
    .locals 6

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 46
    const-string v0, "com.belugaboost.analytics.BELUGA_APPID"

    invoke-static {p0, v0}, Lcom/a/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    const-string v0, "com.belugaboost.analytics.BELUGA_CHANNEL"

    invoke-static {p0, v0}, Lcom/a/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    const-string v0, "com.belugaboost.analytics.BELUGA_SESSION_INTERVAL"

    invoke-static {p0, v0}, Lcom/a/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Lcom/a/b;

    invoke-direct {v0, v2, v3}, Lcom/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    if-eqz v4, :cond_0

    .line 54
    :try_start_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/a/b;->a(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 58
    :goto_1
    const-string v2, "UserConfig"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/a/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 2

    .prologue
    .line 35
    const-wide/16 v0, 0x7530

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const-wide/32 v0, 0x493e0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 36
    iput-wide p1, p0, Lcom/a/b;->c:J

    .line 38
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/a/b;->c:J

    return-wide v0
.end method
