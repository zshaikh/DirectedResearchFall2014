.class final Lcom/twitter/android/es;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/twitter/android/PostActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/PostActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/es;->b:Lcom/twitter/android/PostActivity;

    iput p2, p0, Lcom/twitter/android/es;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    iget v0, p0, Lcom/twitter/android/es;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/es;->b:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0}, Lcom/twitter/android/PostActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/es;->b:Lcom/twitter/android/PostActivity;

    invoke-static {v0}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/PostActivity;)V

    goto :goto_0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v0, -0x3

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/es;->b:Lcom/twitter/android/PostActivity;

    iget-wide v0, v0, Lcom/twitter/android/PostActivity;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/es;->b:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/es;->b:Lcom/twitter/android/PostActivity;

    iget-object v1, v1, Lcom/twitter/android/PostActivity;->m:Lcom/twitter/android/client/Session;

    iget-object v2, p0, Lcom/twitter/android/es;->b:Lcom/twitter/android/PostActivity;

    iget-wide v2, v2, Lcom/twitter/android/PostActivity;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->c(Lcom/twitter/android/client/Session;J)V

    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/es;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/es;->b:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/es;->b:Lcom/twitter/android/PostActivity;

    iget-object v1, v1, Lcom/twitter/android/PostActivity;->m:Lcom/twitter/android/client/Session;

    iget-object v2, p0, Lcom/twitter/android/es;->b:Lcom/twitter/android/PostActivity;

    invoke-virtual {v2}, Lcom/twitter/android/PostActivity;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/es;->b:Lcom/twitter/android/PostActivity;

    iget-wide v3, v3, Lcom/twitter/android/PostActivity;->e:J

    iget-object v5, p0, Lcom/twitter/android/es;->b:Lcom/twitter/android/PostActivity;

    iget-wide v5, v5, Lcom/twitter/android/PostActivity;->f:J

    iget-object v7, p0, Lcom/twitter/android/es;->b:Lcom/twitter/android/PostActivity;

    invoke-virtual {v7}, Lcom/twitter/android/PostActivity;->g()Lcom/twitter/android/api/TweetEntities;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;JJLcom/twitter/android/api/TweetEntities;)V

    invoke-direct {p0}, Lcom/twitter/android/es;->a()V

    goto :goto_0
.end method
