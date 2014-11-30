.class public Lcom/dolphin/player/a/e;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# static fields
.field private static a:Lcom/dolphin/player/a/e;


# instance fields
.field private b:Lcom/dolphin/player/a/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/player/a/e;->b:Lcom/dolphin/player/a/f;

    .line 30
    return-void
.end method

.method public static a()Lcom/dolphin/player/a/e;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/dolphin/player/a/e;->a:Lcom/dolphin/player/a/e;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/dolphin/player/a/e;

    invoke-direct {v0}, Lcom/dolphin/player/a/e;-><init>()V

    sput-object v0, Lcom/dolphin/player/a/e;->a:Lcom/dolphin/player/a/e;

    .line 14
    :cond_0
    sget-object v0, Lcom/dolphin/player/a/e;->a:Lcom/dolphin/player/a/e;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/dolphin/player/a/f;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/dolphin/player/a/e;->b:Lcom/dolphin/player/a/f;

    .line 19
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/player/a/e;->b:Lcom/dolphin/player/a/f;

    if-eqz v0, :cond_0

    .line 23
    const-string v0, "DownloadUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/dolphin/player/a/e;->b:Lcom/dolphin/player/a/f;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/dolphin/player/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    return-void
.end method
