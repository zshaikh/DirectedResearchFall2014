.class public Lcom/dolphin/browser/search/h;
.super Ljava/lang/Object;
.source "SearchEngineHelpUtil.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const-string v0, "SearchEngineUtil"

    sput-object v0, Lcom/dolphin/browser/search/h;->a:Ljava/lang/String;

    .line 41
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "uk"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "be"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "kk"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hy"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "az"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "tk"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "uz"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ky"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ka"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/search/h;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 77
    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    :goto_0
    return-object v0

    .line 82
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    const/16 v2, 0x2d

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    const-string v3, "{language-country}"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 93
    const-string v4, "{language}"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 94
    const-string v3, "{country}"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    const-string p2, "UTF-8"

    .line 100
    :cond_2
    const-string v2, "{inputEncoding}"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 103
    :try_start_0
    const-string v2, "{searchTerms}"

    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    sget-object v1, Lcom/dolphin/browser/search/h;->a:Ljava/lang/String;

    const-string v2, "Exception occured when encoding query s% to s%"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lcom/dolphin/browser/search/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/dolphin/browser/search/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 61
    :goto_0
    sget-object v2, Lcom/dolphin/browser/search/h;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 62
    sget-object v2, Lcom/dolphin/browser/search/h;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    const/4 v1, 0x1

    .line 68
    :cond_0
    return v1

    .line 61
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    const-string v0, "ja"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
