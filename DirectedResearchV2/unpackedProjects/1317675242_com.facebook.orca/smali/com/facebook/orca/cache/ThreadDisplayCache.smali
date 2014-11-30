.class public Lcom/facebook/orca/cache/ThreadDisplayCache;
.super Ljava/lang/Object;
.source "ThreadDisplayCache.java"


# instance fields
.field private final a:Lcom/facebook/orca/cache/DataCache;

.field private final b:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/attachments/AttachmentDataFactory;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->a:Lcom/facebook/orca/cache/DataCache;

    .line 53
    iput-object p2, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->b:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 54
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->a(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->b(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->h()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->o()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 59
    return-void
.end method

.method private e(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;
    .locals 7

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2}, Lcom/facebook/orca/cache/DataCache;->d()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 102
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    .line 103
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v6}, Lcom/facebook/orca/cache/DataCache;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 112
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 116
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 117
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 121
    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 122
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 123
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    .line 125
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    .line 126
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 127
    iget-object v3, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 138
    :cond_4
    new-instance v0, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;-><init>(JLcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v0

    .line 129
    :cond_5
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    .line 130
    iget-object v4, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v4, v0}, Lcom/facebook/orca/cache/DataCache;->b(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v4

    .line 131
    if-eqz v4, :cond_6

    .line 132
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 133
    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/ThreadSummary;Z)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->b:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/threads/ThreadSummary;)Landroid/net/Uri;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 187
    :cond_0
    if-eqz p2, :cond_2

    .line 188
    invoke-virtual {p0, p1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->c(Lcom/facebook/orca/threads/ThreadSummary;)I

    move-result v0

    .line 189
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 190
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 191
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DataCache;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 193
    invoke-virtual {p0, p1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->d(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DataCache;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 221
    if-nez p1, :cond_0

    move-object v0, v2

    .line 232
    :goto_0
    return-object v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/DataCache;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {p0, v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->d(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 232
    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;

    .line 73
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;->a(Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->e(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_1
    invoke-static {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;->b(Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 63
    return-void
.end method

.method public b(Lcom/facebook/orca/threads/ThreadSummary;Z)I
    .locals 3

    .prologue
    const v2, 0x7f020073

    .line 209
    if-eqz p2, :cond_1

    .line 210
    invoke-virtual {p0, p1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->c(Lcom/facebook/orca/threads/ThreadSummary;)I

    move-result v0

    .line 211
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    .line 217
    :goto_0
    return v0

    .line 213
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    move v0, v2

    .line 214
    goto :goto_0

    .line 217
    :cond_1
    const v0, 0x7f020037

    goto :goto_0
.end method

.method public b(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;

    .line 88
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;->a(Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->e(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_1
    invoke-static {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;->c(Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/facebook/orca/threads/ThreadSummary;)I
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public d(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->c()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 167
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, p0

    .line 172
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/ThreadParticipant;

    move-object v0, p0

    goto :goto_0
.end method
