.class public Lcom/dolphin/browser/q/b/f;
.super Ljava/lang/Object;
.source "EvernoteApiCaller.java"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Lcom/dolphin/browser/q/b/a;

.field private c:Lcom/c/a/b/a/b;

.field private d:Lcom/c/b/b/b;

.field private e:Lcom/c/b/d/b;

.field private f:Lcom/dolphin/browser/q/b/o;

.field private g:Lcom/dolphin/browser/q/b/t;

.field private h:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".evernote.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "evernote.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "https://www.evernote.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/q/b/f;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/dolphin/browser/q/b/a;

    invoke-direct {v0}, Lcom/dolphin/browser/q/b/a;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/q/b/f;->b:Lcom/dolphin/browser/q/b/a;

    .line 85
    invoke-direct {p0}, Lcom/dolphin/browser/q/b/f;->g()Lcom/c/a/b/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/q/b/f;->c:Lcom/c/a/b/a/b;

    .line 86
    new-instance v0, Lcom/dolphin/browser/q/b/o;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/q/b/o;-><init>(Lcom/dolphin/browser/q/b/f;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/b/f;->f:Lcom/dolphin/browser/q/b/o;

    .line 87
    new-instance v0, Lcom/dolphin/browser/q/b/t;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/q/b/t;-><init>(Lcom/dolphin/browser/q/b/f;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/b/f;->g:Lcom/dolphin/browser/q/b/t;

    .line 88
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/q/b/f;->h:Ljava/util/Random;

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/q/b/f;)Lcom/c/a/b/a/b;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->c:Lcom/c/a/b/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/q/b/f;Lcom/c/b/b/b;)Lcom/c/b/b/b;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/dolphin/browser/q/b/f;->d:Lcom/c/b/b/b;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/q/b/f;Lcom/dolphin/browser/q/b/n;)Lcom/c/b/c/g;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/b/f;->c(Lcom/dolphin/browser/q/b/n;)Lcom/c/b/c/g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/q/b/f;Lcom/c/b/d/b;)Lcom/c/b/d/b;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/dolphin/browser/q/b/f;->e:Lcom/c/b/d/b;

    return-object p1
.end method

