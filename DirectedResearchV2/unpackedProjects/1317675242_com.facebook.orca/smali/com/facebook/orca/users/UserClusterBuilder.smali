.class public Lcom/facebook/orca/users/UserClusterBuilder;
.super Ljava/lang/Object;
.source "UserClusterBuilder.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/UserInCluster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserClusterBuilder;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/users/UserCluster;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/facebook/orca/users/UserCluster;

    iget-object v1, p0, Lcom/facebook/orca/users/UserClusterBuilder;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/users/UserCluster;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserInCluster$MatchType;)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/users/UserClusterBuilder;->a:Ljava/util/List;

    new-instance v1, Lcom/facebook/orca/users/UserInCluster;

    invoke-direct {v1, p1, p2}, Lcom/facebook/orca/users/UserInCluster;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserInCluster$MatchType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method
