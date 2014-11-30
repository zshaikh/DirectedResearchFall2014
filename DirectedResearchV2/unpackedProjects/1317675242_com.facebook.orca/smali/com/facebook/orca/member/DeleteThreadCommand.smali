.class public Lcom/facebook/orca/member/DeleteThreadCommand;
.super Ljava/lang/Object;
.source "DeleteThreadCommand.java"

# interfaces
.implements Lcom/facebook/orca/member/MemberCommand;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/facebook/orca/threads/ThreadSummary;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/orca/member/DeleteThreadCommand;->a:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/member/DeleteThreadCommand;->a:Landroid/content/Context;

    const v1, 0x7f0a006f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/member/DeleteThreadCommand;->a:Landroid/content/Context;

    const v1, 0x7f0a0070

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f020002

    return v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/member/DeleteThreadCommand;->a:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/member/DeleteThreadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    const-string v1, "threadid"

    iget-object v2, p0, Lcom/facebook/orca/member/DeleteThreadCommand;->b:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    iget-object v1, p0, Lcom/facebook/orca/member/DeleteThreadCommand;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    return-void
.end method
