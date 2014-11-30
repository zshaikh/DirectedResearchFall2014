.class Lcom/facebook/orca/cache/NameComputer;
.super Ljava/lang/Object;
.source "NameComputer.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method


# virtual methods
.method a(Ljava/util/Collection;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 32
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/facebook/orca/cache/NameComputer$CountingSet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/cache/NameComputer$CountingSet;-><init>(Lcom/facebook/orca/cache/NameComputer;Lcom/facebook/orca/cache/NameComputer$1;)V

    .line 35
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/User;

    .line 36
    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v3

    .line 37
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 44
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/facebook/orca/cache/NameComputer$CountingSet;->a(Ljava/lang/Object;)V

    .line 48
    :cond_1
    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/facebook/orca/cache/NameComputer$CountingSet;->a(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/facebook/orca/cache/NameComputer$CountingSet;->a(Ljava/lang/Object;)V

    .line 52
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/orca/cache/NameComputer$CountingSet;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/User;

    .line 60
    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/facebook/orca/cache/NameComputer$CountingSet;->b(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 62
    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->e()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/facebook/orca/cache/NameComputer$CountingSet;->b(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 64
    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 65
    :cond_5
    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->e()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/facebook/orca/cache/NameComputer$CountingSet;->b(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v5, :cond_6

    .line 66
    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 67
    :cond_6
    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->d()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->b()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/facebook/orca/cache/NameComputer$CountingSet;->b(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v5, :cond_7

    .line 68
    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 69
    :cond_7
    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->b()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->d()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 70
    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 71
    :cond_8
    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->b()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 72
    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 73
    :cond_9
    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->d()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 74
    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 75
    :cond_a
    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->l()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 76
    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->m()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 78
    :cond_b
    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 81
    :cond_c
    return-object v0
.end method
