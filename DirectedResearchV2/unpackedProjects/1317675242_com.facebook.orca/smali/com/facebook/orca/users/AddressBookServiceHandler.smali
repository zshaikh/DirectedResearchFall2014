.class public Lcom/facebook/orca/users/AddressBookServiceHandler;
.super Ljava/lang/Object;
.source "AddressBookServiceHandler.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceHandler;


# instance fields
.field private final a:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

.field private final c:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

.field private final d:Lcom/facebook/orca/users/MergeAddressBookHandler;

.field private final e:Lcom/facebook/orca/database/DbUsersPropertyUtil;


# direct methods
.method public constructor <init>(Lcom/google/inject/Provider;Lcom/facebook/orca/protocol/methods/GetFriendsMethod;Lcom/facebook/orca/database/DbInsertFriendUsersHandler;Lcom/facebook/orca/users/MergeAddressBookHandler;Lcom/facebook/orca/database/DbUsersPropertyUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
            ">;",
            "Lcom/facebook/orca/protocol/methods/GetFriendsMethod;",
            "Lcom/facebook/orca/database/DbInsertFriendUsersHandler;",
            "Lcom/facebook/orca/users/MergeAddressBookHandler;",
            "Lcom/facebook/orca/database/DbUsersPropertyUtil;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->a:Lcom/google/inject/Provider;

    .line 52
    iput-object p2, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->b:Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

    .line 53
    iput-object p3, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->c:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    .line 54
    iput-object p4, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->d:Lcom/facebook/orca/users/MergeAddressBookHandler;

    .line 55
    iput-object p5, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->e:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    .line 56
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 129
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->e:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->g:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v0

    .line 131
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->d:Lcom/facebook/orca/users/MergeAddressBookHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/users/MergeAddressBookHandler;->a()V

    .line 138
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->e:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->g:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    goto :goto_0
.end method

.method private a()Z
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->e:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->f:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-virtual {v0, v1, v6, v7}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v0

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 74
    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    sub-long/2addr v2, v0

    const-wide/32 v4, 0xa4cb80

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 79
    :cond_0
    cmp-long v2, v0, v6

    if-eqz v2, :cond_2

    .line 81
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/users/AddressBookServiceHandler;->a(J)Z
    :try_end_0
    .catch Lcom/facebook/orca/server/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 94
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->e:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v2, Lcom/facebook/orca/database/DbProperties;->f:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Lcom/facebook/orca/server/ApiException;->b()Lcom/facebook/orca/server/ApiErrorResult;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/facebook/orca/server/ApiErrorResult;->a()I

    move-result v1

    const/16 v2, 0xc1

    if-ne v1, v2, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->b()Z

    move-result v0

    goto :goto_1

    .line 88
    :cond_1
    throw v0

    .line 92
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->b()Z

    move-result v0

    goto :goto_1
.end method

.method private a(J)Z
    .locals 4

    .prologue
    .line 119
    invoke-static {p1, p2}, Lcom/facebook/orca/server/GetFriendsParams;->a(J)Lcom/facebook/orca/server/GetFriendsParams;

    move-result-object v1

    .line 120
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->a:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 121
    iget-object v2, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->b:Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/GetFriendsResult;

    .line 122
    iget-object v1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->c:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a(Lcom/facebook/orca/server/GetFriendsResult;)V

    .line 123
    invoke-virtual {v0}, Lcom/facebook/orca/server/GetFriendsResult;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/facebook/orca/server/GetFriendsResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 124
    const-string v1, "orca:AddressBookServiceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " incremental sync results."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->c:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a()V

    .line 101
    const/4 v0, 0x0

    move v1, v6

    .line 104
    :goto_0
    if-nez v1, :cond_0

    const/16 v2, 0x14

    .line 106
    :goto_1
    invoke-static {v2, v0}, Lcom/facebook/orca/server/GetFriendsParams;->a(ILjava/lang/String;)Lcom/facebook/orca/server/GetFriendsParams;

    move-result-object v2

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->a:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 108
    iget-object v3, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->b:Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

    invoke-virtual {v0, v3, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/GetFriendsResult;

    .line 109
    iget-object v2, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->c:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a(Lcom/facebook/orca/server/GetFriendsResult;)V

    .line 110
    invoke-virtual {v0}, Lcom/facebook/orca/server/GetFriendsResult;->d()Ljava/lang/String;

    move-result-object v2

    .line 111
    const-string v3, "orca:AddressBookServiceHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/orca/server/GetFriendsResult;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " friends in batch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Lcom/facebook/orca/server/GetFriendsResult;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 113
    if-nez v2, :cond_2

    .line 114
    const-string v1, "orca:AddressBookServiceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " friends."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    return v0

    .line 104
    :cond_0
    const/16 v2, 0x32

    goto :goto_1

    :cond_1
    move v0, v6

    .line 115
    goto :goto_2

    :cond_2
    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 4

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "sync_address_book"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->a()Z

    move-result v0

    .line 63
    invoke-direct {p0, v0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->a(Z)V

    .line 64
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->a()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
