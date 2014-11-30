.class public Lcom/appsponsor/appsponsorsdk/utils/LineIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final bufferedReader:Ljava/io/BufferedReader;

.field private cachedLine:Ljava/lang/String;

.field private finished:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsponsor/appsponsorsdk/utils/LineIterator;->finished:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/io/BufferedReader;

    iput-object p1, p0, Lcom/appsponsor/appsponsorsdk/utils/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/appsponsor/appsponsorsdk/utils/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    goto :goto_0
.end method

.method public static closeQuietly(Lcom/appsponsor/appsponsorsdk/utils/LineIterator;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/utils/LineIterator;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsponsor/appsponsorsdk/utils/LineIterator;->finished:Z

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/utils/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-static {v0}, Lcom/appsponsor/appsponsorsdk/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsponsor/appsponsorsdk/utils/LineIterator;->cachedLine:Ljava/lang/String;

    return-void
.end method

.method public hasNext()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/utils/LineIterator;->cachedLine:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/appsponsor/appsponsorsdk/utils/LineIterator;->finished:Z

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/utils/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsponsor/appsponsorsdk/utils/LineIterator;->finished:Z

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/appsponsor/appsponsorsdk/utils/LineIterator;->isValidLine(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/appsponsor/appsponsorsdk/utils/LineIterator;->cachedLine:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/utils/LineIterator;->close()V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected isValidLine(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/utils/LineIterator;->nextLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextLine()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/utils/LineIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more lines"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/utils/LineIterator;->cachedLine:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appsponsor/appsponsorsdk/utils/LineIterator;->cachedLine:Ljava/lang/String;

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove unsupported on LineIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
