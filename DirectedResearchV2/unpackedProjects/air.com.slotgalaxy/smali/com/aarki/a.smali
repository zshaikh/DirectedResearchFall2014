.class final Lcom/aarki/a;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aarki/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Ljava/util/Date;

.field private c:Z

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Lcom/aarki/Aarki$EventCallbackListener;

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const-string v4, "preferences"

    .line 210
    const-string v0, "Aarki"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 106
    new-instance v0, Lcom/aarki/a$1;

    invoke-direct {v0, p0}, Lcom/aarki/a$1;-><init>(Lcom/aarki/a;)V

    iput-object v0, p0, Lcom/aarki/a;->h:Ljava/lang/Runnable;

    .line 212
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/aarki/a;->b:Ljava/util/Date;

    .line 214
    const-string v0, "aarki"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/aarki/a;->a:Landroid/content/SharedPreferences;

    .line 216
    iget-object v0, p0, Lcom/aarki/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/aarki/a;->a:Landroid/content/SharedPreferences;

    const-string v2, "preferences"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 218
    if-ge v1, v3, :cond_0

    .line 219
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 222
    :cond_0
    const-string v1, "preferences"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 223
    const-string v1, "sdk"

    const-string v2, "2.8"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 224
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/aarki/a;->d:J

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aarki/a;->c:Z

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aarki/a;->e:Ljava/lang/String;

    .line 229
    return-void
.end method

.method static synthetic a(Lcom/aarki/a;J)J
    .locals 0

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/aarki/a;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/aarki/a;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/aarki/a;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const-string v5, "referrer"

    const-string v7, "event:"

    .line 299
    iget-object v0, p0, Lcom/aarki/a;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event:"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACTIVITY: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "install"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INSTALL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Previously queued event \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    :goto_0
    return-void

    .line 314
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "app_key"

    iget-object v3, p0, Lcom/aarki/a;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-static {v0}, Lcom/aarki/a;->a(Ljava/util/List;)V

    .line 317
    const-string v1, "user_agent"

    invoke-static {}, Lcom/aarki/b;->a()Lcom/aarki/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aarki/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aarki/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v1, "referrer"

    iget-object v1, p0, Lcom/aarki/a;->a:Landroid/content/SharedPreferences;

    const-string v2, "referrer"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/aarki/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 321
    const-string v2, "gmt"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 322
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "launch_time"

    iget-object v4, p0, Lcom/aarki/a;->b:Ljava/util/Date;

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Now: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_2

    .line 327
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, p3

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 329
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/high16 v5, 0x100000

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 330
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "event_queue_id"

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "scheduled_time"

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Queueing contact at: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    new-instance v1, Lcom/aarki/a$a;

    invoke-direct {v1, p2, v2, p5, v0}, Lcom/aarki/a$a;-><init>(Ljava/lang/String;Ljava/util/Date;ZLjava/util/List;)V

    .line 336
    iget-object v0, p0, Lcom/aarki/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "event:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/aarki/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 338
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aarki/a;->c:Z

    .line 340
    invoke-direct {p0}, Lcom/aarki/a;->b()V

    goto/16 :goto_0
.end method

.method static a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    invoke-static {}, Lcom/aarki/b;->a()Lcom/aarki/b;

    move-result-object v0

    .line 279
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sdk_version"

    const-string v3, "2.8"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "device_platform"

    invoke-static {}, Lcom/aarki/b;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "device_model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "device_manufacturer"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "device_brand"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "device_product"

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    const-string v1, "client_type"

    invoke-virtual {v0}, Lcom/aarki/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aarki/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v1, "uixe"

    invoke-virtual {v0}, Lcom/aarki/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aarki/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aarki/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v1, "pixe"

    invoke-virtual {v0}, Lcom/aarki/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aarki/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aarki/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v1, "dixe"

    invoke-virtual {v0}, Lcom/aarki/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aarki/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aarki/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "nixe"

    invoke-virtual {v0}, Lcom/aarki/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aarki/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aarki/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v1, "user_agent"

    invoke-static {}, Lcom/aarki/b;->a()Lcom/aarki/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aarki/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aarki/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "app_sec_key"

    invoke-static {}, Lcom/aarki/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aarki/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "package_name"

    invoke-virtual {v0}, Lcom/aarki/b;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aarki/a$1$1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "country_code"

    invoke-virtual {v0}, Lcom/aarki/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aarki/a$1$1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "current_locale"

    invoke-virtual {v0}, Lcom/aarki/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aarki/a$1$1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 257
    if-eqz p2, :cond_0

    .line 258
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aarki/a;Z)Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aarki/a;->c:Z

    return v0
.end method

.method private declared-synchronized b()V
    .locals 2

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aarki/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aarki/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/aarki/a;->d:J

    .line 252
    iget-object v0, p0, Lcom/aarki/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aarki/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/aarki/a;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/aarki/a;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/aarki/a;)Lcom/aarki/Aarki$EventCallbackListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/aarki/a;->f:Lcom/aarki/Aarki$EventCallbackListener;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 273
    invoke-static {p0}, Lcom/aarki/a$1$1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Z.*m_R/u%#6wX]^Rk-phjk}>kn[RNw=*w|x;NoE@"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v8

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    rem-int v7, v3, v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/aarki/a;)J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/aarki/a;->d:J

    return-wide v0
.end method

.method static synthetic e(Lcom/aarki/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/aarki/a;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 2

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aarki/a;->g:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/aarki/a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aarki/a;->g:Landroid/os/Handler;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/aarki/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aarki/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/aarki/Aarki$EventCallbackListener;)V
    .locals 1

    .prologue
    .line 368
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/aarki/a;->f:Lcom/aarki/Aarki$EventCallbackListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :cond_0
    monitor-exit p0

    return-void

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aarki/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 234
    const-string v1, "referrer"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Storing referrer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 349
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/aarki/a;->e:Ljava/lang/String;

    .line 352
    const-string v1, "install"

    if-eqz p2, :cond_0

    const-wide/16 v2, 0x38e

    move-wide v3, v2

    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/aarki/a;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 356
    const-string v1, "activity"

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/aarki/a;->a(Ljava/lang/String;Ljava/lang/String;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    :cond_0
    move-wide v3, v2

    .line 352
    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appevent-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/aarki/a;->a(Ljava/lang/String;Ljava/lang/String;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
