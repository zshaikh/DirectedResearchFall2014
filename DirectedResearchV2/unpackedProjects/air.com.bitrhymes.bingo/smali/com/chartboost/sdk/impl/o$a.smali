.class Lcom/chartboost/sdk/impl/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/o;

.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/chartboost/sdk/impl/o$b;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/o;Landroid/widget/ImageView;Lcom/chartboost/sdk/impl/o$b;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    iput-object p1, p0, Lcom/chartboost/sdk/impl/o$a;->a:Lcom/chartboost/sdk/impl/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->c:Ljava/lang/ref/WeakReference;

    .line 114
    new-instance v0, Lcom/chartboost/sdk/impl/o$c;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/o$c;-><init>(Lcom/chartboost/sdk/impl/o$a;)V

    .line 115
    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_0
    iput-object p4, p0, Lcom/chartboost/sdk/impl/o$a;->e:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lcom/chartboost/sdk/impl/o$a;->d:Lcom/chartboost/sdk/impl/o$b;

    .line 119
    iput-object p5, p0, Lcom/chartboost/sdk/impl/o$a;->f:Landroid/os/Bundle;

    .line 120
    iput-object p6, p0, Lcom/chartboost/sdk/impl/o$a;->b:Ljava/lang/String;

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/o$a;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/o$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/o$a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/o$a;)Lcom/chartboost/sdk/impl/o$b;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->d:Lcom/chartboost/sdk/impl/o$b;

    return-object v0
.end method

