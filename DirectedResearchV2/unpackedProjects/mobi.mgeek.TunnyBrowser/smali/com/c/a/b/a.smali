.class public Lcom/c/a/b/a;
.super Lorg/d/d/i;
.source "EvernoteAuthToken.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "edam_noteStoreUrl=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/c/a/b/a;->a:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "edam_webApiUrlPrefix=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/c/a/b/a;->b:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, "edam_userId=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/c/a/b/a;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/d/d/i;)V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p1}, Lorg/d/d/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/d/d/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/d/d/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/d/d/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/c/a/b/a;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/c/a/b/a;->a:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Lcom/c/a/b/a;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/a;->d:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/c/a/b/a;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/c/a/b/a;->b:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Lcom/c/a/b/a;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/a;->e:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/c/a/b/a;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/c/a/b/a;->c:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Lcom/c/a/b/a;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/c/a/b/a;->f:I

    .line 56
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 59
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 61
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/d/g/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    new-instance v0, Lorg/d/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response body is incorrect. Can\'t extract token and secret from this: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/d/b/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/c/a/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/c/a/b/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/c/a/b/a;->f:I

    return v0
.end method
