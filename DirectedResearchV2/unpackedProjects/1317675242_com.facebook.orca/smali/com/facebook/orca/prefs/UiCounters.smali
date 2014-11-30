.class public Lcom/facebook/orca/prefs/UiCounters;
.super Ljava/lang/Object;
.source "UiCounters.java"


# instance fields
.field private final a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/facebook/orca/prefs/UiCounters$Listener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/prefs/UiCounters;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/prefs/UiCounters;->b:Ljava/util/WeakHashMap;

    .line 30
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 128
    iget-object v0, p0, Lcom/facebook/orca/prefs/UiCounters;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/prefs/UiCounters$Listener;

    .line 129
    invoke-interface {p0, p1, p2}, Lcom/facebook/orca/prefs/UiCounters$Listener;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 134
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->I:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/prefs/PrefKey;

    .line 135
    if-eqz p2, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/prefs/PrefKey;

    move-object v0, p0

    .line 138
    :goto_0
    const-string v1, "/count"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/prefs/PrefKey;

    .line 139
    return-object p0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 143
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->I:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/prefs/PrefKey;

    .line 144
    if-eqz p2, :cond_0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/prefs/PrefKey;

    move-object v0, p0

    .line 147
    :goto_0
    const-string v1, "/timestamp"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/prefs/PrefKey;

    .line 148
    return-object p0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/prefs/UiCounters;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/facebook/orca/prefs/UiCounters;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;I)I

    move-result v0

    return v0
.end method

.method public a(Lcom/facebook/orca/prefs/UiCounters$Listener;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/orca/prefs/UiCounters;->b:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public b(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/prefs/UiCounters;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/prefs/UiCounters;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/facebook/orca/prefs/UiCounters;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/facebook/orca/prefs/UiCounters;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/prefs/UiCounters;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;I)V

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/prefs/UiCounters;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)V

    .line 96
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/prefs/UiCounters;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method
