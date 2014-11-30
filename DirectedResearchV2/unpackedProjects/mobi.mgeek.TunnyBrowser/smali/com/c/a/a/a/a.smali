.class public Lcom/c/a/a/a/a;
.super Ljava/io/OutputStream;
.source "DiskBackedByteStore.java"


# instance fields
.field protected a:Ljava/io/File;

.field protected b:I

.field protected c:Ljava/io/FileOutputStream;

.field protected d:Ljava/io/ByteArrayOutputStream;

.field protected e:Ljava/io/FileInputStream;

.field protected f:Ljava/io/OutputStream;

.field protected g:I

.field protected h:Ljava/lang/Exception;

.field protected i:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/c/a/a/a/a;->c:Ljava/io/FileOutputStream;

    .line 53
    iput-object v0, p0, Lcom/c/a/a/a/a;->d:Ljava/io/ByteArrayOutputStream;

    .line 54
    iput-object v0, p0, Lcom/c/a/a/a/a;->e:Ljava/io/FileInputStream;

    .line 55
    iput-object v0, p0, Lcom/c/a/a/a/a;->f:Ljava/io/OutputStream;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/c/a/a/a/a;->g:I

    .line 75
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 76
    iput-object p1, p0, Lcom/c/a/a/a/a;->i:Ljava/io/File;

    .line 77
    invoke-virtual {p0}, Lcom/c/a/a/a/a;->a()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/a/a;->a:Ljava/io/File;

    .line 78
    iput p3, p0, Lcom/c/a/a/a/a;->b:I

    .line 79
    return-void
.end method

.method private a(I)Z
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/c/a/a/a/a;->g:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/c/a/a/a/a;->b:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/a;->d:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/c/a/a/a/a;->f:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/a;->d:Ljava/io/ByteArrayOutputStream;

    iput-object v0, p0, Lcom/c/a/a/a/a;->f:Ljava/io/OutputStream;

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Ljava/io/File;
    .locals 7

    .prologue
    .line 82
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/c/a/a/a/a;->i:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x43e0000000000000L

    mul-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tft"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/c/a/a/a/a;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/c/a/a/a/a;->c:Ljava/io/FileOutputStream;

    .line 126
    iget-object v0, p0, Lcom/c/a/a/a/a;->d:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/c/a/a/a/a;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/a/a;->d:Ljava/io/ByteArrayOutputStream;

    .line 128
    iget-object v0, p0, Lcom/c/a/a/a/a;->c:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/c/a/a/a/a;->f:Ljava/io/OutputStream;

    .line 129
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iput-object v1, p0, Lcom/c/a/a/a/a;->d:Ljava/io/ByteArrayOutputStream;

    .line 133
    iput-object v1, p0, Lcom/c/a/a/a/a;->f:Ljava/io/OutputStream;

    .line 134
    iget-object v0, p0, Lcom/c/a/a/a/a;->e:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/a/a;->e:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/c/a/a/a/a;->e:Ljava/io/FileInputStream;

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/c/a/a/a/a;->g:I

    .line 142
    return-void

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/c/a/a/a/a;->g:I

    return v0
.end method

.method public e()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/c/a/a/a/a;->f:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 150
    iget-object v0, p0, Lcom/c/a/a/a/a;->d:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/c/a/a/a/a;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 153
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/c/a/a/a/a;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/c/a/a/a/a;->e:Ljava/io/FileInputStream;

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/c/a/a/a/a;->c()V

    .line 163
    iget-object v0, p0, Lcom/c/a/a/a/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/c/a/a/a/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/c/a/a/a/a;->a()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/a/a;->a:Ljava/io/File;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/a/a;->h:Ljava/lang/Exception;

    .line 168
    return-void
.end method

.method public write(I)V
    .locals 1

    .prologue
    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/c/a/a/a/a;->g()V

    .line 107
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/c/a/a/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/c/a/a/a/a;->b()V

    .line 110
    :cond_0
    iget v0, p0, Lcom/c/a/a/a/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/c/a/a/a/a;->g:I

    .line 111
    iget-object v0, p0, Lcom/c/a/a/a/a;->f:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    iput-object v0, p0, Lcom/c/a/a/a/a;->h:Ljava/lang/Exception;

    goto :goto_0
.end method

.method public write([BII)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/c/a/a/a/a;->g()V

    .line 89
    :try_start_0
    invoke-direct {p0, p3}, Lcom/c/a/a/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/c/a/a/a/a;->b()V

    .line 92
    :cond_0
    iget v0, p0, Lcom/c/a/a/a/a;->g:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/c/a/a/a/a;->g:I

    .line 93
    iget-object v0, p0, Lcom/c/a/a/a/a;->f:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    iput-object v0, p0, Lcom/c/a/a/a/a;->h:Ljava/lang/Exception;

    goto :goto_0
.end method
