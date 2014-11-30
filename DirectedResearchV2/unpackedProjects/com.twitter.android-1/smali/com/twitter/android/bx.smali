.class final Lcom/twitter/android/bx;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/twitter/android/ImageActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/ImageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/ImageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/ImageActivity;Lcom/twitter/android/at;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/bx;-><init>(Lcom/twitter/android/ImageActivity;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, [Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/ImageActivity;

    invoke-virtual {v1}, Lcom/twitter/android/ImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/ImageActivity;

    iget-object v2, v2, Lcom/twitter/android/ImageActivity;->e:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/ImageActivity;

    iget-object v3, v3, Lcom/twitter/android/ImageActivity;->f:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/ImageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ImageActivity;->dismissDialog(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/ImageActivity;

    iput-object p1, v0, Lcom/twitter/android/ImageActivity;->d:Landroid/net/Uri;

    iget-object v0, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/ImageActivity;

    const v1, 0x7f0b0140

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/ImageActivity;

    const v1, 0x7f0b013f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/ImageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ImageActivity;->showDialog(I)V

    return-void
.end method
