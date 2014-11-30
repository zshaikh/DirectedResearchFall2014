.class public Lcom/dolphin/browser/analytics/a;
.super Ljava/lang/Object;
.source "ActivationAnalysisManager.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/dolphin/browser/analytics/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/dolphin/browser/analytics/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/analytics/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static a()Lcom/dolphin/browser/analytics/a;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/dolphin/browser/analytics/d;->a()Lcom/dolphin/browser/analytics/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 61
    invoke-static {}, Lcom/dolphin/browser/analytics/e;->e()Lcom/dolphin/browser/analytics/e;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/dolphin/browser/analytics/e;->f()Ljava/lang/String;

    .line 63
    invoke-virtual {v0}, Lcom/dolphin/browser/analytics/e;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/analytics/e;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    .line 68
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0242

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/dolphin/AppActivator;->activateAppAsync(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lcom/dolphin/browser/analytics/e;->a()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v0}, Lcom/dolphin/browser/analytics/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 71
    sget-object v2, Lcom/dolphin/browser/analytics/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from referrer: source=%s, campaign=%s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 72
    const-string v2, "%s||%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v1, "promotion"

    sget-object v2, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v1, p0, v0, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "activate"

    invoke-static {v0}, Lcom/dolphin/browser/analytics/a;->a(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "install"

    invoke-static {v0}, Lcom/dolphin/browser/analytics/a;->a(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/dolphin/browser/analytics/a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/analytics/a;->b:Lcom/dolphin/browser/analytics/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/analytics/a;->b:Lcom/dolphin/browser/analytics/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/analytics/c;->e()Lcom/dolphin/browser/util/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    new-instance v0, Lcom/dolphin/browser/analytics/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/analytics/c;-><init>(Lcom/dolphin/browser/analytics/a;Lcom/dolphin/browser/analytics/b;)V

    iput-object v0, p0, Lcom/dolphin/browser/analytics/a;->b:Lcom/dolphin/browser/analytics/c;

    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/analytics/a;->b:Lcom/dolphin/browser/analytics/c;

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 85
    :cond_1
    return-void
.end method
