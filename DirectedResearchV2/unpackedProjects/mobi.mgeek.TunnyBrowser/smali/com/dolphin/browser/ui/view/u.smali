.class Lcom/dolphin/browser/ui/view/u;
.super Lcom/dolphin/browser/ui/view/s;
.source "RemoteImageLoader.java"


# instance fields
.field final synthetic f:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

.field private g:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/lang/String;Lcom/dolphin/browser/ui/view/RemoteImageLoader$LargeImageCallback;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/u;->f:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/ui/view/s;-><init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/lang/String;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;)V

    .line 298
    iput-object p4, p0, Lcom/dolphin/browser/ui/view/u;->g:Ljava/io/File;

    .line 299
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 388
    new-instance v0, Lcom/dolphin/browser/ui/view/v;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/ui/view/v;-><init>(Lcom/dolphin/browser/ui/view/u;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Ljava/lang/Runnable;)V

    .line 401
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Ljava/io/File;)V
    .locals 6

    .prologue
    const/16 v4, 0x800

    const/16 v3, 0xa

    const/4 v1, 0x0

    .line 321
    const-string v0, "image/gif"

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 322
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v2, v3, :cond_4

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v2, v4, :cond_0

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v2, v4, :cond_0

    if-eqz v0, :cond_4

    .line 328
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/u;->f:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->b(Lcom/dolphin/browser/ui/view/RemoteImageLoader;)Lcom/d/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/d/c;->a(Ljava/lang/String;)Lcom/d/i;

    move-result-object v1

    .line 329
    if-nez v1, :cond_2

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/u;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    if-eqz v1, :cond_1

    .line 340
    invoke-virtual {v1}, Lcom/d/i;->close()V

    .line 380
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/d/i;->a(I)Ljava/io/File;

    move-result-object v0

    .line 334
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 335
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/view/u;->b(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    if-eqz v1, :cond_1

    .line 340
    invoke-virtual {v1}, Lcom/d/i;->close()V

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    if-eqz v1, :cond_1

    .line 340
    invoke-virtual {v1}, Lcom/d/i;->close()V

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 340
    invoke-virtual {v1}, Lcom/d/i;->close()V

    :cond_3
    throw v0

    .line 343
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v2, v3, :cond_a

    if-eqz v0, :cond_a

    .line 347
    :try_start_3
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/u;->f:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->b(Lcom/dolphin/browser/ui/view/RemoteImageLoader;)Lcom/d/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/d/c;->a(Ljava/lang/String;)Lcom/d/i;

    move-result-object v1

    .line 348
    if-nez v1, :cond_5

    .line 349
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/u;->a(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 371
    if-eqz v1, :cond_1

    .line 372
    invoke-virtual {v1}, Lcom/d/i;->close()V

    goto :goto_0

    .line 352
    :cond_5
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v1, v0}, Lcom/d/i;->a(I)Ljava/io/File;

    move-result-object v0

    .line 353
    new-instance v2, Ljava/io/File;

    const-string v3, "img_cache_v10"

    invoke-direct {v2, p3, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    .line 355
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 357
    :cond_6
    new-instance v3, Ljava/io/File;

    const-string v4, "temp_page.html"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 359
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 361
    :cond_7
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    .line 362
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    const-string v2, "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <title></title>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\" />\r\n    <meta http-equiv=\"Content-Language\" content=\"zh-CN\" />\r\n    <style type=\"text/css\">\r\n        body {padding: 0; margin: 0;background:#000000;}\r\n        body,html{height:100%%;}\r\n        #outer {height:100%%; overflow: hidden; position:relative;width:100%%;}\r\n        #outer[id] {display:table; position:static;}\r\n        #middle {position: absolute; top:50%%;left: 0; text-align: center}\r\n        #middle[id] {display: table-cell; vertical-align: middle; position: static;}\r\n        img{margin: 0 auto;}\r\n    </style>\r\n</head>\r\n    <body onload=\"loadLocalImage()\">\r\n     <div id=\"outer\">\r\n         <div id=\"middle\">\r\n            <img src=\"%s\" />\r\n        </div>\r\n     </div>\r\n    </body>\r\n</html>\r\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 365
    const-string v2, "UTF-8"

    invoke-static {v3, v0, v2}, Lcom/dolphin/browser/util/IOUtilities;->saveToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_8
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/view/u;->a(Landroid/net/Uri;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 371
    if-eqz v1, :cond_1

    .line 372
    invoke-virtual {v1}, Lcom/d/i;->close()V

    goto/16 :goto_0

    .line 368
    :catch_1
    move-exception v0

    .line 369
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 371
    if-eqz v1, :cond_1

    .line 372
    invoke-virtual {v1}, Lcom/d/i;->close()V

    goto/16 :goto_0

    .line 371
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_9

    .line 372
    invoke-virtual {v1}, Lcom/d/i;->close()V

    :cond_9
    throw v0

    .line 377
    :cond_a
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/u;->f:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-static {v0, p1, p2}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 378
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/u;->a(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method private b(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 404
    new-instance v0, Lcom/dolphin/browser/ui/view/w;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/ui/view/w;-><init>(Lcom/dolphin/browser/ui/view/u;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Ljava/lang/Runnable;)V

    .line 417
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/ui/view/s;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/u;->f:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    iget-object v0, v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/u;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/u;->f:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-static {v1, v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 305
    if-nez v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/u;->f:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/u;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/ui/view/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 308
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/u;->f:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-static {v1, v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 309
    if-nez v1, :cond_0

    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/u;->a(Landroid/graphics/Bitmap;)V

    .line 318
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/u;->g:Ljava/io/File;

    invoke-direct {p0, v0, v1, v2}, Lcom/dolphin/browser/ui/view/u;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Ljava/io/File;)V

    goto :goto_0

    .line 316
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/u;->g:Ljava/io/File;

    invoke-direct {p0, v0, v1, v2}, Lcom/dolphin/browser/ui/view/u;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Ljava/io/File;)V

    goto :goto_0
.end method
