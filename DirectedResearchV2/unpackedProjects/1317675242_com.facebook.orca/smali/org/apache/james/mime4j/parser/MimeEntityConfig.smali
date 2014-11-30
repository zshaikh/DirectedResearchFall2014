.class public final Lorg/apache/james/mime4j/parser/MimeEntityConfig;
.super Ljava/lang/Object;
.source "MimeEntityConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v0, 0x3e8

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v2, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->a:Z

    .line 38
    iput-boolean v2, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->b:Z

    .line 39
    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->c:I

    .line 40
    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->d:I

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->e:J

    .line 42
    iput-boolean v2, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->f:Z

    .line 43
    return-void
.end method


# virtual methods
.method public a()Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    .locals 1

    .prologue
    .line 165
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 166
    :catch_0
    move-exception v0

    .line 168
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->a()Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[max body descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strict parsing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max line length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max header count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max content length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count line numbers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
