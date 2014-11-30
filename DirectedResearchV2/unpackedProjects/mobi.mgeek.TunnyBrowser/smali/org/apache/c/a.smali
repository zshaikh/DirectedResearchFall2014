.class public Lorg/apache/c/a;
.super Lorg/apache/c/f;
.source "TApplicationException.java"


# static fields
.field private static final b:Lorg/apache/c/b/j;

.field private static final c:Lorg/apache/c/b/b;

.field private static final d:Lorg/apache/c/b/b;


# instance fields
.field protected a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "TApplicationException"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/c/a;->b:Lorg/apache/c/b/j;

    .line 35
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "message"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lorg/apache/c/a;->c:Lorg/apache/c/b/b;

    .line 36
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "type"

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lorg/apache/c/a;->d:Lorg/apache/c/b/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/c/f;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/c/a;->a:I

    .line 53
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p2}, Lorg/apache/c/f;-><init>(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/c/a;->a:I

    .line 62
    iput p1, p0, Lorg/apache/c/a;->a:I

    .line 63
    return-void
.end method

.method public static a(Lorg/apache/c/b/f;)Lorg/apache/c/a;
    .locals 5

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/apache/c/b/f;->j()Lorg/apache/c/b/j;

    .line 77
    const/4 v1, 0x0

    .line 78
    const/4 v0, 0x0

    .line 81
    :goto_0
    invoke-virtual {p0}, Lorg/apache/c/b/f;->l()Lorg/apache/c/b/b;

    move-result-object v2

    .line 82
    iget-byte v3, v2, Lorg/apache/c/b/b;->b:B

    if-nez v3, :cond_0

    .line 106
    invoke-virtual {p0}, Lorg/apache/c/b/f;->k()V

    .line 108
    new-instance v2, Lorg/apache/c/a;

    invoke-direct {v2, v0, v1}, Lorg/apache/c/a;-><init>(ILjava/lang/String;)V

    return-object v2

    .line 85
    :cond_0
    iget-short v3, v2, Lorg/apache/c/b/b;->c:S

    packed-switch v3, :pswitch_data_0

    .line 101
    iget-byte v2, v2, Lorg/apache/c/b/b;->b:B

    invoke-static {p0, v2}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    .line 104
    :goto_1
    invoke-virtual {p0}, Lorg/apache/c/b/f;->m()V

    goto :goto_0

    .line 87
    :pswitch_0
    iget-byte v3, v2, Lorg/apache/c/b/b;->b:B

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    .line 88
    invoke-virtual {p0}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 90
    :cond_1
    iget-byte v2, v2, Lorg/apache/c/b/b;->b:B

    invoke-static {p0, v2}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 94
    :pswitch_1
    iget-byte v3, v2, Lorg/apache/c/b/b;->b:B

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 95
    invoke-virtual {p0}, Lorg/apache/c/b/f;->w()I

    move-result v0

    goto :goto_1

    .line 97
    :cond_2
    iget-byte v2, v2, Lorg/apache/c/b/b;->b:B

    invoke-static {p0, v2}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
