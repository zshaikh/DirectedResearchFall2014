.class public Lcom/facebook/orca/auth/AuthenticationManager;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final b:Lcom/facebook/orca/users/UserSerialization;

.field private c:Lcom/facebook/orca/users/User;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/users/UserSerialization;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/facebook/orca/auth/AuthenticationManager;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 32
    iput-object p2, p0, Lcom/facebook/orca/auth/AuthenticationManager;->b:Lcom/facebook/orca/users/UserSerialization;

    .line 33
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/auth/FacebookCredentials;
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 45
    iget-object v0, p0, Lcom/facebook/orca/auth/AuthenticationManager;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->c:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v1, v4}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/facebook/orca/auth/AuthenticationManager;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->d:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2, v5, v6}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v1

    .line 47
    if-eqz v0, :cond_0

    cmp-long v3, v1, v5

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v4

    .line 50
    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Lcom/facebook/orca/auth/FacebookCredentials;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/auth/FacebookCredentials;-><init>(Ljava/lang/String;J)V

    move-object v0, v3

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/auth/FacebookCredentials;)V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/auth/AuthenticationManager;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->c:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p1}, Lcom/facebook/orca/auth/FacebookCredentials;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->d:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p1}, Lcom/facebook/orca/auth/FacebookCredentials;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)V

    .line 40
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;)V

    .line 41
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 42
    return-void
.end method

.method public declared-synchronized a(Lcom/facebook/orca/users/User;)V
    .locals 3

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/auth/AuthenticationManager;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/facebook/orca/auth/AuthenticationManager;->b:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/User;)Ljava/lang/String;

    move-result-object v1

    .line 68
    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 70
    iput-object p1, p0, Lcom/facebook/orca/auth/AuthenticationManager;->c:Lcom/facebook/orca/users/User;

    .line 71
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v0

    const-string v1, "uid"

    iget-object v2, p0, Lcom/facebook/orca/auth/AuthenticationManager;->c:Lcom/facebook/orca/users/User;

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/facebook/orca/users/User;)V
    .locals 3

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/auth/AuthenticationManager;->c:Lcom/facebook/orca/users/User;

    if-eqz v0, :cond_3

    .line 76
    new-instance v0, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->n()Lcom/facebook/orca/common/util/TriState;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    if-ne v1, v2, :cond_0

    .line 78
    iget-object v1, p0, Lcom/facebook/orca/auth/AuthenticationManager;->c:Lcom/facebook/orca/users/User;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->v()Lcom/facebook/orca/common/util/TriState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/common/util/TriState;)Lcom/facebook/orca/users/UserBuilder;

    .line 80
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/facebook/orca/auth/AuthenticationManager;->c:Lcom/facebook/orca/users/User;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    .line 83
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/facebook/orca/auth/AuthenticationManager;->c:Lcom/facebook/orca/users/User;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/auth/AuthenticationManager;->c:Lcom/facebook/orca/users/User;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Z)V

    .line 87
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->p()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 89
    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/AuthenticationManager;->a(Lcom/facebook/orca/users/User;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/facebook/orca/auth/AuthenticationManager;->a()Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/facebook/orca/auth/AuthenticationManager;->f()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/facebook/orca/auth/AuthenticationManager;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/auth/AuthenticationManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized e()V
    .locals 2

    .prologue
    .line 93
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/orca/auth/AuthenticationManager;->c:Lcom/facebook/orca/users/User;

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/auth/AuthenticationManager;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;)V

    .line 96
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Lcom/facebook/orca/users/User;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/auth/AuthenticationManager;->c:Lcom/facebook/orca/users/User;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/auth/AuthenticationManager;->c:Lcom/facebook/orca/users/User;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :goto_0
    monitor-exit p0

    return-object v0

    .line 103
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/auth/AuthenticationManager;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    if-nez v0, :cond_1

    move-object v0, v3

    .line 105
    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/auth/AuthenticationManager;->b:Lcom/facebook/orca/users/UserSerialization;

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/AuthenticationManager;->c:Lcom/facebook/orca/users/User;

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/auth/AuthenticationManager;->c:Lcom/facebook/orca/users/User;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
