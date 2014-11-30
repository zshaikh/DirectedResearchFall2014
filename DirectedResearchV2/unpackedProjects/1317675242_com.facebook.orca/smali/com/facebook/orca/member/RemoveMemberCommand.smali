.class public Lcom/facebook/orca/member/RemoveMemberCommand;
.super Ljava/lang/Object;
.source "RemoveMemberCommand.java"

# interfaces
.implements Lcom/facebook/orca/member/MemberCommand;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/facebook/orca/threads/ThreadSummary;

.field private c:Lcom/facebook/orca/users/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/orca/member/RemoveMemberCommand;->a:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/member/RemoveMemberCommand;->a:Landroid/content/Context;

    const v1, 0x7f0a006a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/member/RemoveMemberCommand;->c:Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    .line 42
    iget-object v0, p0, Lcom/facebook/orca/member/RemoveMemberCommand;->c:Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->g()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/facebook/orca/member/RemoveMemberCommand;->c:Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->m()Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_0
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/facebook/orca/member/RemoveMemberCommand;->a:Landroid/content/Context;

    const v1, 0x7f0a006c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/member/RemoveMemberCommand;->a:Landroid/content/Context;

    const v2, 0x7f0a006b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f020002

    return v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/member/RemoveMemberCommand;->a:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/member/RemoveMemberActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    const-string v1, "threadid"

    iget-object v2, p0, Lcom/facebook/orca/member/RemoveMemberCommand;->b:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "userid"

    iget-object v2, p0, Lcom/facebook/orca/member/RemoveMemberCommand;->c:Lcom/facebook/orca/users/User;

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/facebook/orca/member/RemoveMemberCommand;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method