.method private a(Lcom/dolphin/browser/q/b/n;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 370
    iget-object v1, p0, Lcom/dolphin/browser/q/b/f;->c:Lcom/c/a/b/a/b;

    invoke-virtual {v1}, Lcom/c/a/b/a/b;->e()Lcom/c/a/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/c/a/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 371
    const-string v2, "Evernote"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "noteStoreUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-object v0

    .line 376
    :cond_1
    const-string v2, "notestore$"

    const-string v3, "json"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    const-string v2, "Evernote"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "api url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {}, Lcom/dolphin/browser/core/CookieManager;->getInstance()Lcom/dolphin/browser/core/CookieManager;

    move-result-object v2

    const-string v3, "https://www.evernote.com"

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/core/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 380
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/http/Header;

    new-instance v4, Lorg/apache/http/message/BasicHeader;

    const-string v5, "Content-Type"

    const-string v6, "application/json"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v7

    const/4 v4, 0x1

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "cookie"

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 385
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/b/f;->b(Lcom/dolphin/browser/q/b/n;)Ljava/lang/String;

    move-result-object v2

    .line 388
    :try_start_0
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 389
    new-instance v2, Lcom/dolphin/browser/Network/h;

    invoke-direct {v2, v1}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    const-string v1, "Share"

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->a(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/Network/h;->a([Lorg/apache/http/Header;)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/Network/h;->a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->a(I)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->b(I)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v1

    .line 391
    invoke-virtual {v1}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;

    move-result-object v1

    .line 393
    iget-object v2, v1, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 394
    iget-object v1, v1, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v1}, Lcom/dolphin/browser/Network/l;->c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object v1

    .line 395
    if-eqz v1, :cond_0

    .line 396
    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 397
    if-eqz v2, :cond_2

    .line 398
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 405
    :catch_0
    move-exception v1

    .line 406
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 400
    :cond_2
    :try_start_1
    const-string v2, "Evernote"

    const-string v3, "createNewNoteWithHTMLContent success"

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 401
    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/dolphin/browser/q/b/e;)V
    .locals 2

    .prologue
    .line 274
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const-string v0, "Error"

    const-string v1, "Application requires permission to access the Internet"

    invoke-static {p1, v0, v1}, Lcom/dolphin/browser/q/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_0
    return-void

    .line 279
    :cond_0
    new-instance v0, Lcom/dolphin/browser/q/b/y;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/q/b/y;-><init>(Landroid/content/Context;Lcom/dolphin/browser/q/b/e;)V

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/y;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/q/b/f;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/b/f;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 164
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->c:Lcom/c/a/b/a/b;

    invoke-virtual {v0}, Lcom/c/a/b/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/q/b/f;)Lcom/dolphin/browser/q/b/a;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->b:Lcom/dolphin/browser/q/b/a;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/q/b/f;Lcom/dolphin/browser/q/b/n;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/n;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/dolphin/browser/q/b/n;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 413
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 415
    :try_start_0
    const-string v0, "method"

    const-string v1, "NoteStoreExtra.clipNote"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    const-string v0, "id"

    iget-object v1, p0, Lcom/dolphin/browser/q/b/f;->h:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 417
    const-string v0, "jsonrpc"

    const-string v1, "2.0"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 420
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->c:Lcom/c/a/b/a/b;

    invoke-virtual {v0}, Lcom/c/a/b/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 421
    invoke-virtual {p1}, Lcom/dolphin/browser/q/b/n;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 422
    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 423
    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 426
    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    move-object v1, v0

    .line 427
    :goto_0
    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 428
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 430
    const-string v0, "params"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 426
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->c:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    .line 427
    :cond_1
    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->e:Ljava/lang/String;

    goto :goto_1

    .line 428
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<br/>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    .line 431
    :catch_0
    move-exception v0

    .line 432
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!DOCTYPE en-note SYSTEM \"http://xml.evernote.com/pub/enml2.dtd\"><en-note>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v1, "</en-note>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/dolphin/browser/q/b/n;)Lcom/c/b/c/g;
    .locals 3

    .prologue
    .line 441
    new-instance v1, Lcom/c/b/c/g;

    invoke-direct {v1}, Lcom/c/b/c/g;-><init>()V

    .line 442
    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/c/b/c/g;->a(Ljava/lang/String;)V

    .line 444
    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/q/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/c/b/c/g;->b(Ljava/lang/String;)V

    .line 456
    :goto_0
    new-instance v0, Lcom/c/b/c/i;

    invoke-direct {v0}, Lcom/c/b/c/i;-><init>()V

    .line 457
    iget-object v2, p1, Lcom/dolphin/browser/q/b/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/c/b/c/i;->a(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v1, v0}, Lcom/c/b/c/g;->a(Lcom/c/b/c/i;)V

    .line 459
    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->f:Lcom/c/b/c/l;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->f:Lcom/c/b/c/l;

    invoke-virtual {v0}, Lcom/c/b/c/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/c/b/c/g;->c(Ljava/lang/String;)V

    .line 462
    :cond_0
    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->g:Ljava/util/List;

    .line 463
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 464
    invoke-virtual {v1, v0}, Lcom/c/b/c/g;->a(Ljava/util/List;)V

    .line 471
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/q/b/f;->i()Lcom/c/b/b/b;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/q/b/f;->c:Lcom/c/a/b/a/b;

    invoke-virtual {v2}, Lcom/c/a/b/a/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/c/b/b/b;->a(Ljava/lang/String;Lcom/c/b/c/g;)Lcom/c/b/c/g;

    move-result-object v0

    return-object v0

    .line 447
    :cond_2
    const-string v0, ""

    .line 448
    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->e:Ljava/lang/String;

    .line 453
    :goto_1
    invoke-direct {p0, v0}, Lcom/dolphin/browser/q/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/c/b/c/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/dolphin/browser/q/b/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/dolphin/browser/q/b/n;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic c(Lcom/dolphin/browser/q/b/f;)Lcom/dolphin/browser/q/b/o;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->f:Lcom/dolphin/browser/q/b/o;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/q/b/f;)Lcom/dolphin/browser/q/b/t;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->g:Lcom/dolphin/browser/q/b/t;

    return-object v0
