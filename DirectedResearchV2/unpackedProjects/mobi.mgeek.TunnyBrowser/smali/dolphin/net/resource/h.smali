.class public final Ldolphin/net/resource/h;
.super Ljava/lang/Object;
.source "ResourceRequestContext.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ldolphin/net/e;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:[B

.field private f:Ljava/io/InputStream;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ldolphin/net/e;Ljava/util/Map;[BLjava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ldolphin/net/e;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/io/InputStream;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Ldolphin/net/resource/h;->a:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Ldolphin/net/resource/h;->b:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Ldolphin/net/resource/h;->c:Ldolphin/net/e;

    .line 32
    if-eqz p4, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Ldolphin/net/resource/h;->d:Ljava/util/Map;

    .line 33
    iput-object p5, p0, Ldolphin/net/resource/h;->e:[B

    .line 34
    iput-object p6, p0, Ldolphin/net/resource/h;->f:Ljava/io/InputStream;

    .line 35
    iput p7, p0, Ldolphin/net/resource/h;->g:I

    .line 36
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a()Ldolphin/net/resource/h;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ldolphin/net/resource/h;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Ldolphin/net/resource/h;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 91
    :cond_0
    return-object p0
.end method

.method public a(I)Ldolphin/net/resource/h;
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Ldolphin/net/resource/h;->g:I

    .line 114
    return-object p0
.end method

.method public a(Ldolphin/net/e;)Ldolphin/net/resource/h;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Ldolphin/net/resource/h;->c:Ldolphin/net/e;

    .line 57
    return-object p0
.end method

.method public a(Ljava/io/InputStream;)Ldolphin/net/resource/h;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Ldolphin/net/resource/h;->f:Ljava/io/InputStream;

    .line 96
    return-object p0
.end method

.method public a(Ljava/lang/String;)Ldolphin/net/resource/h;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Ldolphin/net/resource/h;->a:Ljava/lang/String;

    .line 40
    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Ldolphin/net/resource/h;
    .locals 1

    .prologue
    .line 48
    iput-object p1, p0, Ldolphin/net/resource/h;->b:Ljava/lang/String;

    .line 49
    if-nez p2, :cond_0

    .line 50
    new-instance v0, Ldolphin/net/e;

    invoke-direct {v0, p1}, Ldolphin/net/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ldolphin/net/resource/h;->c:Ldolphin/net/e;

    .line 52
    :cond_0
    return-object p0
.end method

.method public a(Ljava/util/Map;)Ldolphin/net/resource/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ldolphin/net/resource/h;"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Ldolphin/net/resource/h;->d:Ljava/util/Map;

    .line 62
    return-object p0
.end method

.method public a([BZ)Ldolphin/net/resource/h;
    .locals 1

    .prologue
    .line 104
    iput-object p1, p0, Ldolphin/net/resource/h;->e:[B

    .line 105
    if-eqz p2, :cond_0

    .line 106
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Ldolphin/net/resource/h;->f:Ljava/io/InputStream;

    .line 107
    array-length v0, p1

    iput v0, p0, Ldolphin/net/resource/h;->g:I

    .line 109
    :cond_0
    return-object p0
.end method

.method public b()Ldolphin/net/resource/f;
    .locals 9

    .prologue
    .line 118
    iget-object v0, p0, Ldolphin/net/resource/h;->c:Ldolphin/net/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/net/resource/h;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ldolphin/net/e;

    iget-object v1, p0, Ldolphin/net/resource/h;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ldolphin/net/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ldolphin/net/resource/h;->c:Ldolphin/net/e;

    .line 121
    :cond_0
    new-instance v0, Ldolphin/net/resource/f;

    iget-object v1, p0, Ldolphin/net/resource/h;->a:Ljava/lang/String;

    iget-object v2, p0, Ldolphin/net/resource/h;->b:Ljava/lang/String;

    iget-object v3, p0, Ldolphin/net/resource/h;->c:Ldolphin/net/e;

    iget-object v4, p0, Ldolphin/net/resource/h;->d:Ljava/util/Map;

    iget-object v5, p0, Ldolphin/net/resource/h;->e:[B

    iget-object v6, p0, Ldolphin/net/resource/h;->f:Ljava/io/InputStream;

    iget v7, p0, Ldolphin/net/resource/h;->g:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Ldolphin/net/resource/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ldolphin/net/e;Ljava/util/Map;[BLjava/io/InputStream;ILdolphin/net/resource/g;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ldolphin/net/resource/h;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldolphin/net/resource/h;->a(Ljava/lang/String;Z)Ldolphin/net/resource/h;

    move-result-object v0

    return-object v0
.end method
