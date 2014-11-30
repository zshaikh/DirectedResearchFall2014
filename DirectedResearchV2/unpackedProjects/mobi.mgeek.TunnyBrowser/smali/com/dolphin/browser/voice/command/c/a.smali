.class public Lcom/dolphin/browser/voice/command/c/a;
.super Ljava/lang/Object;
.source "VoiceWebClient.java"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field private static final e:Ljava/lang/String;

.field private static f:Lcom/dolphin/browser/voice/command/c/a;


# instance fields
.field private volatile c:Landroid/location/Location;

.field private volatile d:Z

.field private g:Ljava/lang/String;

.field private final h:Lcom/dolphin/browser/Network/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "http://vccn.dolphin-browser.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/voice/command/c/a;->a:Landroid/net/Uri;

    .line 37
    const-string v0, "http://vcen.dolphin-browser.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/voice/command/c/a;->b:Landroid/net/Uri;

    .line 52
    const-class v0, Lcom/dolphin/browser/voice/command/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/voice/command/c/a;->e:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/dolphin/browser/voice/command/c/a;

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->getVoiceServiceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/voice/command/c/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dolphin/browser/voice/command/c/a;->f:Lcom/dolphin/browser/voice/command/c/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/c/a;->c:Landroid/location/Location;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/voice/command/c/a;->d:Z

    .line 229
    new-instance v0, Lcom/dolphin/browser/voice/command/c/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/voice/command/c/b;-><init>(Lcom/dolphin/browser/voice/command/c/a;)V

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/c/a;->h:Lcom/dolphin/browser/Network/m;

    .line 85
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/c/a;->g:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private static a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/dolphin/browser/Network/m;ZZII)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 6

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/voice/command/c/a;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;ZZII)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 250
    invoke-static {v0, p2}, Lcom/dolphin/browser/Network/l;->a(Lorg/apache/http/HttpEntity;Lcom/dolphin/browser/Network/m;)Lorg/json/JSONObject;

    move-result-object v0

    .line 251
    sget-object v1, Lcom/dolphin/browser/voice/command/c/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 253
    if-eqz v1, :cond_0

    .line 254
    new-instance v0, Lcom/dolphin/browser/DolphinService/WebService/e;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/DolphinService/WebService/e;-><init>(I)V

    .line 255
    sget-object v1, Lcom/dolphin/browser/voice/command/c/a;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a(Ljava/lang/Object;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    .line 258
    :cond_0
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a(Ljava/lang/Object;)Lcom/dolphin/browser/DolphinService/WebService/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    sget-object v1, Lcom/dolphin/browser/voice/command/c/a;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a(Ljava/lang/Object;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Lcom/dolphin/browser/voice/command/c/a;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/dolphin/browser/voice/command/c/a;->f:Lcom/dolphin/browser/voice/command/c/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;J)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 171
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "key=%s&locale=%s&text=%s&time=%s"

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "b0a28b019115463a"

    aput-object v2, v1, v3

    invoke-virtual {p3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_0
    const-string v1, "\\*"

    const-string v2, "%2A"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    return-object v0

    .line 178
    :cond_0
    const-string v0, "context=%s&key=%s&locale=%s&text=%s&time=%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "b0a28b019115463a"

    aput-object v2, v1, v4

    invoke-virtual {p3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Locale;J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 158
    const-string v0, "context=%s&key=%s&locale=%s&time=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "b0a28b019115463a"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 164
    const-string v1, "\\*"

    const-string v2, "%2A"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    return-object v0
.end method

.method private a(Ljava/util/List;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 89
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 92
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 95
    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 99
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lorg/apache/http/HttpEntity;ZZII)Lorg/apache/http/HttpEntity;
    .locals 3

    .prologue
    .line 280
    sget-object v0, Lcom/dolphin/browser/voice/command/c/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post to url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Lcom/dolphin/browser/Network/h;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/Network/h;->a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->a(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/dolphin/browser/Network/h;->b(I)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/dolphin/browser/Network/h;->a(I)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 289
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/Network/d;->b(Z)Lcom/dolphin/browser/Network/n;

    move-result-object v0

    .line 290
    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->b(Lcom/dolphin/browser/Network/n;)V

    .line 291
    iget-object v0, v0, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 146
    sget-object v0, Lcom/dolphin/browser/voice/command/c/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0, p1}, Lcom/dolphin/browser/voice/command/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    sget-object v1, Lcom/dolphin/browser/voice/command/c/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sign: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sign="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/dolphin/browser/voice/command/c/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "full params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {v0}, Lcom/dolphin/browser/util/cn;->k(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/aa;->b([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lcom/dolphin/browser/voice/command/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/voice/command/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "965f9fc97f3f94d4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Lcom/dolphin/browser/voice/command/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/c/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 7

    .prologue
    .line 203
    :try_start_0
    const-string v0, "api/voice/1/suggestWords"

    invoke-direct {p0, v0}, Lcom/dolphin/browser/voice/command/c/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dolphin/browser/voice/command/c/a;->h:Lcom/dolphin/browser/Network/m;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x2710

    const/16 v6, 0x2710

    invoke-static/range {v0 .. v6}, Lcom/dolphin/browser/voice/command/c/a;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/dolphin/browser/Network/m;ZZII)Lcom/dolphin/browser/DolphinService/WebService/f;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a(Ljava/lang/Object;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;Ljava/lang/String;FI)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "FI)",
            "Lcom/dolphin/browser/DolphinService/WebService/f;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 120
    invoke-direct {p0, p1, p4}, Lcom/dolphin/browser/voice/command/c/a;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "voices could not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a(Ljava/lang/Object;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 125
    :cond_0
    const-string v0, ""

    .line 126
    invoke-virtual {p0}, Lcom/dolphin/browser/voice/command/c/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    const-string v0, "{\"url\":\"%s\", \"voice_db\":\"%s\", \"device\":\"%s\", \"channel\":\"%s\"}"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    float-to-int v6, p3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dolphin/browser/core/BrowserSettings;->getChannelName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 136
    :goto_1
    sget-object v0, Lcom/dolphin/browser/voice/command/c/a;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "text is: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v0, Lcom/dolphin/browser/voice/command/c/a;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "context is: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcom/dolphin/browser/voice/command/j;->a()Lcom/dolphin/browser/voice/command/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/j;->c()Ljava/util/Locale;

    move-result-object v3

    move-object v0, p0

    .line 139
    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/voice/command/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/voice/command/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    sget-object v1, Lcom/dolphin/browser/voice/command/c/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare cost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v4

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v1, Lcom/dolphin/browser/voice/command/c/a;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/voice/command/c/a;->b(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    goto/16 :goto_0

    .line 132
    :cond_1
    const-string v2, "{\"url\":\"%s\", \"voice_db\":\"%s\", \"device\":\"%s\", \"channel\":\"%s\", \"location\":\"%s\"}"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v3, v6

    const/4 v6, 0x1

    float-to-int v7, p3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x3

    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dolphin/browser/core/BrowserSettings;->getChannelName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x4

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method public a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/c/a;->c:Landroid/location/Location;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/voice/command/c/a;->d:Z

    .line 65
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 7

    .prologue
    .line 217
    :try_start_0
    const-string v0, "api/voice/1/command"

    invoke-direct {p0, v0}, Lcom/dolphin/browser/voice/command/c/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dolphin/browser/voice/command/c/a;->h:Lcom/dolphin/browser/Network/m;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x2710

    const/16 v6, 0x2710

    invoke-static/range {v0 .. v6}, Lcom/dolphin/browser/voice/command/c/a;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/dolphin/browser/Network/m;ZZII)Lcom/dolphin/browser/DolphinService/WebService/f;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a(Ljava/lang/Object;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-boolean v1, p0, Lcom/dolphin/browser/voice/command/c/a;->d:Z

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/c/a;->c:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/c/a;->c:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/voice/command/c/a;->c:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 110
    const-string v2, "{\"device\":\"%s\", \"channel\":\"%s\"}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dolphin/browser/core/BrowserSettings;->getChannelName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {}, Lcom/dolphin/browser/voice/command/j;->a()Lcom/dolphin/browser/voice/command/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/voice/command/j;->c()Ljava/util/Locale;

    move-result-object v3

    .line 113
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/dolphin/browser/voice/command/c/a;->a(Ljava/lang/String;Ljava/util/Locale;J)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-direct {p0, v0}, Lcom/dolphin/browser/voice/command/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/voice/command/c/a;->a(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method