.end method

.method static synthetic e(Lcom/dolphin/browser/q/b/f;)Lcom/c/b/d/b;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/dolphin/browser/q/b/f;->h()Lcom/c/b/d/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/dolphin/browser/q/b/f;)Lcom/c/b/b/b;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/dolphin/browser/q/b/f;->i()Lcom/c/b/b/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/dolphin/browser/q/b/f;->a:[Ljava/lang/String;

    return-object v0
.end method

.method private g()Lcom/c/a/b/a/b;
    .locals 7

    .prologue
    .line 95
    new-instance v6, Lcom/dolphin/browser/q/b/ae;

    invoke-direct {v6}, Lcom/dolphin/browser/q/b/ae;-><init>()V

    .line 96
    new-instance v0, Lcom/c/a/a/a;

    invoke-virtual {v6}, Lcom/dolphin/browser/q/b/ae;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/dolphin/browser/q/b/ae;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/dolphin/browser/q/b/ae;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/dolphin/browser/q/b/ae;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/dolphin/browser/q/b/ae;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/c/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v6}, Lcom/dolphin/browser/q/b/ae;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    .line 104
    const-string v3, "evernote-session"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 108
    new-instance v3, Lcom/c/a/b/a/b;

    invoke-direct {v3, v0, v1, v2}, Lcom/c/a/b/a/b;-><init>(Lcom/c/a/a/a;Ljava/io/File;Landroid/content/SharedPreferences;)V

    return-object v3
.end method

.method private h()Lcom/c/b/d/b;
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->c:Lcom/c/a/b/a/b;

    invoke-virtual {v0}, Lcom/c/a/b/a/b;->a()Lcom/c/a/a/a;

    move-result-object v1

    .line 113
    const/4 v0, 0x0

    .line 115
    :try_start_0
    invoke-virtual {v1}, Lcom/c/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/c/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/c/b/e/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/c/b/d/b;
    :try_end_0
    .catch Lorg/apache/c/c/c; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private i()Lcom/c/b/b/b;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->d:Lcom/c/b/b/b;

    if-nez v0, :cond_0

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->c:Lcom/c/a/b/a/b;

    invoke-virtual {v0}, Lcom/c/a/b/a/b;->f()Lcom/c/b/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/q/b/f;->d:Lcom/c/b/b/b;
    :try_end_0
    .catch Lorg/apache/c/c/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->d:Lcom/c/b/b/b;

    return-object v0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/c/b/d/b;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->e:Lcom/c/b/d/b;

    if-nez v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/dolphin/browser/q/b/f;->h()Lcom/c/b/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/q/b/f;->e:Lcom/c/b/d/b;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->e:Lcom/c/b/d/b;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/q/b/ax;)V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lcom/dolphin/browser/q/b/k;

    invoke-direct {v0, p0, p2}, Lcom/dolphin/browser/q/b/k;-><init>(Lcom/dolphin/browser/q/b/f;Lcom/dolphin/browser/q/b/ax;)V

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/q/b/f;->a(Landroid/content/Context;Lcom/dolphin/browser/q/b/e;)V

    .line 271
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/q/b/ay;)V
    .locals 3

    .prologue
    .line 185
    new-instance v0, Lcom/dolphin/browser/q/b/i;

    invoke-direct {v0, p0, p2, p1}, Lcom/dolphin/browser/q/b/i;-><init>(Lcom/dolphin/browser/q/b/f;Lcom/dolphin/browser/q/b/ay;Landroid/content/Context;)V

    .line 207
    new-instance v1, Lcom/dolphin/browser/q/b/j;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/q/b/j;-><init>(Lcom/dolphin/browser/q/b/f;)V

    .line 224
    iget-object v2, p0, Lcom/dolphin/browser/q/b/f;->b:Lcom/dolphin/browser/q/b/a;

    invoke-virtual {v2, v0, v1}, Lcom/dolphin/browser/q/b/a;->a(Lcom/dolphin/browser/q/b/ar;Lcom/dolphin/browser/q/b/c;)V

    .line 225
    return-void
