.class final Lcom/twitter/android/gm;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/twitter/android/PostActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/PostActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/gm;->a:Lcom/twitter/android/PostActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    check-cast p1, [Ljava/lang/CharSequence;

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    sget-object v4, Ll;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/twitter/android/gm;->a:Lcom/twitter/android/PostActivity;

    iget-object v4, v4, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/twitter/android/client/e;->c(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/twitter/android/gm;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0}, Lcom/twitter/android/PostActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/gm;->a:Lcom/twitter/android/PostActivity;

    invoke-static {v1}, Lcom/twitter/android/PostActivity;->b(Lcom/twitter/android/PostActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/gm;->a:Lcom/twitter/android/PostActivity;

    const v2, 0x7f0b010f

    invoke-static {v1, v2}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/PostActivity;I)V

    iget-object v1, p0, Lcom/twitter/android/gm;->a:Lcom/twitter/android/PostActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/PostActivity;Z)Z

    iget-object v1, p0, Lcom/twitter/android/gm;->a:Lcom/twitter/android/PostActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/twitter/android/PostActivity;->b(Lcom/twitter/android/PostActivity;I)I

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/gm;->a:Lcom/twitter/android/PostActivity;

    invoke-static {v1, v0}, Lcom/twitter/android/PostActivity;->c(Lcom/twitter/android/PostActivity;I)I

    iget-object v0, p0, Lcom/twitter/android/gm;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0}, Lcom/twitter/android/PostActivity;->e()V

    :cond_1
    return-void
.end method
