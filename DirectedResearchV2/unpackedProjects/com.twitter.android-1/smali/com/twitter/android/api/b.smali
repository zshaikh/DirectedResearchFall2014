.class public final Lcom/twitter/android/api/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public final f:J

.field public final g:J

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Lcom/twitter/android/api/b;

.field public l:Z

.field public m:Lcom/twitter/android/api/c;

.field public final n:Lcom/twitter/android/api/TweetEntities;

.field public final o:I

.field public final p:Lcom/twitter/android/api/e;

.field public final q:Lcom/twitter/android/api/PromotedContent;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Lcom/twitter/android/api/e;Lcom/twitter/android/api/b;Lcom/twitter/android/api/c;Lcom/twitter/android/api/TweetEntities;ILjava/lang/String;JLcom/twitter/android/api/PromotedContent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/twitter/android/api/b;->a:J

    iput-object p5, p0, Lcom/twitter/android/api/b;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/twitter/android/api/b;->c:Ljava/lang/String;

    iput-wide p3, p0, Lcom/twitter/android/api/b;->d:J

    iput-boolean p12, p0, Lcom/twitter/android/api/b;->l:Z

    iput-wide p8, p0, Lcom/twitter/android/api/b;->f:J

    iput-wide p10, p0, Lcom/twitter/android/api/b;->g:J

    iput-object p7, p0, Lcom/twitter/android/api/b;->h:Ljava/lang/String;

    iput-object p13, p0, Lcom/twitter/android/api/b;->i:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/twitter/android/api/b;->j:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/twitter/android/api/b;->k:Lcom/twitter/android/api/b;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/twitter/android/api/b;->m:Lcom/twitter/android/api/c;

    if-eqz p17, :cond_0

    move-object/from16 v0, p17

    iput-wide p3, v0, Lcom/twitter/android/api/c;->u:J

    :cond_0
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/twitter/android/api/b;->n:Lcom/twitter/android/api/TweetEntities;

    move/from16 v0, p19

    iput v0, p0, Lcom/twitter/android/api/b;->o:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/twitter/android/api/b;->p:Lcom/twitter/android/api/e;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/twitter/android/api/b;->r:Ljava/lang/String;

    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/twitter/android/api/b;->e:J

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/twitter/android/api/b;->q:Lcom/twitter/android/api/PromotedContent;

    return-void
.end method


# virtual methods
.method public final a()Lcom/twitter/android/api/b;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/api/b;->k:Lcom/twitter/android/api/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/twitter/android/api/b;->k:Lcom/twitter/android/api/b;

    :cond_0
    return-object p0
.end method

.method public final b()Z
    .locals 2

    const-string v0, "popular"

    iget-object v1, p0, Lcom/twitter/android/api/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
