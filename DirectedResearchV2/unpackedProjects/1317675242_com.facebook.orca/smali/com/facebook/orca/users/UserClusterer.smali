.class public Lcom/facebook/orca/users/UserClusterer;
.super Ljava/lang/Object;
.source "UserClusterer.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/UserClusterBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/User;",
            "Lcom/facebook/orca/users/UserClusterBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserClusterer;->e:Ljava/util/Set;

    return-void
.end method

.method private a(Lcom/facebook/orca/users/User;)V
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(I)Ljava/util/HashSet;

    move-result-object v0

    .line 107
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/users/UserClusterer;->a(Lcom/facebook/orca/users/User;Ljava/util/Set;I)V

    .line 108
    invoke-direct {p0, v0}, Lcom/facebook/orca/users/UserClusterer;->b(Ljava/util/Collection;)V

    .line 109
    return-void
.end method

.method private a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserClusterBuilder;Lcom/facebook/orca/users/UserInCluster$MatchType;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/facebook/orca/users/UserClusterer;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/facebook/orca/users/UserClusterer;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    .line 302
    const-string v0, "orca:UserClusterer"

    const-string v1, "Tried adding a user to two clusters"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {p2, p1, p3}, Lcom/facebook/orca/users/UserClusterBuilder;->a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserInCluster$MatchType;)V

    .line 307
    iget-object v0, p0, Lcom/facebook/orca/users/UserClusterer;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/users/User;Ljava/util/Set;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/users/User;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x5

    if-lt p3, v0, :cond_1

    .line 133
    :cond_0
    return-void

    .line 123
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->t()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserIdentifier;

    .line 125
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserIdentifier;->c()Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v2, p0, Lcom/facebook/orca/users/UserClusterer;->c:Lcom/google/common/collect/Multimap;

    invoke-interface {v2, v0}, Lcom/google/common/collect/Multimap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 128
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 129
    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, v0, p2, v3}, Lcom/facebook/orca/users/UserClusterer;->a(Lcom/facebook/orca/users/User;Ljava/util/Set;I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 58
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v2, v3, :cond_0

    .line 59
    new-instance v2, Lcom/facebook/orca/users/UserClusterBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/users/UserClusterBuilder;-><init>()V

    .line 60
    sget-object v3, Lcom/facebook/orca/users/UserInCluster$MatchType;->PRIMARY:Lcom/facebook/orca/users/UserInCluster$MatchType;

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/orca/users/UserClusterer;->a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserClusterBuilder;Lcom/facebook/orca/users/UserInCluster$MatchType;)V

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/users/UserClusterer;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/UserClusterer;->b(Ljava/lang/Iterable;)V

    .line 69
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 70
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v2, v3, :cond_2

    .line 73
    iget-object v2, p0, Lcom/facebook/orca/users/UserClusterer;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 74
    invoke-direct {p0, v0}, Lcom/facebook/orca/users/UserClusterer;->a(Lcom/facebook/orca/users/User;)V

    goto :goto_1

    .line 78
    :cond_3
    return-void
.end method

.method private a(Ljava/util/Collection;Lcom/facebook/orca/users/UserClusterBuilder;Lcom/facebook/orca/users/UserInCluster$MatchType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Lcom/facebook/orca/users/UserClusterBuilder;",
            "Lcom/facebook/orca/users/UserInCluster$MatchType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 292
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 293
    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/orca/users/UserClusterer;->a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserClusterBuilder;Lcom/facebook/orca/users/UserInCluster$MatchType;)V

    goto :goto_0

    .line 295
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/User;)Z
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/users/UserClusterer;->b(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/User;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/facebook/orca/users/User;)Lcom/facebook/orca/users/UserClusterBuilder;
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->t()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserIdentifier;

    .line 180
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserIdentifier;->c()Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v2, p0, Lcom/facebook/orca/users/UserClusterer;->c:Lcom/google/common/collect/Multimap;

    invoke-interface {v2, v0}, Lcom/google/common/collect/Multimap;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/facebook/orca/users/UserClusterer;->c:Lcom/google/common/collect/Multimap;

    invoke-interface {v2, v0}, Lcom/google/common/collect/Multimap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 184
    iget-object v3, p0, Lcom/facebook/orca/users/UserClusterer;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserClusterBuilder;

    .line 185
    if-eqz v0, :cond_1

    .line 191
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 82
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->t()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/UserIdentifier;

    .line 83
    iget-object v4, p0, Lcom/facebook/orca/users/UserClusterer;->c:Lcom/google/common/collect/Multimap;

    invoke-virtual {v1}, Lcom/facebook/orca/users/UserIdentifier;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Lcom/google/common/collect/Multimap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->h()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_2

    .line 87
    iget-object v3, p0, Lcom/facebook/orca/users/UserClusterer;->d:Lcom/google/common/collect/Multimap;

    invoke-static {v1}, Lcom/facebook/orca/common/names/NameNormalizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Lcom/google/common/collect/Multimap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/users/Name;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/users/Name;->f()Ljava/lang/String;

    move-result-object v1

    .line 91
    iget-object v3, p0, Lcom/facebook/orca/users/UserClusterer;->d:Lcom/google/common/collect/Multimap;

    invoke-static {v1}, Lcom/facebook/orca/common/names/NameNormalizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Lcom/google/common/collect/Multimap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_3
    return-void
.end method

