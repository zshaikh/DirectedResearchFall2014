.class public Lcom/dolphin/browser/voice/command/d;
.super Ljava/lang/Object;
.source "RecognizingTask.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:Z

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/voice/command/i;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/dolphin/browser/voice/command/a/f;

.field private final g:Ljava/lang/String;

.field private final h:J

.field private i:Z

.field private j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "(\u6253\u5f00|\u4e0a|\u8fdb\u5165|\u8fdb|\u5f00|open|go to|go|goto|browse|view|load)? *(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/voice/command/d;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/voice/command/a/f;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/dolphin/browser/voice/command/a/f;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/voice/command/i;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/voice/command/d;->b:Z

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/voice/command/d;->h:J

    .line 50
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/d;->c:Landroid/content/Context;

    .line 51
    iput-object p3, p0, Lcom/dolphin/browser/voice/command/d;->d:Ljava/util/HashMap;

    .line 52
    iput-object p2, p0, Lcom/dolphin/browser/voice/command/d;->f:Lcom/dolphin/browser/voice/command/a/f;

    .line 53
    iput-object p4, p0, Lcom/dolphin/browser/voice/command/d;->e:Ljava/util/HashMap;

    .line 54
    iput-object p5, p0, Lcom/dolphin/browser/voice/command/d;->g:Ljava/lang/String;

    .line 55
    iput-boolean p6, p0, Lcom/dolphin/browser/voice/command/d;->i:Z

    .line 56
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/16 v0, -0x2711

    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    :goto_0
    return v0

    .line 303
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 304
    const-string v2, "command"

    const/16 v3, -0x2711

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 305
    const-string v2, "RecognizingTask"

    const-string v3, "getIntCommand command value: num"

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 306
    goto :goto_0

    .line 307
    :catch_0
    move-exception v1

    .line 308
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/voice/command/d;Lcom/dolphin/browser/voice/command/h;)Lcom/dolphin/browser/voice/command/i;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/dolphin/browser/voice/command/d;->a(Lcom/dolphin/browser/voice/command/h;)Lcom/dolphin/browser/voice/command/i;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/dolphin/browser/voice/command/h;)Lcom/dolphin/browser/voice/command/i;
    .locals 4

    .prologue
    .line 87
    iget-object v2, p0, Lcom/dolphin/browser/voice/command/d;->d:Ljava/util/HashMap;

    .line 88
    if-nez v2, :cond_1

    .line 89
    const/4 v0, 0x0

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    invoke-virtual {p1}, Lcom/dolphin/browser/voice/command/h;->d()I

    move-result v3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    const/16 v0, 0x8

    if-ge v1, v0, :cond_2

    .line 94
    invoke-virtual {p1, v1}, Lcom/dolphin/browser/voice/command/h;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/voice/command/i;

    .line 96
    if-nez v0, :cond_0

    .line 93
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 101
    :cond_2
    invoke-direct {p0, p1}, Lcom/dolphin/browser/voice/command/d;->b(Lcom/dolphin/browser/voice/command/h;)Lcom/dolphin/browser/voice/command/i;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/voice/command/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/dolphin/browser/voice/command/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/voice/command/d;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/dolphin/browser/voice/command/d;->b:Z

    return v0
.end method

.method private b(Lcom/dolphin/browser/voice/command/h;)Lcom/dolphin/browser/voice/command/i;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v3, p0, Lcom/dolphin/browser/voice/command/d;->e:Ljava/util/HashMap;

    .line 106
    if-nez v3, :cond_0

    move-object v0, v2

    .line 119
    :goto_0
    return-object v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Lcom/dolphin/browser/voice/command/h;->d()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/16 v0, 0x8

    if-ge v1, v0, :cond_2

    .line 110
    invoke-virtual {p1, v1}, Lcom/dolphin/browser/voice/command/h;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 115
    :cond_1
    invoke-static {v0, v4}, Lcom/dolphin/browser/voice/command/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/voice/command/i;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 119
    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/voice/command/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/voice/command/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/dolphin/browser/voice/command/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/dolphin/browser/voice/command/d;->a(Ljava/lang/String;)I

    move-result v0

    .line 317
    const-string v1, "Sonar"

    const-string v2, "requesttype"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local_cache_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/d;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/d;->j:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/d;->j:Ljava/lang/Runnable;

    .line 77
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/voice/command/d;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/dolphin/browser/voice/command/d;->c()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/dolphin/browser/voice/command/d;->a(Ljava/lang/String;)I

    move-result v0

    .line 323
    if-gez v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const/16 v1, 0x65

    if-ne v1, v0, :cond_2

    .line 327
    const-string v0, "Sonar"

    const-string v1, "requesttype"

    const-string v2, "quickvisit"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_2
    const/16 v1, 0x66

    if-ne v1, v0, :cond_3

    .line 330
    const-string v0, "Sonar"

    const-string v1, "requesttype"

    const-string v2, "search"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_3
    const/16 v1, 0x67

    if-ne v1, v0, :cond_4

    .line 333
    const-string v0, "Sonar"

    const-string v1, "requesttype"

    const-string v2, "share"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_4
    const/16 v1, 0xc8

    if-gt v1, v0, :cond_5

    const/16 v1, 0x2bc

    if-lt v1, v0, :cond_5

    .line 336
    const-string v0, "Sonar"

    const-string v1, "requesttype"

    const-string v2, "browser_control"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_5
    const/16 v1, 0x2bd

    if-ne v1, v0, :cond_0

    .line 339
    const-string v0, "Sonar"

    const-string v1, "requesttype"

    const-string v2, "no_meaning"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/voice/command/d;->b:Z

    .line 60
    return-void
.end method

.method public a(Lcom/dolphin/browser/voice/command/h;Lcom/dolphin/browser/voice/command/m;)V
    .locals 2

    .prologue
    .line 294
    new-instance v0, Lcom/dolphin/browser/voice/command/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/voice/command/f;-><init>(Lcom/dolphin/browser/voice/command/d;Lcom/dolphin/browser/voice/command/h;Lcom/dolphin/browser/voice/command/m;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 296
    return-void
.end method

.method public a(Lcom/dolphin/browser/voice/command/m;)V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/dolphin/browser/voice/command/e;

    iget-boolean v1, p0, Lcom/dolphin/browser/voice/command/d;->i:Z

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/voice/command/e;-><init>(Lcom/dolphin/browser/voice/command/d;Z)V

    .line 81
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/voice/command/e;->a(Lcom/dolphin/browser/voice/command/m;)V

    .line 82
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/d;->f:Lcom/dolphin/browser/voice/command/a/f;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/voice/command/a/f;->a(Lcom/dolphin/browser/voice/command/a/g;)V

    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/d;->f:Lcom/dolphin/browser/voice/command/a/f;

    invoke-interface {v0}, Lcom/dolphin/browser/voice/command/a/f;->a()V

    .line 84
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/d;->j:Ljava/lang/Runnable;

    .line 70
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/dolphin/browser/voice/command/d;->b:Z

    return v0
.end method