.method static synthetic e(Lcom/chartboost/sdk/impl/o$a;)Lcom/chartboost/sdk/impl/o;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->a:Lcom/chartboost/sdk/impl/o;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/a$a;)V
    .locals 2

    .prologue
    .line 211
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chartboost/sdk/impl/o$a$1;

    invoke-direct {v1, p0, p1}, Lcom/chartboost/sdk/impl/o$a$1;-><init>(Lcom/chartboost/sdk/impl/o$a;Lcom/chartboost/sdk/Libraries/a$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    const-string v10, "CBWebImageCache"

    .line 128
    .line 129
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->f:Landroid/os/Bundle;

    const-string v1, "paramNoMemoryCache"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 131
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$a;->a:Lcom/chartboost/sdk/impl/o;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/o$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/o;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/a$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    if-eqz v0, :cond_2

    move v2, v9

    :goto_1
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/a$a;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    .line 140
    :cond_0
    :goto_2
    if-eqz v1, :cond_3

    .line 141
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/o$a;->a(Lcom/chartboost/sdk/Libraries/a$a;)V

    .line 205
    :goto_3
    return-void

    :cond_1
    move v0, v9

    .line 129
    goto :goto_0

    :cond_2
    move v2, v11

    .line 133
    goto :goto_1

    .line 135
    :catch_0
    move-exception v1

    move-object v2, v6

    .line 138
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_2

    .line 146
    :cond_3
    invoke-static {}, Lcom/chartboost/sdk/impl/l;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 147
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/o$a;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 154
    :try_start_2
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v2

    .line 155
    :try_start_3
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 156
    const/16 v5, 0xc8

    if-eq v4, v5, :cond_4

    .line 157
    const-string v0, "ImageDownloader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 158
    const-string v5, " while retrieving bitmap from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/chartboost/sdk/impl/o$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/apache/http/HttpResponse;)V

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/o$a;->a(Lcom/chartboost/sdk/Libraries/a$a;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_8

    goto :goto_3

    .line 191
    :catch_1
    move-exception v0

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    .line 192
    :goto_5
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 193
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/apache/http/HttpResponse;)V

    .line 194
    const-string v1, "CBWebImageCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "I/O error while retrieving bitmap from "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/chartboost/sdk/impl/o$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 204
    :goto_6
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/o$a;->a(Lcom/chartboost/sdk/Libraries/a$a;)V

    goto :goto_3

    .line 164
    :cond_4
    :try_start_4
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_8

    move-result-object v4

    .line 165
    if-eqz v4, :cond_9

    .line 168
    :try_start_5
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    .line 169
    :try_start_6
    iget-object v6, p0, Lcom/chartboost/sdk/impl/o$a;->a:Lcom/chartboost/sdk/impl/o;

    iget-object v7, p0, Lcom/chartboost/sdk/impl/o$a;->e:Ljava/lang/String;

    new-instance v8, Lcom/chartboost/sdk/impl/o$e;

    invoke-direct {v8, v5}, Lcom/chartboost/sdk/impl/o$e;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6, v7, v8}, Lcom/chartboost/sdk/impl/o;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/o$e;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 171
    :try_start_7
    iget-object v6, p0, Lcom/chartboost/sdk/impl/o$a;->a:Lcom/chartboost/sdk/impl/o;

    iget-object v7, p0, Lcom/chartboost/sdk/impl/o$a;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/chartboost/sdk/impl/o;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/a$a;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_8

    .line 173
    if-eqz v0, :cond_5

    move v6, v9

    :goto_7
    invoke-virtual {v1, v6}, Lcom/chartboost/sdk/Libraries/a$a;->a(Z)V

    .line 174
    if-nez v0, :cond_8

    .line 175
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$a;->a:Lcom/chartboost/sdk/impl/o;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/o;->a(Lcom/chartboost/sdk/impl/o;)Lcom/chartboost/sdk/Libraries/a;

    move-result-object v0

    iget-object v6, p0, Lcom/chartboost/sdk/impl/o$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Lcom/chartboost/sdk/Libraries/a;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/a$a;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v0, v1

    .line 183
    :goto_8
    if-eqz v5, :cond_7

    .line 184
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_6

    .line 191
    :catch_2
    move-exception v1

    move-object v12, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v12

    goto :goto_5

    :cond_5
    move v6, v11

    .line 173
    goto :goto_7

    .line 177
    :catch_3
    move-exception v0

    .line 180
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v0, v1

    goto :goto_8

    .line 182
    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v6

    .line 183
    :goto_9
    if-eqz v1, :cond_6

    .line 184
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 189
    :goto_a
    throw v0

    .line 191
    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v2, v5

    goto :goto_5

    .line 187
    :cond_6
    invoke-static {v4}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/apache/http/HttpEntity;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_a

    .line 195
    :catch_5
    move-exception v0

    move-object v0, v2

    move-object v1, v5

    .line 196
    :goto_b
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 197
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/apache/http/HttpResponse;)V

    .line 198
    const-string v0, "CBWebImageCache"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect URL: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/chartboost/sdk/impl/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_6

    .line 187
    :cond_7
    :try_start_b
    invoke-static {v4}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/apache/http/HttpEntity;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_6

    .line 195
    :catch_6
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_b

    .line 199
    :catch_7
    move-exception v0

    move-object v2, v1

    move-object v1, v6

    .line 200
    :goto_c
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 201
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/apache/http/HttpResponse;)V

    .line 202
    const-string v1, "CBWebImageCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error while retrieving bitmap from "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/chartboost/sdk/impl/o$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    goto/16 :goto_6

    .line 199
    :catch_8
    move-exception v0

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_c

    :catch_9
    move-exception v0

    move-object v1, v2

    move-object v2, v5

    goto :goto_c

    :catch_a
    move-exception v1

    move-object v12, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v12

    goto :goto_c

    .line 195
    :catch_b
    move-exception v0

    move-object v0, v6

    goto :goto_b

    :catch_c
    move-exception v0

    move-object v0, v2

    goto :goto_b

    .line 191
    :catch_d
    move-exception v0

    move-object v2, v1

    move-object v1, v6

    goto/16 :goto_5

    .line 182
    :catchall_1
    move-exception v0

    move-object v12, v5

    move-object v5, v1

    move-object v1, v12

    goto :goto_9

    .line 135
    :catch_e
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_4

    :cond_8
    move-object v0, v1

    goto/16 :goto_8

    :cond_9
    move-object v0, v1

    goto/16 :goto_6
.end method
