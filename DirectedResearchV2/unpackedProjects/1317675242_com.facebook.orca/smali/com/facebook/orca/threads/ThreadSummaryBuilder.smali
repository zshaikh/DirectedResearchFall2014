.class public Lcom/facebook/orca/threads/ThreadSummaryBuilder;
.super Ljava/lang/Object;
.source "ThreadSummaryBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Lcom/facebook/orca/threads/ParticipantInfo;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Landroid/net/Uri;

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->f:Ljava/util/List;

    .line 26
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->g:Ljava/util/List;

    .line 27
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->h:Ljava/util/List;

    .line 31
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->l:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c:J

    .line 80
    return-object p0
.end method

.method public a(Landroid/net/Uri;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->q:Landroid/net/Uri;

    .line 216
    return-object p0
.end method

.method public a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->n:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 180
    return-object p0
.end method

.method public a(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b:J

    .line 45
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c:J

    .line 46
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d:J

    .line 47
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->e:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->f:Ljava/util/List;

    .line 49
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->w()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->g:Ljava/util/List;

    .line 50
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->h:Ljava/util/List;

    .line 51
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->i:Z

    .line 52
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->j:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->k:J

    .line 54
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->l:Ljava/util/List;

    .line 55
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->m:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->o()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->n:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 57
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->o:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->p:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->r:Z

    .line 60
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->u()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->s:Z

    .line 61
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->v()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->t:Z

    .line 62
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;)",
            "Lcom/facebook/orca/threads/ThreadSummaryBuilder;"
        }
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->f:Ljava/util/List;

    .line 135
    return-object p0
.end method

.method public a(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->i:Z

    .line 117
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c:J

    return-wide v0
.end method

.method public b(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d:J

    .line 89
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->e:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;)",
            "Lcom/facebook/orca/threads/ThreadSummaryBuilder;"
        }
    .end annotation

    .prologue
    .line 143
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->g:Ljava/util/List;

    .line 144
    return-object p0
.end method

.method public b(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->r:Z

    .line 225
    return-object p0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d:J

    return-wide v0
.end method

.method public c(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b:J

    .line 102
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->j:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;)",
            "Lcom/facebook/orca/threads/ThreadSummaryBuilder;"
        }
    .end annotation

    .prologue
    .line 152
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->h:Ljava/util/List;

    .line 153
    return-object p0
.end method

.method public c(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->s:Z

    .line 234
    return-object p0
.end method

.method public d(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->k:J

    .line 162
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->m:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public d(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;)",
            "Lcom/facebook/orca/threads/ThreadSummaryBuilder;"
        }
    .end annotation

    .prologue
    .line 197
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->l:Ljava/util/List;

    .line 198
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->t:Z

    .line 243
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b:J

    return-wide v0
.end method

.method public e(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->o:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->p:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->i:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->f:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->g:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->h:Ljava/util/List;

    return-object v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->k:J

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->n:Lcom/facebook/orca/threads/ParticipantInfo;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->o:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->l:Ljava/util/List;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->p:Ljava/lang/String;

    return-object v0
.end method

.method public q()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->q:Landroid/net/Uri;

    return-object v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->r:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->s:Z

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->t:Z

    return v0
.end method

.method public u()Lcom/facebook/orca/threads/ThreadSummary;
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threads/ThreadSummary;-><init>(Lcom/facebook/orca/threads/ThreadSummaryBuilder;)V

    return-object v0
.end method
