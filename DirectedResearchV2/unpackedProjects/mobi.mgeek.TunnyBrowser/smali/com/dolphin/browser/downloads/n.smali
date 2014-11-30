.class public Lcom/dolphin/browser/downloads/n;
.super Ljava/lang/Object;
.source "DownloadState.java"


# instance fields
.field a:I

.field b:Ljava/io/FileOutputStream;

.field c:Z

.field d:Z

.field e:I

.field f:I

.field g:J

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field k:I

.field l:Ljava/lang/String;

.field m:Z

.field n:Landroid/net/Uri;

.field o:Z


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/downloads/e;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x1eb

    iput v0, p0, Lcom/dolphin/browser/downloads/n;->a:I

    .line 10
    iput-object v3, p0, Lcom/dolphin/browser/downloads/n;->b:Ljava/io/FileOutputStream;

    .line 11
    iput-boolean v2, p0, Lcom/dolphin/browser/downloads/n;->c:Z

    .line 12
    iput-boolean v2, p0, Lcom/dolphin/browser/downloads/n;->d:Z

    .line 13
    iput v2, p0, Lcom/dolphin/browser/downloads/n;->e:I

    .line 14
    iput v2, p0, Lcom/dolphin/browser/downloads/n;->f:I

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dolphin/browser/downloads/n;->g:J

    .line 18
    iput-object v3, p0, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    .line 19
    iput-object v3, p0, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    .line 20
    iput v2, p0, Lcom/dolphin/browser/downloads/n;->j:I

    .line 22
    iput-object v3, p0, Lcom/dolphin/browser/downloads/n;->l:Ljava/lang/String;

    .line 23
    iput-boolean v2, p0, Lcom/dolphin/browser/downloads/n;->m:Z

    .line 24
    iput-object v3, p0, Lcom/dolphin/browser/downloads/n;->n:Landroid/net/Uri;

    .line 25
    iput-boolean v2, p0, Lcom/dolphin/browser/downloads/n;->o:Z

    .line 29
    iget v0, p1, Lcom/dolphin/browser/downloads/e;->l:I

    iput v0, p0, Lcom/dolphin/browser/downloads/n;->k:I

    .line 30
    iget-object v0, p1, Lcom/dolphin/browser/downloads/e;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/dolphin/browser/downloads/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/dolphin/browser/downloads/e;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/dolphin/browser/downloads/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/downloads/n;->n:Landroid/net/Uri;

    .line 33
    iget-boolean v0, p1, Lcom/dolphin/browser/downloads/e;->x:Z

    iput-boolean v0, p0, Lcom/dolphin/browser/downloads/n;->o:Z

    .line 34
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/dolphin/browser/downloads/n;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/downloads/n;->l:Ljava/lang/String;

    return-object v0
.end method
