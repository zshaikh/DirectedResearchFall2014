.class public final Lcom/b/a/e/a;
.super Ljava/lang/Object;
.source "BoxConfig.java"


# static fields
.field private static l:I

.field private static m:Lcom/b/a/e/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/b/a/e/a;->l:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "https"

    iput-object v0, p0, Lcom/b/a/e/a;->a:Ljava/lang/String;

    .line 50
    const-string v0, "www.box.net"

    iput-object v0, p0, Lcom/b/a/e/a;->b:Ljava/lang/String;

    .line 52
    const-string v0, "/api/1.0/rest"

    iput-object v0, p0, Lcom/b/a/e/a;->c:Ljava/lang/String;

    .line 55
    const-string v0, "https"

    iput-object v0, p0, Lcom/b/a/e/a;->d:Ljava/lang/String;

    .line 57
    const-string v0, "upload.box.net"

    iput-object v0, p0, Lcom/b/a/e/a;->e:Ljava/lang/String;

    .line 59
    const-string v0, "/api/1.0/"

    iput-object v0, p0, Lcom/b/a/e/a;->f:Ljava/lang/String;

    .line 62
    const-string v0, "https"

    iput-object v0, p0, Lcom/b/a/e/a;->g:Ljava/lang/String;

    .line 64
    const-string v0, "www.box.net"

    iput-object v0, p0, Lcom/b/a/e/a;->h:Ljava/lang/String;

    .line 66
    const-string v0, "/api/1.0/download/"

    iput-object v0, p0, Lcom/b/a/e/a;->i:Ljava/lang/String;

    .line 68
    const-string v0, "BoxAndroidLibrary"

    iput-object v0, p0, Lcom/b/a/e/a;->j:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/e/a;->k:Z

    .line 82
    return-void
.end method

.method public static a()Lcom/b/a/e/a;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/b/a/e/a;->m:Lcom/b/a/e/a;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/b/a/e/a;

    invoke-direct {v0}, Lcom/b/a/e/a;-><init>()V

    sput-object v0, Lcom/b/a/e/a;->m:Lcom/b/a/e/a;

    .line 93
    :cond_0
    sget-object v0, Lcom/b/a/e/a;->m:Lcom/b/a/e/a;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/b/a/e/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/b/a/e/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/b/a/e/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/b/a/e/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/b/a/e/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/b/a/e/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 283
    sget v0, Lcom/b/a/e/a;->l:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/b/a/e/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/b/a/e/a;->k:Z

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 337
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 338
    const-string v0, "en-us"

    .line 357
    :goto_0
    return-object v0

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 341
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 346
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 351
    const-string v1, "en-us"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 353
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en-us"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 354
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    const-string v1, "en-us"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
