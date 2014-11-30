.class public Lcom/facebook/orca/threads/MessageBuilder;
.super Ljava/lang/Object;
.source "MessageBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Lcom/facebook/orca/threads/ParticipantInfo;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Lcom/facebook/orca/location/Coordinates;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/AttachmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/Share;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Lcom/facebook/orca/threads/Message$ChannelSource;

.field private r:Lcom/facebook/orca/attachments/MediaResource;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->j:Ljava/util/List;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->k:Ljava/util/List;

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->m:Ljava/util/List;

    .line 37
    sget-object v0, Lcom/facebook/orca/threads/Message$ChannelSource;->API:Lcom/facebook/orca/threads/Message$ChannelSource;

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->q:Lcom/facebook/orca/threads/Message$ChannelSource;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->l:I

    .line 145
    return-object p0
.end method

.method public a(J)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->c:J

    .line 64
    return-object p0
.end method

.method public a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->r:Lcom/facebook/orca/attachments/MediaResource;

    .line 199
    return-object p0
.end method

.method public a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->i:Lcom/facebook/orca/location/Coordinates;

    .line 118
    return-object p0
.end method

.method public a(Lcom/facebook/orca/threads/Message$ChannelSource;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->q:Lcom/facebook/orca/threads/Message$ChannelSource;

    .line 190
    return-object p0
.end method

.method public a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->d:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 73
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->a:Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/AttachmentInfo;",
            ">;)",
            "Lcom/facebook/orca/threads/MessageBuilder;"
        }
    .end annotation

    .prologue
    .line 126
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->j:Ljava/util/List;

    .line 127
    return-object p0
.end method

.method public a(Z)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->o:Z

    .line 172
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->h:J

    .line 109
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->b:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/Share;",
            ">;)",
            "Lcom/facebook/orca/threads/MessageBuilder;"
        }
    .end annotation

    .prologue
    .line 135
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->k:Ljava/util/List;

    .line 136
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->c:J

    return-wide v0
.end method

.method public c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->e:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;)",
            "Lcom/facebook/orca/threads/MessageBuilder;"
        }
    .end annotation

    .prologue
    .line 153
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->m:Ljava/util/List;

    .line 154
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->n:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public d()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->d:Lcom/facebook/orca/threads/ParticipantInfo;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->p:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->h:J

    return-wide v0
.end method

.method public i()Lcom/facebook/orca/location/Coordinates;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->i:Lcom/facebook/orca/location/Coordinates;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/AttachmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->j:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/Share;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->k:Ljava/util/List;

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->l:I

    return v0
.end method

.method public m()Ljava/util/List;
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
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->m:Ljava/util/List;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->n:Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->o:Z

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->p:Ljava/lang/String;

    return-object v0
.end method

.method public q()Lcom/facebook/orca/threads/Message$ChannelSource;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->q:Lcom/facebook/orca/threads/Message$ChannelSource;

    return-object v0
.end method

.method public r()Lcom/facebook/orca/attachments/MediaResource;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->r:Lcom/facebook/orca/attachments/MediaResource;

    return-object v0
.end method

.method public s()Lcom/facebook/orca/threads/Message;
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/facebook/orca/threads/Message;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threads/Message;-><init>(Lcom/facebook/orca/threads/MessageBuilder;)V

    return-object v0
.end method
