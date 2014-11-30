.class Lcom/facebook/orca/app/OrcaInjector$MemberCommandsProvider;
.super Ljava/lang/Object;
.source "OrcaInjector.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<",
        "Lcom/facebook/orca/member/MemberCommands;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1250
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$MemberCommandsProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1250
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$MemberCommandsProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/member/MemberCommands;
    .locals 7

    .prologue
    .line 1254
    new-instance v0, Lcom/facebook/orca/member/MemberCommands;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$MemberCommandsProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/DataCache;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$MemberCommandsProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/member/EmailMemberCommand;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/member/EmailMemberCommand;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$MemberCommandsProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/member/RemoveMemberCommand;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/member/RemoveMemberCommand;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$MemberCommandsProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/member/LeaveThreadCommand;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/member/LeaveThreadCommand;

    iget-object v5, p0, Lcom/facebook/orca/app/OrcaInjector$MemberCommandsProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v6, Lcom/facebook/orca/member/DeleteThreadCommand;

    invoke-virtual {v5, v6}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/member/DeleteThreadCommand;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/member/MemberCommands;-><init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/member/EmailMemberCommand;Lcom/facebook/orca/member/RemoveMemberCommand;Lcom/facebook/orca/member/LeaveThreadCommand;Lcom/facebook/orca/member/DeleteThreadCommand;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1250
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$MemberCommandsProvider;->a()Lcom/facebook/orca/member/MemberCommands;

    move-result-object v0

    return-object v0
.end method
