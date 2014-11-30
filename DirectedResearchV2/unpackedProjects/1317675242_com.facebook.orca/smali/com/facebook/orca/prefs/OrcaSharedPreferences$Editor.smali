.class public Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;
.super Ljava/lang/Object;
.source "OrcaSharedPreferences.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 1

    .prologue
    .line 167
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->b:Ljava/util/Map;

    .line 169
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-static {v1, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 2

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->b:Ljava/util/Map;

    invoke-static {}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;F)V
    .locals 2

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;I)V
    .locals 2

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;J)V
    .locals 2

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->b:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 204
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 205
    :cond_1
    :try_start_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 206
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 207
    :cond_2
    :try_start_2
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 208
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;I)V

    goto :goto_0

    .line 209
    :cond_3
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 210
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)V

    goto :goto_0

    .line 211
    :cond_4
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 212
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;Z)V
    .locals 2

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 4

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-static {v0, p1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/prefs/PrefKey;)Ljava/util/Set;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 198
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->b:Ljava/util/Map;

    invoke-static {}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 200
    :cond_0
    monitor-exit p0

    return-void
.end method
