.class public Lcom/dolphin/browser/i/a/a;
.super Ljava/lang/Object;
.source "WebServiceClient.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/dolphin/browser/i/a/e;

.field private c:Landroid/content/Context;

.field private d:Lcom/dolphin/browser/i/c;

.field private e:Lcom/f/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/dolphin/browser/i/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/i/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/i/a/d;)V
    .locals 6

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/f/a/a/a;

    invoke-direct {v0}, Lcom/f/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/i/a/a;->e:Lcom/f/a/a/a;

    .line 27
    iput-object p1, p0, Lcom/dolphin/browser/i/a/a;->c:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/dolphin/browser/i/a/e;

    invoke-virtual {p2}, Lcom/dolphin/browser/i/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/dolphin/browser/i/a/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/dolphin/browser/i/a/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/dolphin/browser/i/a/d;->e()I

    move-result v4

    invoke-virtual {p2}, Lcom/dolphin/browser/i/a/d;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/i/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/i/a/a;->b:Lcom/dolphin/browser/i/a/e;

    .line 30
    new-instance v0, Lcom/dolphin/browser/i/c;

    iget-object v1, p0, Lcom/dolphin/browser/i/a/a;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/i/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/i/a/a;->d:Lcom/dolphin/browser/i/c;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/i/a/a;)Lcom/dolphin/browser/i/c;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/dolphin/browser/i/a/a;->d:Lcom/dolphin/browser/i/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/i/a/c;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/i/a/a;->b:Lcom/dolphin/browser/i/a/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/i/a/e;->a()Ljava/lang/String;

    move-result-object v2

    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/i/a/a;->d:Lcom/dolphin/browser/i/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/i/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    const/4 v1, 0x1

    new-array v3, v1, [Lorg/apache/http/Header;

    const/4 v1, 0x0

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "If-Modified-Since"

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v1

    .line 49
    :goto_0
    new-instance v5, Lcom/dolphin/browser/i/a/b;

    invoke-direct {v5, p0, p1}, Lcom/dolphin/browser/i/a/b;-><init>(Lcom/dolphin/browser/i/a/a;Lcom/dolphin/browser/i/a/c;)V

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/i/a/a;->e:Lcom/f/a/a/a;

    iget-object v1, p0, Lcom/dolphin/browser/i/a/a;->c:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/f/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/f/a/a/s;Lcom/f/a/a/t;)Lcom/f/a/a/r;

    .line 79
    return-void

    :cond_0
    move-object v3, v4

    goto :goto_0
.end method
