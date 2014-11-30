.class public Lorg/c/a/b/n;
.super Lorg/c/a/c/h;
.source "HttpHeaderValues.java"


# static fields
.field public static final a:Lorg/c/a/b/n;

.field public static final b:Lorg/c/a/c/f;

.field public static final c:Lorg/c/a/c/f;

.field public static final d:Lorg/c/a/c/f;

.field public static final e:Lorg/c/a/c/f;

.field public static final f:Lorg/c/a/c/f;

.field public static final g:Lorg/c/a/c/f;

.field public static final h:Lorg/c/a/c/f;

.field public static final i:Lorg/c/a/c/f;

.field public static final j:Lorg/c/a/c/f;

.field public static final k:Lorg/c/a/c/f;

.field public static final l:Lorg/c/a/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lorg/c/a/b/n;

    invoke-direct {v0}, Lorg/c/a/b/n;-><init>()V

    sput-object v0, Lorg/c/a/b/n;->a:Lorg/c/a/b/n;

    .line 64
    sget-object v0, Lorg/c/a/b/n;->a:Lorg/c/a/b/n;

    const-string v1, "close"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/n;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/n;->b:Lorg/c/a/c/f;

    .line 65
    sget-object v0, Lorg/c/a/b/n;->a:Lorg/c/a/b/n;

    const-string v1, "chunked"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/n;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/n;->c:Lorg/c/a/c/f;

    .line 66
    sget-object v0, Lorg/c/a/b/n;->a:Lorg/c/a/b/n;

    const-string v1, "gzip"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/n;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/n;->d:Lorg/c/a/c/f;

    .line 67
    sget-object v0, Lorg/c/a/b/n;->a:Lorg/c/a/b/n;

    const-string v1, "identity"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/n;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/n;->e:Lorg/c/a/c/f;

    .line 68
    sget-object v0, Lorg/c/a/b/n;->a:Lorg/c/a/b/n;

    const-string v1, "keep-alive"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/n;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/n;->f:Lorg/c/a/c/f;

    .line 69
    sget-object v0, Lorg/c/a/b/n;->a:Lorg/c/a/b/n;

    const-string v1, "100-continue"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/n;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/n;->g:Lorg/c/a/c/f;

    .line 70
    sget-object v0, Lorg/c/a/b/n;->a:Lorg/c/a/b/n;

    const-string v1, "102-processing"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/n;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/n;->h:Lorg/c/a/c/f;

    .line 71
    sget-object v0, Lorg/c/a/b/n;->a:Lorg/c/a/b/n;

    const-string v1, "TE"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/n;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/n;->i:Lorg/c/a/c/f;

    .line 72
    sget-object v0, Lorg/c/a/b/n;->a:Lorg/c/a/b/n;

    const-string v1, "bytes"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/n;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/n;->j:Lorg/c/a/c/f;

    .line 73
    sget-object v0, Lorg/c/a/b/n;->a:Lorg/c/a/b/n;

    const-string v1, "no-cache"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/n;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/n;->k:Lorg/c/a/c/f;

    .line 74
    sget-object v0, Lorg/c/a/b/n;->a:Lorg/c/a/b/n;

    const-string v1, "Upgrade"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/n;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/n;->l:Lorg/c/a/c/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/c/a/c/h;-><init>()V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 79
    sparse-switch p0, :sswitch_data_0

    .line 86
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 84
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method
