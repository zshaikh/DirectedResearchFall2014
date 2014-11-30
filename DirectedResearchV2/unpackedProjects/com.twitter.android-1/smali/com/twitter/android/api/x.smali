.class public final Lcom/twitter/android/api/x;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Float;

.field public final d:Ljava/lang/Float;

.field public final e:Ljava/lang/Float;

.field public final f:Ljava/lang/String;

.field public final g:J

.field public h:J

.field public final i:Ljava/util/ArrayList;

.field public final j:Lcom/twitter/android/api/PromotedContent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/twitter/android/api/PromotedContent;)V
    .locals 13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v12, p7

    invoke-direct/range {v0 .. v12}, Lcom/twitter/android/api/x;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/util/ArrayList;Lcom/twitter/android/api/PromotedContent;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/util/ArrayList;Lcom/twitter/android/api/PromotedContent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/api/x;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/twitter/android/api/x;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/api/x;->c:Ljava/lang/Float;

    iput-object v0, p0, Lcom/twitter/android/api/x;->d:Ljava/lang/Float;

    iput-object v0, p0, Lcom/twitter/android/api/x;->e:Ljava/lang/Float;

    iput-object p10, p0, Lcom/twitter/android/api/x;->f:Ljava/lang/String;

    iput-wide p3, p0, Lcom/twitter/android/api/x;->h:J

    iput-wide p5, p0, Lcom/twitter/android/api/x;->g:J

    iput-object p11, p0, Lcom/twitter/android/api/x;->i:Ljava/util/ArrayList;

    iput-object p12, p0, Lcom/twitter/android/api/x;->j:Lcom/twitter/android/api/PromotedContent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;)V
    .locals 13

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v5, p3

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v12}, Lcom/twitter/android/api/x;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/util/ArrayList;Lcom/twitter/android/api/PromotedContent;)V

    return-void
.end method
