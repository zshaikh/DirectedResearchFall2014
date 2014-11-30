.class public Lcom/dolphin/browser/q/c/b;
.super Ljava/lang/Object;
.source "FacebookManager.java"


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:Lcom/dolphin/browser/q/c/b;


# instance fields
.field private c:Lcom/facebook/dolphin/Facebook;

.field private d:Lcom/facebook/dolphin/AsyncFacebookRunner;

.field private e:Lcom/dolphin/browser/q/c/s;

.field private f:Z

.field private g:Lcom/dolphin/browser/q/c/t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "photo_upload"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "publish_actions"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/q/c/b;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/facebook/dolphin/Facebook;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0242

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/core/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/dolphin/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/c/b;->c:Lcom/facebook/dolphin/Facebook;

    .line 81
    new-instance v0, Lcom/facebook/dolphin/AsyncFacebookRunner;

    iget-object v1, p0, Lcom/dolphin/browser/q/c/b;->c:Lcom/facebook/dolphin/Facebook;

    invoke-direct {v0, v1}, Lcom/facebook/dolphin/AsyncFacebookRunner;-><init>(Lcom/facebook/dolphin/Facebook;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/c/b;->d:Lcom/facebook/dolphin/AsyncFacebookRunner;

    .line 82
    new-instance v0, Lcom/dolphin/browser/q/c/s;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/q/c/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/c/b;->e:Lcom/dolphin/browser/q/c/s;

    .line 83
    new-instance v0, Lcom/dolphin/browser/q/c/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/q/c/l;-><init>(Lcom/dolphin/browser/q/c/b;Lcom/dolphin/browser/q/c/c;)V

    .line 84
    invoke-static {v0}, Lcom/facebook/dolphin/SessionEvents;->addAuthListener(Lcom/facebook/dolphin/SessionEvents$AuthListener;)V

    .line 85
    invoke-static {v0}, Lcom/facebook/dolphin/SessionEvents;->addLogoutListener(Lcom/facebook/dolphin/SessionEvents$LogoutListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/dolphin/browser/q/c/b;->b()V

    .line 87
    return-void
.end method

.method public static final a()Lcom/dolphin/browser/q/c/b;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/dolphin/browser/q/c/b;->b:Lcom/dolphin/browser/q/c/b;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/dolphin/browser/q/c/b;

    invoke-direct {v0}, Lcom/dolphin/browser/q/c/b;-><init>()V

    sput-object v0, Lcom/dolphin/browser/q/c/b;->b:Lcom/dolphin/browser/q/c/b;

    .line 76
    :cond_0
    sget-object v0, Lcom/dolphin/browser/q/c/b;->b:Lcom/dolphin/browser/q/c/b;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/q/c/b;)Lcom/facebook/dolphin/Facebook;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/q/c/b;->c:Lcom/facebook/dolphin/Facebook;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/q/c/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/c/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/q/c/b;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/q/c/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 638
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 640
    invoke-static {p1}, Lcom/dolphin/browser/util/cn;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 641
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :cond_0
    if-eqz p2, :cond_1

    .line 644
    const-string v1, "picture"

    invoke-static {p2}, Lcom/facebook/dolphin/Util;->scaleImage(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 648
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/q/c/b;->c:Lcom/facebook/dolphin/Facebook;

    const-string v2, "me/photos"

    const-string v3, "POST"

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/dolphin/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 656
    :goto_0
    return-object v0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 656
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 651
    :catch_1
    move-exception v0

    .line 652
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 653
    :catch_2
    move-exception v0

    .line 654
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic a(Lcom/dolphin/browser/q/c/b;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/dolphin/browser/q/c/b;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/q/c/b;)Lcom/dolphin/browser/q/c/s;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/q/c/b;->e:Lcom/dolphin/browser/q/c/s;

    return-object v0
.end method

.method private b(Ljava/lang/String;Lcom/dolphin/browser/q/c/a;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 525
    invoke-virtual {p2}, Lcom/dolphin/browser/q/c/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-virtual {p2}, Lcom/dolphin/browser/q/c/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-virtual {p2}, Lcom/dolphin/browser/q/c/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 528
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/dolphin/browser/q/c/a;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 530
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 532
    invoke-static {p1}, Lcom/dolphin/browser/util/cn;->j(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 533
    const-string v5, "message"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 536
    const-string v5, "link"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 539
    const-string v0, "description"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 542
    const-string v0, "caption"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 545
    const-string v0, "picture"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/q/c/b;->c:Lcom/facebook/dolphin/Facebook;

    const-string v1, "me/feed"

    const-string v2, "POST"

    invoke-virtual {v0, v1, v4, v2}, Lcom/facebook/dolphin/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 557
    :goto_0
    return-object v0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 557
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 552
    :catch_1
    move-exception v0

    .line 553
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 554
    :catch_2
    move-exception v0

    .line 555
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic c(Lcom/dolphin/browser/q/c/b;)Lcom/dolphin/browser/q/c/t;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/q/c/b;->g:Lcom/dolphin/browser/q/c/t;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 699
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 701
    invoke-static {p1}, Lcom/dolphin/browser/util/cn;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 716
    :goto_0
    return-object v0

    .line 705
    :cond_0
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :try_start_0
    iget-object v2, p0, Lcom/dolphin/browser/q/c/b;->c:Lcom/facebook/dolphin/Facebook;

    const-string v3, "me/feed"

    const-string v4, "POST"

    invoke-virtual {v2, v3, v1, v4}, Lcom/facebook/dolphin/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 709
    :catch_0
    move-exception v1

    .line 710
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 711
    :catch_1
    move-exception v1

    .line 712
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 713
    :catch_2
    move-exception v1

    .line 714
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/dolphin/browser/q/c/a;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 489
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 490
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "access_token"

    invoke-virtual {p0}, Lcom/dolphin/browser/q/c/b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "message"

    invoke-direct {v0, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p2}, Lcom/dolphin/browser/q/c/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/dolphin/browser/q/c/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v0, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    new-instance v2, Lcom/dolphin/browser/Network/h;

    const-string v3, "https://graph.facebook.com/me/dolphinbrowser:share"

    invoke-direct {v2, v3}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    const-string v3, "Share"

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v2

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/Network/h;->a(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/Network/h;->a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 508
    :try_start_1
    invoke-virtual {v0}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;

    move-result-object v0

    .line 509
    iget-object v2, v0, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 510
    iget-object v0, v0, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 519
    :cond_0
    :goto_1
    return-object v1

    .line 499
    :catch_0
    move-exception v0

    .line 500
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 514
    :catch_1
    move-exception v0

    .line 515
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 516
    :catch_2
    move-exception v0

    .line 517
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public a(Ljava/lang/String;ZLcom/dolphin/browser/q/c/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/dolphin/browser/q/c/b;->a(Ljava/lang/String;Lcom/dolphin/browser/q/c/a;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/dolphin/browser/q/c/b;->b(Ljava/lang/String;Lcom/dolphin/browser/q/c/a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/q/c/b;->c:Lcom/facebook/dolphin/Facebook;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/dolphin/Facebook;->authorizeCallback(IILandroid/content/Intent;)V

    .line 122
    return-void
.end method

.method public a(Landroid/app/Activity;ILcom/dolphin/browser/q/c/o;)V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/q/c/b;->c:Lcom/facebook/dolphin/Facebook;

    sget-object v1, Lcom/dolphin/browser/q/c/b;->a:[Ljava/lang/String;

    new-instance v2, Lcom/dolphin/browser/q/c/k;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p3, v3}, Lcom/dolphin/browser/q/c/k;-><init>(Lcom/dolphin/browser/q/c/b;Lcom/dolphin/browser/q/c/o;Lcom/dolphin/browser/q/c/r;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/facebook/dolphin/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/dolphin/Facebook$DialogListener;)V

    .line 249
    return-void
.end method

.method public a(Landroid/app/Activity;ILcom/dolphin/browser/q/c/o;Lcom/dolphin/browser/q/c/r;)V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/q/c/b;->c:Lcom/facebook/dolphin/Facebook;

    sget-object v1, Lcom/dolphin/browser/q/c/b;->a:[Ljava/lang/String;

    new-instance v2, Lcom/dolphin/browser/q/c/k;

    invoke-direct {v2, p0, p3, p4}, Lcom/dolphin/browser/q/c/k;-><init>(Lcom/dolphin/browser/q/c/b;Lcom/dolphin/browser/q/c/o;Lcom/dolphin/browser/q/c/r;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/facebook/dolphin/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/dolphin/Facebook$DialogListener;)V

    .line 255
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/dolphin/browser/q/c/p;)V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/dolphin/browser/q/c/b;->c:Lcom/facebook/dolphin/Facebook;

    invoke-virtual {v0}, Lcom/facebook/dolphin/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-static {}, Lcom/dolphin/browser/share/facebook/a;->b()Lcom/dolphin/browser/share/facebook/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/share/facebook/a;->c()V

    .line 312
    invoke-static {}, Lcom/facebook/dolphin/SessionEvents;->onLogoutBegin()V

    .line 313
    if-eqz p2, :cond_0

    .line 314
    invoke-interface {p2}, Lcom/dolphin/browser/q/c/p;->b()V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/c/b;->d:Lcom/facebook/dolphin/AsyncFacebookRunner;

    new-instance v1, Lcom/dolphin/browser/q/c/c;

    invoke-direct {v1, p0, p2}, Lcom/dolphin/browser/q/c/c;-><init>(Lcom/dolphin/browser/q/c/b;Lcom/dolphin/browser/q/c/p;)V

    invoke-virtual {v0, p1, v1}, Lcom/facebook/dolphin/AsyncFacebookRunner;->logout(Landroid/content/Context;Lcom/facebook/dolphin/AsyncFacebookRunner$RequestListener;)V

    .line 380
    :cond_1
    return-void
.end method

.method public a(Lcom/dolphin/browser/q/c/n;)V
    .locals 4

    .prologue
    .line 561
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 562
    const-string v1, "fields"

    const-string v2, "id, name"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v1, p0, Lcom/dolphin/browser/q/c/b;->d:Lcom/facebook/dolphin/AsyncFacebookRunner;

    const-string v2, "me/friends"

    new-instance v3, Lcom/dolphin/browser/q/c/h;

    invoke-direct {v3, p0, p1}, Lcom/dolphin/browser/q/c/h;-><init>(Lcom/dolphin/browser/q/c/b;Lcom/dolphin/browser/q/c/n;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/dolphin/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/dolphin/AsyncFacebookRunner$RequestListener;)V

    .line 595
    return-void
.end method

.method public a(Lcom/dolphin/browser/q/c/r;)V
    .locals 4

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/dolphin/browser/q/c/b;->f:Z

    if-eqz v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/q/c/b;->f:Z

    .line 164
    if-eqz p1, :cond_1

    .line 165
    invoke-interface {p1}, Lcom/dolphin/browser/q/c/r;->a()V

    .line 167
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    const-string v1, "fields"

    const-string v2, "id, email, username, picture"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/dolphin/browser/q/c/b;->d:Lcom/facebook/dolphin/AsyncFacebookRunner;

    const-string v2, "me"

    new-instance v3, Lcom/dolphin/browser/q/c/m;

    invoke-direct {v3, p0, p1}, Lcom/dolphin/browser/q/c/m;-><init>(Lcom/dolphin/browser/q/c/b;Lcom/dolphin/browser/q/c/r;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/dolphin/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/dolphin/AsyncFacebookRunner$RequestListener;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/q/c/t;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/dolphin/browser/q/c/b;->g:Lcom/dolphin/browser/q/c/t;

    .line 70
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/q/c/b;->e:Lcom/dolphin/browser/q/c/s;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/q/c/s;->a(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/dolphin/browser/q/c/q;)V
    .locals 2

    .prologue
    .line 600
    new-instance v0, Lcom/dolphin/browser/q/c/i;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/dolphin/browser/q/c/i;-><init>(Lcom/dolphin/browser/q/c/b;Lcom/dolphin/browser/q/c/q;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 634
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/dolphin/browser/q/c/q;)V
    .locals 2

    .prologue
    .line 662
    new-instance v0, Lcom/dolphin/browser/q/c/j;

    invoke-direct {v0, p0, p2, p1}, Lcom/dolphin/browser/q/c/j;-><init>(Lcom/dolphin/browser/q/c/b;Lcom/dolphin/browser/q/c/q;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 696
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/dolphin/browser/q/c/u;)V
    .locals 2

    .prologue
    .line 385
    new-instance v0, Lcom/dolphin/browser/q/c/f;

    invoke-direct {v0, p0, p2, p1}, Lcom/dolphin/browser/q/c/f;-><init>(Lcom/dolphin/browser/q/c/b;Lcom/dolphin/browser/q/c/u;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/c/f;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 406
    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/dolphin/browser/q/c/a;Lcom/dolphin/browser/q/c/q;)V
    .locals 6

    .prologue
    .line 445
    new-instance v0, Lcom/dolphin/browser/q/c/g;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/q/c/g;-><init>(Lcom/dolphin/browser/q/c/b;Lcom/dolphin/browser/q/c/q;Ljava/lang/String;ZLcom/dolphin/browser/q/c/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/c/g;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 479
    return-void
.end method

.method public b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 410
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-object v1

    .line 414
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 415
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "id"

    invoke-direct {v0, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "scrape"

    const-string v4, "true"

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v0, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_1
    new-instance v2, Lcom/dolphin/browser/Network/h;

    const-string v3, "https://graph.facebook.com"

    invoke-direct {v2, v3}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    const-string v3, "Share"

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v2

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/Network/h;->a(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/Network/h;->a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 428
    :try_start_1
    invoke-virtual {v0}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;

    move-result-object v0

    .line 429
    iget-object v2, v0, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 430
    iget-object v0, v0, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1

    .line 434
    :catch_1
    move-exception v0

    .line 435
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 436
    :catch_2
    move-exception v0

    .line 437
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/dolphin/browser/q/c/b;->c:Lcom/facebook/dolphin/Facebook;

    .line 92
    invoke-static {v1, v0}, Lcom/facebook/dolphin/SessionStore;->restore(Lcom/facebook/dolphin/Facebook;Landroid/content/Context;)Z

    .line 93
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/q/c/b;->e:Lcom/dolphin/browser/q/c/s;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/s;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/q/c/b;->e:Lcom/dolphin/browser/q/c/s;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/s;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/q/c/b;->e:Lcom/dolphin/browser/q/c/s;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/s;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dolphin/browser/q/c/b;->e:Lcom/dolphin/browser/q/c/s;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/s;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/q/c/b;->c:Lcom/facebook/dolphin/Facebook;

    invoke-virtual {v0}, Lcom/facebook/dolphin/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/q/c/b;->c:Lcom/facebook/dolphin/Facebook;

    invoke-virtual {v0}, Lcom/facebook/dolphin/Facebook;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 720
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "com.facebook.katana"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/bw;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
