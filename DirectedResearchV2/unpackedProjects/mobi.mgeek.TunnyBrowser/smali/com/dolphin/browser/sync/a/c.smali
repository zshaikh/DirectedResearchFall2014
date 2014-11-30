.class Lcom/dolphin/browser/sync/a/c;
.super Ljava/lang/Object;
.source "SyncConfigImpl.java"

# interfaces
.implements Lcom/dolphin/browser/sync/a/a;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v3, :cond_1

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Keys must be a String array length of %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    if-ge v0, v3, :cond_3

    .line 29
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DefValues must be a String array length of %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sync/a/c;->c:Landroid/content/SharedPreferences;

    .line 34
    iput-object p1, p0, Lcom/dolphin/browser/sync/a/c;->a:[Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/dolphin/browser/sync/a/c;->b:[Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method protected a(I)J
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/sync/a/c;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/dolphin/browser/sync/a/c;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/dolphin/browser/sync/a/c;->b:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(IJ)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/sync/a/c;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/dolphin/browser/sync/a/c;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 83
    return-void
.end method

.method protected a(IZ)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/sync/a/c;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/dolphin/browser/sync/a/c;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 93
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/dolphin/browser/sync/a/c;->a(IJ)V

    .line 73
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/dolphin/browser/sync/a/c;->a(IZ)V

    .line 77
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sync/a/c;->b(I)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/a/c;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(I)Z
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/sync/a/c;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/dolphin/browser/sync/a/c;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/dolphin/browser/sync/a/c;->b:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/a/c;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/BrowserSettings;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/bt;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()V
    .locals 5

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/sync/a/c;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/dolphin/browser/sync/a/c;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 99
    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 102
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sync/a/c;->a(I)J

    move-result-wide v0

    return-wide v0
.end method