.method private b(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 143
    invoke-direct {p0, v0}, Lcom/facebook/orca/users/UserClusterer;->b(Lcom/facebook/orca/users/User;)Lcom/facebook/orca/users/UserClusterBuilder;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    sget-object v1, Lcom/facebook/orca/users/UserInCluster$MatchType;->IDENTIFIER:Lcom/facebook/orca/users/UserInCluster$MatchType;

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/users/UserClusterer;->a(Ljava/util/Collection;Lcom/facebook/orca/users/UserClusterBuilder;Lcom/facebook/orca/users/UserInCluster$MatchType;)V

    .line 170
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 152
    invoke-direct {p0, v0}, Lcom/facebook/orca/users/UserClusterer;->c(Lcom/facebook/orca/users/User;)Lcom/facebook/orca/users/UserClusterBuilder;

    move-result-object v2

    .line 153
    if-eqz v2, :cond_3

    .line 154
    sget-object v1, Lcom/facebook/orca/users/UserInCluster$MatchType;->NAME:Lcom/facebook/orca/users/UserInCluster$MatchType;

    invoke-direct {p0, v0, v2, v1}, Lcom/facebook/orca/users/UserClusterer;->a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserClusterBuilder;Lcom/facebook/orca/users/UserInCluster$MatchType;)V

    goto :goto_0

    .line 159
    :cond_4
    const/4 v0, 0x1

    .line 160
    new-instance v1, Lcom/facebook/orca/users/UserClusterBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/users/UserClusterBuilder;-><init>()V

    .line 161
    iget-object v2, p0, Lcom/facebook/orca/users/UserClusterer;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 163
    if-eqz v3, :cond_5

    .line 164
    sget-object v3, Lcom/facebook/orca/users/UserInCluster$MatchType;->PRIMARY:Lcom/facebook/orca/users/UserInCluster$MatchType;

    invoke-direct {p0, v0, v1, v3}, Lcom/facebook/orca/users/UserClusterer;->a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserClusterBuilder;Lcom/facebook/orca/users/UserInCluster$MatchType;)V

    .line 168
    :goto_2
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    .line 166
    :cond_5
    sget-object v3, Lcom/facebook/orca/users/UserInCluster$MatchType;->IDENTIFIER:Lcom/facebook/orca/users/UserInCluster$MatchType;

    invoke-direct {p0, v0, v1, v3}, Lcom/facebook/orca/users/UserClusterer;->a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserClusterBuilder;Lcom/facebook/orca/users/UserInCluster$MatchType;)V

    goto :goto_2
.end method

.method private b(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/User;)Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 245
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/facebook/orca/users/User;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v7

    .line 286
    :goto_0
    return v0

    .line 251
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {p2}, Lcom/facebook/orca/users/User;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-virtual {p2}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_6

    .line 259
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v6

    .line 261
    goto :goto_0

    .line 264
    :cond_2
    invoke-static {v2}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v0, v6

    .line 266
    goto :goto_0

    .line 270
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v6, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_6

    :cond_5
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_6

    move v0, v6

    .line 273
    goto :goto_0

    .line 277
    :cond_6
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v8, :cond_8

    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v6

    .line 283
    goto/16 :goto_0

    :cond_8
    move v0, v7

    .line 286
    goto/16 :goto_0
.end method

.method private c(Lcom/facebook/orca/users/User;)Lcom/facebook/orca/users/UserClusterBuilder;
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/orca/users/UserClusterer;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 203
    iget-object v0, p0, Lcom/facebook/orca/users/UserClusterer;->e:Ljava/util/Set;

    .line 204
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->h()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 206
    invoke-static {v1}, Lcom/facebook/orca/common/names/NameNormalizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lcom/facebook/orca/users/UserClusterer;->d:Lcom/google/common/collect/Multimap;

    invoke-interface {v2, v1}, Lcom/google/common/collect/Multimap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/users/Name;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/users/Name;->f()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v1}, Lcom/facebook/orca/common/names/NameNormalizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/facebook/orca/users/UserClusterer;->d:Lcom/google/common/collect/Multimap;

    invoke-interface {v2, v1}, Lcom/google/common/collect/Multimap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 217
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 219
    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/users/UserClusterer;->a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/User;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/facebook/orca/users/UserClusterer;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    iget-object v1, p0, Lcom/facebook/orca/users/UserClusterer;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserClusterBuilder;

    move-object v0, p0

    .line 223
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/UserCluster;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserClusterer;->a:Ljava/util/List;

    .line 39
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/common/collect/HashMultimap;->a(II)Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserClusterer;->c:Lcom/google/common/collect/Multimap;

    .line 40
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->j()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserClusterer;->d:Lcom/google/common/collect/Multimap;

    .line 41
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserClusterer;->b:Ljava/util/Map;

    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/UserClusterer;->a(Ljava/lang/Iterable;)V

    .line 43
    iget-object v0, p0, Lcom/facebook/orca/users/UserClusterer;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 44
    iget-object v0, p0, Lcom/facebook/orca/users/UserClusterer;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserClusterBuilder;

    .line 45
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserClusterBuilder;->a()Lcom/facebook/orca/users/UserCluster;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_0
    iput-object v3, p0, Lcom/facebook/orca/users/UserClusterer;->a:Ljava/util/List;

    .line 48
    iput-object v3, p0, Lcom/facebook/orca/users/UserClusterer;->c:Lcom/google/common/collect/Multimap;

    .line 49
    iput-object v3, p0, Lcom/facebook/orca/users/UserClusterer;->d:Lcom/google/common/collect/Multimap;

    .line 50
    iput-object v3, p0, Lcom/facebook/orca/users/UserClusterer;->b:Ljava/util/Map;

    .line 51
    return-object v1
.end method
