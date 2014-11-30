.class public Lcom/facebook/orca/cache/DataCache;
.super Ljava/lang/Object;
.source "DataCache.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/auth/AuthenticationManager;

.field private final b:Lcom/facebook/orca/cache/ThreadsCache;

.field private final c:Lcom/facebook/orca/location/LocationCache;

.field private final d:Lcom/facebook/orca/cache/AppConfigCache;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/auth/AuthenticationManager;Lcom/facebook/orca/cache/ThreadsCache;Lcom/facebook/orca/location/LocationCache;Lcom/facebook/orca/cache/AppConfigCache;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/facebook/orca/cache/DataCache;->a:Lcom/facebook/orca/auth/AuthenticationManager;

    .line 44
    iput-object p2, p0, Lcom/facebook/orca/cache/DataCache;->b:Lcom/facebook/orca/cache/ThreadsCache;

    .line 45
    iput-object p3, p0, Lcom/facebook/orca/cache/DataCache;->c:Lcom/facebook/orca/location/LocationCache;

    .line 46
    iput-object p4, p0, Lcom/facebook/orca/cache/DataCache;->d:Lcom/facebook/orca/cache/AppConfigCache;

    .line 47
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->b:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->g(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->b:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->b:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/facebook/orca/location/LocationResult;J)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->b:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;Lcom/facebook/orca/location/LocationResult;J)V

    .line 232
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->b:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadsCache;->a()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->b:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->b:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->j(Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->b:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->b:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadsCache;->b()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->b:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->j(Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->q()Landroid/net/Uri;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->a:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->f()Lcom/facebook/orca/users/User;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->b:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->a:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->f()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->b:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/facebook/orca/threads/ThreadsCollection;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->b:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadsCache;->c()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->b:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadsCache;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public f(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->b:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->b:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()Lcom/facebook/orca/location/LocationResult;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->c:Lcom/facebook/orca/location/LocationCache;

    invoke-virtual {v0}, Lcom/facebook/orca/location/LocationCache;->a()Lcom/facebook/orca/location/LocationResult;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/facebook/orca/threads/FolderCounts;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->b:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadsCache;->d()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/facebook/orca/appconfig/AppConfig;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->d:Lcom/facebook/orca/cache/AppConfigCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/AppConfigCache;->a()Lcom/facebook/orca/appconfig/AppConfig;

    move-result-object v0

    return-object v0
.end method
