.class final Lcom/twitter/android/az;
.super Landroid/os/AsyncTask;

# interfaces
.implements Lcom/twitter/android/network/g;


# instance fields
.field private synthetic a:Lcom/twitter/android/ImageActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/ImageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/az;->a:Lcom/twitter/android/ImageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/ImageActivity;Lcom/twitter/android/at;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/az;-><init>(Lcom/twitter/android/ImageActivity;)V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    long-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    long-to-int v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/az;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    check-cast p1, [Landroid/net/Uri;

    iget-object v0, p0, Lcom/twitter/android/az;->a:Lcom/twitter/android/ImageActivity;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Lcom/twitter/android/network/a;

    invoke-static {v0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v3

    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    aget-object v5, p1, v6

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v1, p0}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;Lcom/twitter/android/network/g;)V

    invoke-virtual {v2, v6}, Lcom/twitter/android/network/a;->a(I)Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/twitter/android/util/h;->a([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/twitter/android/az;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/az;->a:Lcom/twitter/android/ImageActivity;

    iput-object p1, v0, Lcom/twitter/android/ImageActivity;->c:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/az;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/twitter/android/az;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/az;->a:Lcom/twitter/android/ImageActivity;

    const v1, 0x7f0b012a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/az;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->b:Landroid/widget/ProgressBar;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/twitter/android/az;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/twitter/android/az;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/az;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected final bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    check-cast p1, [Ljava/lang/Integer;

    iget-object v0, p0, Lcom/twitter/android/az;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/twitter/android/az;->a:Lcom/twitter/android/ImageActivity;

    iget-object v0, v0, Lcom/twitter/android/ImageActivity;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
