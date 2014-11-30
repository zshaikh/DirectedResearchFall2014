.class final Lcom/twitter/android/bn;
.super Landroid/os/AsyncTask;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/twitter/android/network/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/EditProfileActivity;

.field private final b:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/twitter/android/EditProfileActivity;)V
    .locals 3

    iput-object p1, p0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v1, 0x7f0b0032

    invoke-virtual {p1, v1}, Lcom/twitter/android/EditProfileActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    const/4 v1, -0x2

    const v2, 0x7f0b00b3

    invoke-virtual {p1, v2}, Lcom/twitter/android/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/twitter/android/bn;->b:Landroid/app/ProgressDialog;

    return-void
.end method

.method private varargs a([Landroid/net/Uri;)Lcom/twitter/android/api/c;
    .locals 14

    const/4 v1, 0x0

    const/4 v10, 0x0

    iget-object v12, p0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v0, p0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v0, v0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v6

    aget-object v1, p1, v1

    invoke-static {v12}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    :try_start_0
    new-instance v4, Lcom/twitter/android/network/f;

    invoke-direct {v4, p0}, Lcom/twitter/android/network/f;-><init>(Lcom/twitter/android/network/g;)V

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v13, v1, [B

    const/4 v1, 0x0

    array-length v2, v13

    invoke-virtual {v11, v13, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const-string v2, "image"

    const/16 v3, 0x8

    invoke-static {v3}, Lcom/twitter/android/util/q;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3, v13}, Lcom/twitter/android/network/f;->a(Ljava/lang/String;Ljava/lang/String;[B)I

    invoke-virtual {v4}, Lcom/twitter/android/network/f;->a()V

    sget-boolean v2, Lcom/twitter/android/EditProfileActivity;->d:Z

    if-eqz v2, :cond_0

    const-string v2, "EditProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uploading bytes: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v12}, Lcom/twitter/android/network/d;->a(Landroid/content/Context;)Lcom/twitter/android/network/d;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v5, "account"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "update_profile_image"

    aput-object v5, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Lcom/twitter/android/network/i;

    iget-object v7, p0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v7, v7, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v7}, Lcom/twitter/android/client/e;->d()Lcom/twitter/android/network/c;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/c;)V

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Lorg/apache/http/HttpEntity;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/network/d;->a(Lcom/twitter/android/network/a;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/a;->a(I)Lcom/twitter/android/network/a;

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/twitter/android/api/y;->a:Lorg/codehaus/jackson/d;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/d;->a([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/c;

    move-result-object v9

    const/4 v0, 0x0

    invoke-static {v12, v6, v9, v0}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/android/api/c;Lcom/twitter/android/api/o;)V

    iget-wide v0, v9, Lcom/twitter/android/api/c;->a:J

    invoke-static {v12, v0, v1}, Lcom/twitter/android/provider/al;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/al;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    iget-wide v1, v9, Lcom/twitter/android/api/c;->a:J

    iget-object v3, v9, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0c0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object v4, v13

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/provider/al;->a(JLjava/lang/String;[BI)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v11}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    move-object v0, v9

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v11}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    :goto_1
    move-object v0, v10

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v10

    :goto_2
    :try_start_2
    sget-boolean v2, Lcom/twitter/android/EditProfileActivity;->d:Z

    if-eqz v2, :cond_2

    const-string v2, "EditProfile"

    const-string v3, "updateProfileImage"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v11, v10

    :goto_3
    invoke-static {v11}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v11, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v11

    goto :goto_2
.end method


# virtual methods
.method public final a(JJ)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, p3

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/bn;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/twitter/android/bn;->a([Landroid/net/Uri;)Lcom/twitter/android/api/c;

    move-result-object v0

    return-object v0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/bn;->cancel(Z)Z

    return-void
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    check-cast p1, Lcom/twitter/android/api/c;

    iget-object v0, p0, Lcom/twitter/android/bn;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v0, v0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/api/c;)V

    iget-object v1, p0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-virtual {v1, v5}, Lcom/twitter/android/EditProfileActivity;->a(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/twitter/android/r;

    invoke-direct {v2, p0, v0, p1}, Lcom/twitter/android/r;-><init>(Lcom/twitter/android/bn;Lcom/twitter/android/client/e;Lcom/twitter/android/api/c;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/EditProfileActivity;

    iput-object v5, v0, Lcom/twitter/android/EditProfileActivity;->e:Landroid/net/Uri;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-virtual {v0}, Lcom/twitter/android/EditProfileActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/EditProfileActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/EditProfileActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/bn;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method protected final bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    check-cast p1, [Ljava/lang/Integer;

    iget-object v0, p0, Lcom/twitter/android/bn;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method
