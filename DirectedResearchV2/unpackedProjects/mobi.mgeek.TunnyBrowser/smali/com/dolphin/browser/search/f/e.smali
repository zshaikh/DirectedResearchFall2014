.class public Lcom/dolphin/browser/search/f/e;
.super Ljava/lang/Object;
.source "SearchUpgradeManager.java"


# instance fields
.field private a:Lcom/dolphin/browser/search/f/h;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/dolphin/browser/search/f/h;->a()Lcom/dolphin/browser/search/f/h;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/f/e;->a:Lcom/dolphin/browser/search/f/h;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/search/f/f;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/dolphin/browser/search/f/e;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/search/f/e;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/dolphin/browser/search/f/g;->a()Lcom/dolphin/browser/search/f/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 71
    invoke-static {p1}, Lcom/dolphin/browser/search/h;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 76
    const-string v0, "tr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/dolphin/browser/search/f/e;->a:Lcom/dolphin/browser/search/f/h;

    const-string v2, "bookmark"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/f/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    .line 84
    :cond_0
    new-instance v1, Lcom/dolphin/browser/search/f/a;

    invoke-direct {v1}, Lcom/dolphin/browser/search/f/a;-><init>()V

    .line 85
    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/f/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lcom/dolphin/browser/search/f/e;->a:Lcom/dolphin/browser/search/f/h;

    const-string v2, "speed_dial"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/f/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    .line 95
    :cond_0
    new-instance v1, Lcom/dolphin/browser/search/f/i;

    invoke-direct {v1}, Lcom/dolphin/browser/search/f/i;-><init>()V

    .line 96
    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/f/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 103
    iget-object v1, p0, Lcom/dolphin/browser/search/f/e;->a:Lcom/dolphin/browser/search/f/h;

    const-string v2, "history"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/f/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    .line 106
    :cond_0
    new-instance v1, Lcom/dolphin/browser/search/f/c;

    invoke-direct {v1}, Lcom/dolphin/browser/search/f/c;-><init>()V

    .line 107
    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/f/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private f()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/dolphin/browser/search/f/e;->a:Lcom/dolphin/browser/search/f/h;

    const-string v2, "gesture"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/f/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    .line 117
    :cond_0
    new-instance v1, Lcom/dolphin/browser/search/f/b;

    invoke-direct {v1}, Lcom/dolphin/browser/search/f/b;-><init>()V

    .line 118
    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/f/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private g()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/dolphin/browser/search/f/e;->a:Lcom/dolphin/browser/search/f/h;

    const-string v2, "home_page"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/f/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    .line 128
    :cond_0
    new-instance v1, Lcom/dolphin/browser/search/f/d;

    invoke-direct {v1}, Lcom/dolphin/browser/search/f/d;-><init>()V

    .line 129
    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/f/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/search/f/e;->a:Lcom/dolphin/browser/search/f/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/f/h;->b()V

    .line 34
    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/search/f/e;->a:Lcom/dolphin/browser/search/f/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/f/h;->d()V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/f/e;->a:Lcom/dolphin/browser/search/f/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/f/h;->e()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/search/f/e;->a:Lcom/dolphin/browser/search/f/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/f/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/search/f/e;->a:Lcom/dolphin/browser/search/f/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/f/h;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/bn;->c()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/f/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/f/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/search/c/c;->a()Lcom/dolphin/browser/search/c/c;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/dolphin/browser/search/c/c;->d()Ljava/util/Set;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/dolphin/browser/search/f/e;->c()Z

    move-result v0

    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/search/f/e;->d()Z

    move-result v1

    and-int/2addr v0, v1

    .line 60
    invoke-direct {p0}, Lcom/dolphin/browser/search/f/e;->e()Z

    move-result v1

    and-int/2addr v0, v1

    .line 61
    invoke-direct {p0}, Lcom/dolphin/browser/search/f/e;->f()Z

    move-result v1

    and-int/2addr v0, v1

    .line 62
    invoke-direct {p0}, Lcom/dolphin/browser/search/f/e;->g()Z

    move-result v1

    and-int/2addr v0, v1

    .line 64
    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/search/f/e;->a:Lcom/dolphin/browser/search/f/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/f/h;->g()V

    goto :goto_0
.end method
