.class final Lcom/twitter/android/s;
.super Landroid/os/AsyncTask;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lcom/twitter/android/cx;

.field private synthetic c:Lcom/twitter/android/PostActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/PostActivity;Ljava/io/File;Lcom/twitter/android/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/s;->c:Lcom/twitter/android/PostActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/s;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/twitter/android/s;->b:Lcom/twitter/android/cx;

    return-void
.end method

.method private varargs a([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/twitter/android/s;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x500000

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/s;->b:Lcom/twitter/android/cx;

    const/4 v2, 0x4

    iput v2, v1, Lcom/twitter/android/cx;->f:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/twitter/android/s;->b:Lcom/twitter/android/cx;

    iput-object v0, v1, Lcom/twitter/android/cx;->e:Landroid/net/Uri;

    iget-object v1, p0, Lcom/twitter/android/s;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/twitter/android/s;->c:Lcom/twitter/android/PostActivity;

    invoke-virtual {v1}, Lcom/twitter/android/PostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/s;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/s;->c:Lcom/twitter/android/PostActivity;

    const v4, 0x7f0b010e

    invoke-virtual {v3, v4}, Lcom/twitter/android/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/s;->b:Lcom/twitter/android/cx;

    iput-object v0, v1, Lcom/twitter/android/cx;->e:Landroid/net/Uri;

    iget-object v1, p0, Lcom/twitter/android/s;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/twitter/android/s;->b:Lcom/twitter/android/cx;

    iput-object v0, v1, Lcom/twitter/android/cx;->e:Landroid/net/Uri;

    iget-object v1, p0, Lcom/twitter/android/s;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/twitter/android/s;->b:Lcom/twitter/android/cx;

    iput-object v0, v1, Lcom/twitter/android/cx;->e:Landroid/net/Uri;

    iget-object v1, p0, Lcom/twitter/android/s;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/twitter/android/s;->b:Lcom/twitter/android/cx;

    iput-object v0, v1, Lcom/twitter/android/cx;->e:Landroid/net/Uri;

    iget-object v1, p0, Lcom/twitter/android/s;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/twitter/android/s;->b:Lcom/twitter/android/cx;

    iput-object v0, v2, Lcom/twitter/android/cx;->e:Landroid/net/Uri;

    iget-object v0, p0, Lcom/twitter/android/s;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/twitter/android/s;->a([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/s;->c:Lcom/twitter/android/PostActivity;

    iget-object v1, p0, Lcom/twitter/android/s;->b:Lcom/twitter/android/cx;

    invoke-virtual {v0, v1}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/cx;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/s;->c:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->h:Landroid/widget/ImageView;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/twitter/android/s;->c:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/s;->c:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->i:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/twitter/android/s;->b:Lcom/twitter/android/cx;

    iget v1, v1, Lcom/twitter/android/cx;->f:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/s;->c:Lcom/twitter/android/PostActivity;

    iget-object v1, p0, Lcom/twitter/android/s;->c:Lcom/twitter/android/PostActivity;

    const v2, 0x7f0b00a9

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/PostActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/s;->c:Lcom/twitter/android/PostActivity;

    iget-object v1, p0, Lcom/twitter/android/s;->c:Lcom/twitter/android/PostActivity;

    const v2, 0x7f0b00a4

    invoke-virtual {v1, v2}, Lcom/twitter/android/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/twitter/android/s;->c:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->j:Lcom/twitter/android/widget/ShadowTextView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ShadowTextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/twitter/android/s;->c:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/s;->c:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/s;->c:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
