.class public Lcom/facebook/orca/member/MemberCommands;
.super Ljava/lang/Object;
.source "MemberCommands.java"


# instance fields
.field private final a:Lcom/facebook/orca/cache/DataCache;

.field private final b:Lcom/facebook/orca/member/EmailMemberCommand;

.field private final c:Lcom/facebook/orca/member/RemoveMemberCommand;

.field private final d:Lcom/facebook/orca/member/LeaveThreadCommand;

.field private final e:Lcom/facebook/orca/member/DeleteThreadCommand;

.field private f:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/member/MemberCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/member/EmailMemberCommand;Lcom/facebook/orca/member/RemoveMemberCommand;Lcom/facebook/orca/member/LeaveThreadCommand;Lcom/facebook/orca/member/DeleteThreadCommand;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/member/MemberCommands;->f:Lcom/google/common/collect/ImmutableList;

    .line 33
    iput-object p1, p0, Lcom/facebook/orca/member/MemberCommands;->a:Lcom/facebook/orca/cache/DataCache;

    .line 34
    iput-object p2, p0, Lcom/facebook/orca/member/MemberCommands;->b:Lcom/facebook/orca/member/EmailMemberCommand;

    .line 35
    iput-object p3, p0, Lcom/facebook/orca/member/MemberCommands;->c:Lcom/facebook/orca/member/RemoveMemberCommand;

    .line 36
    iput-object p4, p0, Lcom/facebook/orca/member/MemberCommands;->d:Lcom/facebook/orca/member/LeaveThreadCommand;

    .line 37
    iput-object p5, p0, Lcom/facebook/orca/member/MemberCommands;->e:Lcom/facebook/orca/member/DeleteThreadCommand;

    .line 38
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/member/MemberCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/member/MemberCommands;->f:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/users/User;)V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {p2}, Lcom/facebook/orca/users/User;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/facebook/orca/member/MemberCommands;->b:Lcom/facebook/orca/member/EmailMemberCommand;

    invoke-virtual {p2}, Lcom/facebook/orca/users/User;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/member/EmailMemberCommand;->a(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/facebook/orca/member/MemberCommands;->b:Lcom/facebook/orca/member/EmailMemberCommand;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/member/MemberCommands;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1}, Lcom/facebook/orca/cache/DataCache;->c()Lcom/facebook/orca/users/User;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/facebook/orca/member/MemberCommands;->d:Lcom/facebook/orca/member/LeaveThreadCommand;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/member/LeaveThreadCommand;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 50
    iget-object v1, p0, Lcom/facebook/orca/member/MemberCommands;->d:Lcom/facebook/orca/member/LeaveThreadCommand;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 52
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/member/MemberCommands;->f:Lcom/google/common/collect/ImmutableList;

    .line 53
    return-void
.end method
