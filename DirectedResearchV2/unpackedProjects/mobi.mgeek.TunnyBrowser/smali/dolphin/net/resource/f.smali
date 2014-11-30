.class public final Ldolphin/net/resource/f;
.super Ljava/lang/Object;
.source "ResourceRequestContext.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ldolphin/net/e;

.field public final d:Ljava/util/Map;
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

.field public e:[B

.field public final f:Ljava/io/InputStream;

.field public final g:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ldolphin/net/e;Ljava/util/Map;[BLjava/io/InputStream;I)V
    .locals 0
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
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Ldolphin/net/resource/f;->a:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Ldolphin/net/resource/f;->b:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Ldolphin/net/resource/f;->c:Ldolphin/net/e;

    .line 131
    iput-object p4, p0, Ldolphin/net/resource/f;->d:Ljava/util/Map;

    .line 132
    iput-object p5, p0, Ldolphin/net/resource/f;->e:[B

    .line 133
    iput-object p6, p0, Ldolphin/net/resource/f;->f:Ljava/io/InputStream;

    .line 134
    iput p7, p0, Ldolphin/net/resource/f;->g:I

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ldolphin/net/e;Ljava/util/Map;[BLjava/io/InputStream;ILdolphin/net/resource/g;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p7}, Ldolphin/net/resource/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ldolphin/net/e;Ljava/util/Map;[BLjava/io/InputStream;I)V

    return-void
.end method


# virtual methods
.method public final a()Ldolphin/net/resource/h;
    .locals 8

    .prologue
    .line 146
    new-instance v0, Ldolphin/net/resource/h;

    iget-object v1, p0, Ldolphin/net/resource/f;->a:Ljava/lang/String;

    iget-object v2, p0, Ldolphin/net/resource/f;->b:Ljava/lang/String;

    iget-object v3, p0, Ldolphin/net/resource/f;->c:Ldolphin/net/e;

    iget-object v4, p0, Ldolphin/net/resource/f;->d:Ljava/util/Map;

    iget-object v5, p0, Ldolphin/net/resource/f;->e:[B

    iget-object v6, p0, Ldolphin/net/resource/f;->f:Ljava/io/InputStream;

    iget v7, p0, Ldolphin/net/resource/f;->g:I

    invoke-direct/range {v0 .. v7}, Ldolphin/net/resource/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ldolphin/net/e;Ljava/util/Map;[BLjava/io/InputStream;I)V

    return-object v0
.end method
