.class Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$3;
.super Ljava/lang/Object;
.source "ThreadViewMembersFragmentTab.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/orca/threads/ThreadParticipant;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$3;->a:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/ThreadParticipant;Lcom/facebook/orca/threads/ThreadParticipant;)I
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 118
    check-cast p1, Lcom/facebook/orca/threads/ThreadParticipant;

    check-cast p2, Lcom/facebook/orca/threads/ThreadParticipant;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$3;->a(Lcom/facebook/orca/threads/ThreadParticipant;Lcom/facebook/orca/threads/ThreadParticipant;)I

    move-result v0

    return v0
.end method
