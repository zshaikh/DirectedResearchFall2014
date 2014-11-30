.class Lcom/dolphin/browser/Network/i;
.super Ljava/lang/Object;
.source "HttpRequester.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/apache/http/HttpEntity;

.field private c:[Lorg/apache/http/Header;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/dolphin/browser/Network/k;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/Network/i;->h:Z

    .line 399
    iput-boolean v2, p0, Lcom/dolphin/browser/Network/i;->i:Z

    .line 400
    iput v1, p0, Lcom/dolphin/browser/Network/i;->j:I

    .line 401
    iput v1, p0, Lcom/dolphin/browser/Network/i;->k:I

    .line 402
    iput-boolean v2, p0, Lcom/dolphin/browser/Network/i;->l:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/Network/e;)V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/dolphin/browser/Network/i;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/Network/i;I)I
    .locals 0

    .prologue
    .line 390
    iput p1, p0, Lcom/dolphin/browser/Network/i;->j:I

    return p1
.end method

.method static synthetic a(Lcom/dolphin/browser/Network/i;Lcom/dolphin/browser/Network/k;)Lcom/dolphin/browser/Network/k;
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/dolphin/browser/Network/i;->g:Lcom/dolphin/browser/Network/k;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/Network/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/dolphin/browser/Network/i;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/Network/i;Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpEntity;
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/dolphin/browser/Network/i;->b:Lorg/apache/http/HttpEntity;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/Network/i;)Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/dolphin/browser/Network/i;->i:Z

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/Network/i;Z)Z
    .locals 0

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/dolphin/browser/Network/i;->h:Z

    return p1
.end method

.method static synthetic a(Lcom/dolphin/browser/Network/i;[Lorg/apache/http/Header;)[Lorg/apache/http/Header;
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/dolphin/browser/Network/i;->c:[Lorg/apache/http/Header;

    return-object p1
.end method

.method static synthetic b(Lcom/dolphin/browser/Network/i;I)I
    .locals 0

    .prologue
    .line 390
    iput p1, p0, Lcom/dolphin/browser/Network/i;->k:I

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/Network/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/dolphin/browser/Network/i;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/dolphin/browser/Network/i;)Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/Network/i;->b:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/Network/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/Network/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/Network/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/dolphin/browser/Network/i;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/dolphin/browser/Network/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/Network/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/dolphin/browser/Network/i;)[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/Network/i;->c:[Lorg/apache/http/Header;

    return-object v0
.end method

.method static synthetic f(Lcom/dolphin/browser/Network/i;)Lcom/dolphin/browser/Network/k;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/Network/i;->g:Lcom/dolphin/browser/Network/k;

    return-object v0
.end method

.method static synthetic g(Lcom/dolphin/browser/Network/i;)Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/dolphin/browser/Network/i;->h:Z

    return v0
.end method

.method static synthetic h(Lcom/dolphin/browser/Network/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/Network/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/dolphin/browser/Network/i;)I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/dolphin/browser/Network/i;->j:I

    return v0
.end method

.method static synthetic j(Lcom/dolphin/browser/Network/i;)I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/dolphin/browser/Network/i;->k:I

    return v0
.end method

.method static synthetic k(Lcom/dolphin/browser/Network/i;)Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/dolphin/browser/Network/i;->l:Z

    return v0
.end method
