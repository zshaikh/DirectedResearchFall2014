.class Lcom/dolphin/browser/q/a/n;
.super Ljava/lang/Object;
.source "BoxManager.java"

# interfaces
.implements Lcom/b/a/c/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/a/i;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/dolphin/browser/q/a/j;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/a/j;Lcom/dolphin/browser/q/a/i;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/dolphin/browser/q/a/n;->e:Lcom/dolphin/browser/q/a/j;

    iput-object p2, p0, Lcom/dolphin/browser/q/a/n;->a:Lcom/dolphin/browser/q/a/i;

    iput p3, p0, Lcom/dolphin/browser/q/a/n;->b:I

    iput-object p4, p0, Lcom/dolphin/browser/q/a/n;->c:Ljava/lang/String;

    iput p5, p0, Lcom/dolphin/browser/q/a/n;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/q/a/n;->a:Lcom/dolphin/browser/q/a/i;

    invoke-interface {v0}, Lcom/dolphin/browser/q/a/i;->a()V

    .line 263
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 5

    .prologue
    .line 257
    long-to-int v0, p1

    .line 258
    invoke-static {}, Lcom/dolphin/browser/q/a/x;->a()Lcom/dolphin/browser/q/a/x;

    move-result-object v1

    iget v2, p0, Lcom/dolphin/browser/q/a/n;->b:I

    iget-object v3, p0, Lcom/dolphin/browser/q/a/n;->c:Ljava/lang/String;

    iget v4, p0, Lcom/dolphin/browser/q/a/n;->d:I

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/dolphin/browser/q/a/x;->a(ILjava/lang/String;II)V

    .line 259
    return-void
.end method

.method public a(Lcom/b/a/a/a;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 224
    const-string v0, "upload_ok"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/dolphin/browser/q/a/n;->a:Lcom/dolphin/browser/q/a/i;

    invoke-interface {v0, p2}, Lcom/dolphin/browser/q/a/i;->a(Ljava/lang/Object;)V

    .line 232
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v0, "upload_cancelled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    const-string v0, "Upload cancelled."

    invoke-direct {p0, v0}, Lcom/dolphin/browser/q/a/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upload failed - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/q/a/n;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/io/FileNotFoundException;)V
    .locals 2

    .prologue
    .line 250
    invoke-static {p1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upload failed - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/q/a/n;->a(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public a(Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 236
    invoke-static {p1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upload failed - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/q/a/n;->a(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public a(Ljava/net/MalformedURLException;)V
    .locals 2

    .prologue
    .line 243
    invoke-static {p1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upload failed - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/q/a/n;->a(Ljava/lang/String;)V

    .line 245
    return-void
.end method
