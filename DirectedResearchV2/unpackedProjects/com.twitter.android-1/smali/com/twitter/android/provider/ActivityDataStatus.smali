.class public Lcom/twitter/android/provider/ActivityDataStatus;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2790ee9fdfb4908dL


# instance fields
.field public final createdAt:J

.field public final entities:[B

.field public final hasPoi:Z

.field public final id:J

.field public final replyStatusId:J

.field public final text:Ljava/lang/String;

.field public final user:Lcom/twitter/android/provider/ActivityDataUser;


# direct methods
.method private constructor <init>(Lcom/twitter/android/api/b;)V
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v2, p1, Lcom/twitter/android/api/b;->a:J

    iput-wide v2, p0, Lcom/twitter/android/provider/ActivityDataStatus;->id:J

    iget-wide v2, p1, Lcom/twitter/android/api/b;->d:J

    iput-wide v2, p0, Lcom/twitter/android/provider/ActivityDataStatus;->createdAt:J

    iget-object v0, p1, Lcom/twitter/android/api/b;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->text:Ljava/lang/String;

    iget-object v0, p1, Lcom/twitter/android/api/b;->n:Lcom/twitter/android/api/TweetEntities;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->entities:[B

    new-instance v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v2, p1, Lcom/twitter/android/api/b;->m:Lcom/twitter/android/api/c;

    invoke-direct {v0, v2}, Lcom/twitter/android/provider/ActivityDataUser;-><init>(Lcom/twitter/android/api/c;)V

    iput-object v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->user:Lcom/twitter/android/provider/ActivityDataUser;

    iget-wide v2, p1, Lcom/twitter/android/api/b;->g:J

    iput-wide v2, p0, Lcom/twitter/android/provider/ActivityDataStatus;->replyStatusId:J

    iget-object v0, p1, Lcom/twitter/android/api/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/android/api/b;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/twitter/android/api/b;->p:Lcom/twitter/android/api/e;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/twitter/android/api/b;->p:Lcom/twitter/android/api/e;

    iget v0, v0, Lcom/twitter/android/api/e;->a:I

    if-ne v0, v1, :cond_3

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->hasPoi:Z

    return-void

    :cond_2
    iget-object v0, p1, Lcom/twitter/android/api/b;->n:Lcom/twitter/android/api/TweetEntities;

    invoke-virtual {v0}, Lcom/twitter/android/api/TweetEntities;->a()[B

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/util/Collection;)[B
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v3, Lcom/twitter/android/provider/ActivityDataStatus;

    check-cast v0, Lcom/twitter/android/api/b;

    invoke-virtual {v0}, Lcom/twitter/android/api/b;->a()Lcom/twitter/android/api/b;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/twitter/android/provider/ActivityDataStatus;-><init>(Lcom/twitter/android/api/b;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method
