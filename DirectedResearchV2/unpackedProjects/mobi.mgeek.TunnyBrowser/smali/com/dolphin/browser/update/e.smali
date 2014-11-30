.class public Lcom/dolphin/browser/update/e;
.super Ljava/lang/Object;
.source "UpdateInfoConfig.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/dolphin/browser/update/e;->a:Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Lcom/dolphin/browser/update/e;->a()V

    .line 29
    return-void
.end method

.method private e()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/update/e;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/update/e;->a:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/update/e;->b:Landroid/content/SharedPreferences;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/update/e;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Lcom/dolphin/browser/update/e;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    const-string v1, "notify_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/update/e;->c:I

    .line 41
    const-string v1, "has_update"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/update/e;->d:Z

    .line 42
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 49
    iput p1, p0, Lcom/dolphin/browser/update/e;->c:I

    .line 50
    invoke-direct {p0}, Lcom/dolphin/browser/update/e;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    const-string v1, "notify_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 53
    return-void
.end method

.method public a(J)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/dolphin/browser/update/e;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    const-string v1, "updateservice_main_last_updated_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 74
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/dolphin/browser/update/e;->d:Z

    .line 61
    invoke-direct {p0}, Lcom/dolphin/browser/update/e;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    const-string v1, "has_update"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 64
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/dolphin/browser/update/e;->c:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/dolphin/browser/update/e;->d:Z

    return v0
.end method

.method public d()J
    .locals 4

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/dolphin/browser/update/e;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "updateservice_main_last_updated_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
