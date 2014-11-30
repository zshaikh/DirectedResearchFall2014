.class public final Lcom/twitter/android/api/s;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Lcom/twitter/android/api/c;

.field public final e:Lcom/twitter/android/api/c;

.field public final f:Lcom/twitter/android/api/TweetEntities;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Lcom/twitter/android/api/c;Lcom/twitter/android/api/c;Lcom/twitter/android/api/TweetEntities;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/twitter/android/api/s;->a:J

    iput-object p5, p0, Lcom/twitter/android/api/s;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/twitter/android/api/s;->c:J

    iput-object p6, p0, Lcom/twitter/android/api/s;->d:Lcom/twitter/android/api/c;

    iput-object p7, p0, Lcom/twitter/android/api/s;->e:Lcom/twitter/android/api/c;

    if-eqz p6, :cond_0

    iput-wide p3, p6, Lcom/twitter/android/api/c;->u:J

    :cond_0
    if-eqz p7, :cond_1

    iput-wide p3, p7, Lcom/twitter/android/api/c;->u:J

    :cond_1
    iput-object p8, p0, Lcom/twitter/android/api/s;->f:Lcom/twitter/android/api/TweetEntities;

    return-void
.end method
