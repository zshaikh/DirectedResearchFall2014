.class public Lcom/dolphin/browser/bookmark/bq;
.super Ljava/util/Observable;
.source "BookmarkSettings.java"


# static fields
.field private static a:Lcom/dolphin/browser/bookmark/bq;


# instance fields
.field private b:Landroid/content/Context;

.field private c:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dolphin/browser/bookmark/bq;->c:J

    .line 23
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/bq;->b:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static a()Lcom/dolphin/browser/bookmark/bq;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/dolphin/browser/bookmark/bq;->a:Lcom/dolphin/browser/bookmark/bq;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/dolphin/browser/bookmark/bq;

    invoke-direct {v0}, Lcom/dolphin/browser/bookmark/bq;-><init>()V

    sput-object v0, Lcom/dolphin/browser/bookmark/bq;->a:Lcom/dolphin/browser/bookmark/bq;

    .line 30
    :cond_0
    sget-object v0, Lcom/dolphin/browser/bookmark/bq;->a:Lcom/dolphin/browser/bookmark/bq;

    return-object v0
.end method

.method private e()V
    .locals 0

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bq;->setChanged()V

    .line 65
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bq;->notifyObservers()V

    .line 66
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 55
    iput-wide p2, p0, Lcom/dolphin/browser/bookmark/bq;->c:J

    .line 56
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    const-string v1, "last_opened_folder_id"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 60
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/bq;->e()V

    .line 61
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bq;->b:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    const-string v1, "last_opened_folder_id"

    iget-wide v2, p0, Lcom/dolphin/browser/bookmark/bq;->c:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/bookmark/bq;->c:J

    .line 36
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/bq;->c:J

    return-wide v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/bq;->e()V

    .line 70
    return-void
.end method
