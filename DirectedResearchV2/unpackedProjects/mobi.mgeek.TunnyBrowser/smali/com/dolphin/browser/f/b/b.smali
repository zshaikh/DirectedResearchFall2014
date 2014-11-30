.class public Lcom/dolphin/browser/f/b/b;
.super Ljava/lang/Object;
.source "NotificationStore.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/dolphin/browser/f/b/b;->a:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private c()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/dolphin/browser/f/b/b;->a:Landroid/content/Context;

    const-string v1, "WebAppNotifications"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/f/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/dolphin/browser/f/b/b;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notifications"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/f/b/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/f/b/b;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_modified"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 41
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/f/b/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/f/b/b;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "notifications"

    invoke-static {p1}, Lcom/dolphin/browser/f/b/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 31
    return-void
.end method

.method public b()J
    .locals 4

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dolphin/browser/f/b/b;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_modified"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
