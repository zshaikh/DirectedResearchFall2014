.class Lcom/dolphin/browser/push/i;
.super Ljava/lang/Object;
.source "LogoutManager.java"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/Network/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/push/i;->a:Ljava/util/HashMap;

    .line 57
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "push_logout_request"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/core/AppContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/push/i;->b:Landroid/content/SharedPreferences;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/push/i;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dolphin/browser/push/i;->b()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/push/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dolphin/browser/push/i;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/i;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 105
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/push/i;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    const-string v3, "_retry_count"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/dolphin/browser/push/i;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/dolphin/browser/push/l;)V

    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/push/i;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_retry_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 112
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_retry_count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/dolphin/browser/push/i;->b:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 117
    add-int/lit8 v1, v1, 0x1

    .line 118
    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/push/i;->a(Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/push/i;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/dolphin/browser/push/j;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/push/j;-><init>(Lcom/dolphin/browser/push/i;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->b:Lcom/dolphin/browser/util/t;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Ljava/lang/Runnable;Lcom/dolphin/browser/util/t;)V

    .line 132
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/push/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/Network/d;

    .line 78
    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Lcom/dolphin/browser/push/aw;->c()Lcom/dolphin/browser/push/aw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/push/aw;->b(Lcom/dolphin/browser/Network/d;)V

    .line 81
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/push/i;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;ZLcom/dolphin/browser/push/l;)V
    .locals 3

    .prologue
    .line 86
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    if-eqz p3, :cond_2

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/push/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_2
    new-instance v0, Lcom/dolphin/browser/push/data/f;

    invoke-direct {v0}, Lcom/dolphin/browser/push/data/f;-><init>()V

    invoke-virtual {v0, p2, p1, p3}, Lcom/dolphin/browser/push/data/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/dolphin/browser/Network/d;

    move-result-object v1

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/push/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/Network/d;

    .line 95
    if-eqz v0, :cond_3

    .line 96
    invoke-static {}, Lcom/dolphin/browser/push/aw;->c()Lcom/dolphin/browser/push/aw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/push/aw;->b(Lcom/dolphin/browser/Network/d;)V

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/push/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {}, Lcom/dolphin/browser/push/aw;->c()Lcom/dolphin/browser/push/aw;

    move-result-object v0

    new-instance v2, Lcom/dolphin/browser/push/k;

    invoke-direct {v2, p0, p1, p3, p4}, Lcom/dolphin/browser/push/k;-><init>(Lcom/dolphin/browser/push/i;Ljava/lang/String;ZLcom/dolphin/browser/push/l;)V

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/push/aw;->a(Lcom/dolphin/browser/Network/d;Lcom/dolphin/browser/push/ax;)V

    goto :goto_0
.end method