.end method

.method public a(Lcom/dolphin/browser/q/b/au;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->f:Lcom/dolphin/browser/q/b/o;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/q/b/o;->b(Lcom/dolphin/browser/q/b/au;)V

    .line 304
    return-void
.end method

.method public a(Lcom/dolphin/browser/q/b/av;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->g:Lcom/dolphin/browser/q/b/t;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/q/b/t;->a(Lcom/dolphin/browser/q/b/av;)V

    .line 288
    return-void
.end method

.method public a(Lcom/dolphin/browser/q/b/aw;)V
    .locals 4

    .prologue
    .line 128
    new-instance v1, Lcom/dolphin/browser/q/b/g;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/q/b/g;-><init>(Lcom/dolphin/browser/q/b/f;)V

    .line 141
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 160
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/q/b/f;->b:Lcom/dolphin/browser/q/b/a;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1, v0}, Lcom/dolphin/browser/q/b/a;->a(ILcom/dolphin/browser/q/b/ar;Lcom/dolphin/browser/q/b/c;)V

    .line 161
    return-void

    .line 141
    :cond_0
    new-instance v0, Lcom/dolphin/browser/q/b/h;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/q/b/h;-><init>(Lcom/dolphin/browser/q/b/f;Lcom/dolphin/browser/q/b/aw;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/q/b/n;ZLcom/dolphin/browser/q/b/at;)V
    .locals 3

    .prologue
    .line 328
    new-instance v1, Lcom/dolphin/browser/q/b/l;

    invoke-direct {v1, p0, p2, p1}, Lcom/dolphin/browser/q/b/l;-><init>(Lcom/dolphin/browser/q/b/f;ZLcom/dolphin/browser/q/b/n;)V

    .line 340
    if-nez p3, :cond_0

    const/4 v0, 0x0

    .line 358
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/q/b/f;->b:Lcom/dolphin/browser/q/b/a;

    invoke-virtual {v2, v1, v0}, Lcom/dolphin/browser/q/b/a;->a(Lcom/dolphin/browser/q/b/ar;Lcom/dolphin/browser/q/b/c;)V

    .line 359
    return-void

    .line 340
    :cond_0
    new-instance v0, Lcom/dolphin/browser/q/b/m;

    invoke-direct {v0, p0, p3}, Lcom/dolphin/browser/q/b/m;-><init>(Lcom/dolphin/browser/q/b/f;Lcom/dolphin/browser/q/b/at;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/dolphin/browser/q/b/av;)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->g:Lcom/dolphin/browser/q/b/t;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/q/b/t;->a(Ljava/lang/String;Lcom/dolphin/browser/q/b/av;)V

    .line 293
    return-void
.end method

.method public a(Ljava/util/Observer;I)V
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->f:Lcom/dolphin/browser/q/b/o;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/q/b/o;->addObserver(Ljava/util/Observer;)V

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->g:Lcom/dolphin/browser/q/b/t;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/q/b/t;->addObserver(Ljava/util/Observer;)V

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/x;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->g:Lcom/dolphin/browser/q/b/t;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/t;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/dolphin/browser/q/b/au;)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->f:Lcom/dolphin/browser/q/b/o;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/q/b/o;->a(Lcom/dolphin/browser/q/b/au;)V

    .line 312
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->f:Lcom/dolphin/browser/q/b/o;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/o;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/c/b/c/l;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->f:Lcom/dolphin/browser/q/b/o;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/o;->b()Lcom/c/b/c/l;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized e()Z
    .locals 1

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/q/b/f;->c:Lcom/c/a/b/a/b;

    invoke-virtual {v0}, Lcom/c/a/b/a/b;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
