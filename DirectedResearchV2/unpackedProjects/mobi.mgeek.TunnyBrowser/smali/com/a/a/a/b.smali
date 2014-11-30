.class Lcom/a/a/a/b;
.super Ljava/lang/Object;
.source "HttpRequester.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/apache/http/HttpEntity;

.field private c:[Lorg/apache/http/Header;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/b;->e:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/a/a/a/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/a/a/a/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/a/a/a/b;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/a/a/a/b;)Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/a/a/a/b;->b:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method static synthetic a(Lcom/a/a/a/b;Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpEntity;
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/a/a/a/b;->b:Lorg/apache/http/HttpEntity;

    return-object p1
.end method

.method static synthetic a(Lcom/a/a/a/b;Z)Z
    .locals 0

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/a/a/a/b;->e:Z

    return p1
.end method

.method static synthetic a(Lcom/a/a/a/b;[Lorg/apache/http/Header;)[Lorg/apache/http/Header;
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/a/a/a/b;->c:[Lorg/apache/http/Header;

    return-object p1
.end method

.method static synthetic b(Lcom/a/a/a/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/a/a/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/a/a/a/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/a/a/a/b;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/a/a/a/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/a/a/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/a/a/a/b;)[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/a/a/a/b;->c:[Lorg/apache/http/Header;

    return-object v0
.end method

.method static synthetic e(Lcom/a/a/a/b;)Lcom/a/a/a/g;
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic f(Lcom/a/a/a/b;)Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/a/a/a/b;->e:Z

    return v0
.end method
