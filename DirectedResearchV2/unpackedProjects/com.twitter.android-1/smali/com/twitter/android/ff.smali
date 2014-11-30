.class final Lcom/twitter/android/ff;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/twitter/android/SignUpActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/SignUpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ff;->a:Lcom/twitter/android/SignUpActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_2
    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_3
    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/twitter/android/ff;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/twitter/android/ff;->a:Lcom/twitter/android/SignUpActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/SignUpActivity;->dismissDialog(I)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ff;->a:Lcom/twitter/android/SignUpActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/twitter/android/SignUpActivity;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/ff;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ff;->a:Lcom/twitter/android/SignUpActivity;

    iput-object p1, v0, Lcom/twitter/android/SignUpActivity;->m:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/twitter/android/ff;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ff;->a:Lcom/twitter/android/SignUpActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/SignUpActivity;->showDialog(I)V

    goto :goto_0
.end method
